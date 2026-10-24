# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Plot.Variant3fa214163c5c8938ba4ed14114e83d332a193c7f77d10b284b19bbd7184a6e5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9b4d5138ef3f39a40c6cd3b9e1e58b2cec78dfb` · SHA-256 `6d9bdc552b69e38a92daf02296be24bfa4e2969c5b9051cb2f615038297c2b8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AnimatedHtmlProps.Variant588ba730996acb9ac9c9ca1835f4387ad7f69137c2826831879266bb16b8c8fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"588ba730996acb9ac9c9ca1835f4387ad7f69137c2826831879266bb16b8c8fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AnimatedHtmlProps.Variant588ba730996acb9ac9c9ca1835f4387ad7f69137c2826831879266bb16b8c8fa","mathematical_subject":"Computation.DataStructures","original_sha256":"588ba730996acb9ac9c9ca1835f4387ad7f69137c2826831879266bb16b8c8fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Demos/Plot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import ProofWidgets.Component.HtmlDisplay
public meta import ProofWidgets.Component.Recharts


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AnimatedHtmlProps.Variant588ba730996acb9ac9c9ca1835f4387ad7f69137c2826831879266bb16b8c8fa

public meta section

open Lean ProofWidgets Recharts

def fn (t : Float) (x : Float): Float :=
   50 * (x - 0.25) * (x - 0.5) * (x - 0.7) + 0.1 * (x * 40 - t * 2 * 3.141).sin

open scoped ProofWidgets.Jsx in
def Plot (fn : Float → Float) (steps := 100) : Html :=
  let jsonData : Array Json :=
    Array.range (steps + 1)
    |> Array.map (fun (x : Nat) => let x : Float := x.toFloat / steps.toFloat;  (x, fn x))
    |> Array.map (fun (x,y) => json% {x: $(toJson x) , y: $(toJson y)});
  <LineChart width={400} height={400} data={jsonData}>
    <XAxis domain?={#[toJson 0, toJson 1]} dataKey?="x" />
    <YAxis domain?={#[toJson (-1), toJson 1]} allowDataOverflow={Bool.false} />
    <Line type={.monotone} dataKey="y" stroke="#8884d8" dot?={Bool.false} />
  </LineChart>

#html Plot (fn 0)
#html Plot (fn 0.2)
#html Plot (fn 0.4)
#html Plot (fn 0.6)

/-!
# Bonus demo: animated plots!
-/

def mkFrames (fn : Float → Float → Float) (steps := 100) : Array Html:=
  List.range (steps + 1) |>.toArray |>.map (fun t => Plot (fn (t.toFloat / steps.toFloat)))

structure AnimatedHtmlProps where
  frames : Array Html
  framesPerSecond? : Option Nat := none
  deriving Server.RpcEncodable

@[widget_module]
def AnimatedHtml : Component AnimatedHtmlProps where
  javascript := include_str ".." / ".." / "widget" / "js" / "animatedHtml.js"

open scoped ProofWidgets.Jsx in
-- put your cursor on the below line to see an animated widget
#html <AnimatedHtml frames={mkFrames fn} framesPerSecond?={some 60} />
```
