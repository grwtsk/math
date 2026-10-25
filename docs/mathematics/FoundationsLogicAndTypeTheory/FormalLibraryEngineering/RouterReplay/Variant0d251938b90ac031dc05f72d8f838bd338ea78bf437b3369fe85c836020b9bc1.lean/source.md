# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RouterReplay.Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cca7fc890dcbc83b25153290633574d6716678a0` · SHA-256 `3b169c1ef6d7ffdf9a42b106f509a7e94cb8601433536c99449be8398a7d2816`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinearDag.Variant8de0062b18116add4aa08e0f80317a1b31791ccbc10c9575f3df309aabbf39fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8de0062b18116add4aa08e0f80317a1b31791ccbc10c9575f3df309aabbf39fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LinearDag.Variant8de0062b18116add4aa08e0f80317a1b31791ccbc10c9575f3df309aabbf39fa","mathematical_subject":"Foundations.Unclassified","original_sha256":"8de0062b18116add4aa08e0f80317a1b31791ccbc10c9575f3df309aabbf39fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/bourbaki/lean/test/router_replay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
  router_replay.lean — Test for Kernel.Router.verifyRoute.
  Validates that a material edge path is correctly replayed from src to dst.
-/
import Kernel.Core
import Kernel.Router


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinearDag.Variant8de0062b18116add4aa08e0f80317a1b31791ccbc10c9575f3df309aabbf39fa

open Kernel
open Kernel.Router

/-- Construct a small DAG with a linear material path: n1 → n2 → n3. -/
def linearDag : Dag :=
  let n1 := { id := ⟨"n1"⟩, expr := .const `True [] }
  let n2 := { id := ⟨"n2"⟩, expr := .const `True [] }
  let n3 := { id := ⟨"n3"⟩, expr := .const `True [] }

  let e1 := {
    id := ⟨"e1"⟩,
    from := n1.id,
    to := n2.id,
    kind := .material,
    proof := .const `trivial [],
    w? := none,
    spec? := none
  }

  let e2 := {
    id := ⟨"e2"⟩,
    from := n2.id,
    to := n3.id,
    kind := .material,
    proof := .const `trivial [],
    w? := none,
    spec? := none
  }

  { V := [n1, n2, n3], E := [e1, e2] }

/-- The expected route specification: n1 → e1 → n2 → e2 → n3. -/
def linearRoute : RouteSpec :=
  { src := ⟨"n1"⟩, dst := ⟨"n3"⟩, path := [⟨"e1"⟩, ⟨"e2"⟩] }

/-- Run the route verification and print result. -/
def testRouter : IO Unit := do
  IO.println "▶ Verifying route from n1 to n3..."
  let result := verifyRoute linearDag linearRoute

  if result.valid then
    IO.println s!"✅ Route valid. {result.hops} hops."
    match result.composed with
    | some pf => IO.println s!"Constructed proof term: {pf}"
    | none    => IO.println "⚠️ No composed proof returned."
  else
    IO.println s!"❌ Route invalid: {result.message.getD "unknown error"}"

#eval testRouter
```
