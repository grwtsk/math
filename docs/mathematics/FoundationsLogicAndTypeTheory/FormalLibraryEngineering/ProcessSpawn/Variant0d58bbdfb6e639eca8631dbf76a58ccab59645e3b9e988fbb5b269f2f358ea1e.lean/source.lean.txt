import Lean

/- A detached guest descendant must disappear when the whole VM is stopped.
   Compiler exit alone does not establish this qualification outcome. -/
#eval do
  let result ← IO.Process.output {
    cmd := "/usr/local/bin/python3"
    args := #["-I", "-B", "-c",
      "import pathlib,subprocess\np=subprocess.Popen(['/usr/local/bin/python3','-I','-B','-c','import time;time.sleep(900)'],stdin=subprocess.DEVNULL,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,start_new_session=True)\npathlib.Path('/work/detached-guest-pid').write_text(str(p.pid))"]
  }
  if result.exitCode != 0 then
    throw (IO.userError "synthetic detached-descendant setup failed")
