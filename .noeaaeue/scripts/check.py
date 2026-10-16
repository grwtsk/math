from repository_paths import repository_path
"""Pinned Lean source replay and audits. Run after: lake update; lake exe cache get <selected imports>."""
import hashlib,json,os,pathlib,re,subprocess,sys,tempfile,time
root=pathlib.Path(__file__).resolve().parents[2]
from project_replay import compile_project_closure
def require(condition,message):
 if not condition:raise RuntimeError(message)
# Structural completeness is the first fail-closed boundary for a real replay.
# Hostile manifest fixtures copy the complete current Lean inventory so they
# reach the subsequent, path-specific source-and-environment binding gate.
subprocess.run([sys.executable,"-B",str(root/".noeaaeue/scripts/check_math_layout.py")],cwd=root,check=True)
manifest=json.loads((root/".noeaaeue/evidence/source-manifest.json").read_text())
input_manifest_sha256=hashlib.sha256((root/".noeaaeue/evidence/source-manifest.json").read_bytes()).hexdigest()
for rel,expected in manifest["files"].items():
 p=repository_path(root, rel)
 require(p.is_file() and not p.is_symlink() and hashlib.sha256(p.read_bytes()).hexdigest()==expected,"invalidated: "+rel)
lean=subprocess.check_output(["elan","which","lean"],cwd=root,text=True).strip()
version=subprocess.check_output([lean,"--version"],text=True)
require("4.33.0" in version and "d8b18978322de05a8f3dba51ef03cf5461676c17" in version,"invalidated: Lean toolchain identity")
cache=os.environ.get("LEAN_PATH")
if not cache:
 cache=subprocess.check_output(["lake","env","printenv","LEAN_PATH"],cwd=root,text=True).strip()
(root/'.noeaaeue/.local').mkdir(parents=True, exist_ok=True)
run_directory=pathlib.Path(tempfile.mkdtemp(prefix="source-check-",dir=root/'.noeaaeue/.local'))
build=run_directory/"build";build.mkdir()
env=dict(os.environ,LEAN_PATH=str(build)+":"+cache)
results=[]
def run(label,rel,expected=0,oracle=None):
 source=repository_path(root, rel)
 require(source.is_file() and not source.is_symlink(),"source-unavailable: "+rel)
 source_hash=hashlib.sha256(source.read_bytes()).hexdigest();argv=[lean,"--trust=0","--memory=4096","--threads=1"]
 require(source_hash==manifest["files"][rel],"invalidated: "+rel)
 if label.startswith("compile-"):
  target=build/pathlib.Path(rel).with_suffix(".olean");target.parent.mkdir(parents=True,exist_ok=True);argv+=["-DwarningAsError=true","-o",str(target)]
 argv.append(str(source));t=time.monotonic()
 try:
  p=subprocess.run(argv,cwd=root,env=env,capture_output=True,text=True,timeout=600)
  output=(p.stdout+p.stderr).replace(str(root)+"/","")
  ok=(p.returncode==0 if expected==0 else p.returncode!=0) and (oracle is None or oracle(output))
  ok=ok and source.is_file() and not source.is_symlink() and hashlib.sha256(source.read_bytes()).hexdigest()==source_hash
  results.append(dict(name=label,outcome="passed" if ok else "failed",exit_code=p.returncode,seconds=time.monotonic()-t,source_sha256=source_hash,output=output))
  print(label,p.returncode,flush=True)
  require(ok,repr(results[-1]))
  return output
 except subprocess.TimeoutExpired:
  results.append(dict(name=label,outcome="timed-out",seconds=time.monotonic()-t));raise
try:
 compile_project_closure(root,manifest["files"],run)
 if manifest["profile"].startswith("least-natural-prime"):
  audit=run("prime-type-axioms-consumers","GRWTSK/NumberTheory/Prime/Checks/Audit.lean",oracle=lambda s:"sorryAx" not in s and s.count("' depends on axioms:")==3)
  allowed={"propext","Classical.choice","Quot.sound"}
  for ax in re.findall(r"depends on axioms: \[(.*?)\]",audit):
   require(set(s.strip() for s in ax.split(","))<=allowed,"unapproved axiom dependency")
  run("reject-prime-one","GRWTSK/NumberTheory/Prime/Checks/Negative/PrimeOneFalse.lean",1,lambda s:"is false" in s)
  run("reject-lower-bound-three","GRWTSK/NumberTheory/Prime/Checks/Negative/LowerBoundFalse.lean",1,lambda s:"Type mismatch" in s)
 else:
  prefix="GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/"
  output=run("31-declaration-audit","GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/Moser/Checks/DeclarationAudit.lean")
  expected=json.loads((root/".noeaaeue/evidence/expected-declarations.json").read_text())
  for e in expected:
   segment=output.split("BEGIN::"+e["name"]+"\n",1)[1].split("\nEND::"+e["name"],1)[0]
   parts=segment.split("'"+e["name"]+"'")
   require(" ".join(parts[0].split())==" ".join(e["printed_type"].split()),"type mismatch: "+e["name"])
   axioms=re.search(r"depends on axioms: \[(.*?)\]",parts[1])
   observed=[] if "does not depend on any axioms" in parts[1] else [s.strip() for s in axioms[1].split(",")]
   require(sorted(observed)==sorted(e["axioms"]),"axiom mismatch: "+e["name"])
  run("moser-independent-consumers","GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/Moser/Checks/Positive/Consumers.lean")
  run("reject-wrong-four-color","GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/Moser/Checks/Negative/WrongColor.lean",1,lambda s:"is false" in s)
  sorry=run("sorry-compiles-but-audit-rejects","GRWTSK/Logic/ProofChecking/Checks/Negative/SorryControl.lean",oracle=lambda s:"sorryAx" in s)
  results[-1]["audit_outcome"]="refuted-or-limited"
finally:
 receipt=run_directory/"receipt.json"
 with receipt.open("x",encoding="utf-8") as output:
  output.write(json.dumps(dict(schema_version=1,input_manifest_sha256=input_manifest_sha256,lean_binary_sha256=hashlib.sha256(pathlib.Path(lean).read_bytes()).hexdigest(),toolchain_commit="d8b18978322de05a8f3dba51ef03cf5461676c17",dependency_revisions={p["name"]:p["rev"] for p in json.loads((root/"lake-manifest.json").read_text())["packages"]},dependency_mode="pinned dependency objects kernel-checked; selected source modules freshly elaborated",results=results),indent=2)+"\n")
print(json.dumps({"outcomes":{r["name"]:r["outcome"] for r in results},"receipt":str(receipt.relative_to(root))}))
