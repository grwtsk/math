# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SpinorSoundness.Variant4da9bb2021f3502b5c7af8bd8d2a67ce4109bd826ee3ee6376de2358ec3b6591

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4145033356da89801aad6c46556131f112a9a3f` · SHA-256 `4542a6e0932fcdbf0d2be68e919e51fe45b48bf990bb906d74872bb7d774dd3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SampleUUID.Variant1e0a3429ca85e92e5f6fc16f1cd25d83fa68cb2827add266138ff97428116850","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e0a3429ca85e92e5f6fc16f1cd25d83fa68cb2827add266138ff97428116850","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SampleUUID.Variant1e0a3429ca85e92e5f6fc16f1cd25d83fa68cb2827add266138ff97428116850","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1e0a3429ca85e92e5f6fc16f1cd25d83fa68cb2827add266138ff97428116850","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/bourbaki/lean/test/spinor_soundness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
  spinor_soundness.lean — Unit tests for Kernel.Spinor and BackfillSpinor.
  Confirms that spinor edges embed correctly and that soundness hooks are defined.
-/
import Kernel.Core
import Kernel.Spinor
import Kernel.BackfillSpinor


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SampleUUID.Variant1e0a3429ca85e92e5f6fc16f1cd25d83fa68cb2827add266138ff97428116850

open Kernel
open Kernel.Spinor
open Kernel.BackfillSpinor

def sampleUUID (s : String) : UUID := ⟨s⟩

def dummyExpr : Expr := .const `True []

def dummyProof : Expr := .const `trivial []

def exampleSpinorEdge : Edge :=
  {
    id    := ⟨"e123"⟩,
    from  := ⟨"nA"⟩,
    to    := ⟨"nB"⟩,
    kind  := .spinor,
    proof := dummyExpr,
    w?    := some (1),
    spec? := some { λ := 0.5, μ := 1.0 }
  }

def minimalDag : Dag :=
  { V := [
      { id := ⟨"nA"⟩, expr := dummyExpr },
      { id := ⟨"nB"⟩, expr := dummyExpr }
    ],
    E := [exampleSpinorEdge]
  }

#eval IO.println "▶ Spinor test: embedding node nA into ℓ²(4)..."
#eval embed 4 (sampleUUID "nA")

#eval IO.println "▶ Spinor test: embedding distance (ℓ²)..."
#eval dist (embed 4 (sampleUUID "nA")) (embed 4 (sampleUUID "nB"))

#eval IO.println "▶ Backfill test: generate path from spinor edge..."
#eval match backfill exampleSpinorEdge minimalDag with
  | some result =>
    IO.println s!"Backfill: {result.hops.length} hops, valid = {result.valid}"
  | none => IO.println "Backfill failed: edge was not eligible"

#check Spinor.sound  -- ensures theorem is syntactically correct
#check BackfillSpinor.dense_reduction  -- check contract exists

#eval IO.println "✅ spinor_soundness.lean tests complete."
```
