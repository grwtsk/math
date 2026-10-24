# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Plot.Variantfcfd7d86696af0b6b661c184b333d2973f2c1e507aaca41b72fe335a9f293c3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6bfdc87d7bc961e1559e5578ee5b5059f3d14c5` · SHA-256 `d10fd8c7d6e6c76de3f94224cc09c81f427ff746635ec03175964e3177bb36f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AnimatedHtmlProps.Variant31941881dcecee4c9c537ec5ab7c84eb5a792d02cf5c964ab1b1dd5cdd0b0a40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31941881dcecee4c9c537ec5ab7c84eb5a792d02cf5c964ab1b1dd5cdd0b0a40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AnimatedHtmlProps.Variant31941881dcecee4c9c537ec5ab7c84eb5a792d02cf5c964ab1b1dd5cdd0b0a40","mathematical_subject":"Computation.DataStructures","original_sha256":"31941881dcecee4c9c537ec5ab7c84eb5a792d02cf5c964ab1b1dd5cdd0b0a40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Demos/Plot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Component.HtmlDisplay
import ProofWidgets.Component.Recharts


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AnimatedHtmlProps.Variant31941881dcecee4c9c537ec5ab7c84eb5a792d02cf5c964ab1b1dd5cdd0b0a40

open Lean ProofWidgets Recharts

def fn (t : Float) (x : Float): Float :=
   50 * (x - 0.25) * (x - 0.5) * (x - 0.7) + 0.1 * (x * 40 - t * 2 * 3.141).sin

open scoped ProofWidgets.Jsx in
open scoped ProofWidgets.Json in
def Plot (fn : Float → Float) (steps := 100) : THtml :=
  let jsonData : Array Json :=
    Nat.fold (flip Array.push) (steps + 1) #[]
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

def mkFrames (fn : Float → Float → Float) (steps := 100) : Array THtml:=
  List.range (steps + 1) |>.toArray |>.map (fun t => Plot (fn (t.toFloat / steps.toFloat)))

structure AnimatedHtmlProps where
  frames : Array Html
  framesPerSecond? : Option Nat := none

#mkrpcenc AnimatedHtmlProps

@[widget_module]
def AnimatedHtml : Component AnimatedHtmlProps where
  javascript := include_str ".." / ".." / "build" / "js" / "animatedHtml.js"

open scoped ProofWidgets.Jsx in
-- put your cursor on the below line to see an animated widget
#html <AnimatedHtml frames={mkFrames fn |>.map Html.ofTHtml} framesPerSecond?={some 60} />
```
