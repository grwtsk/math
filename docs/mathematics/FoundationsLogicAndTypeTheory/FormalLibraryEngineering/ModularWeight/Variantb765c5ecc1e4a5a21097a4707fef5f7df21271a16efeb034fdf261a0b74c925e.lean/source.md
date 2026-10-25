# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModularWeight.Variantb765c5ecc1e4a5a21097a4707fef5f7df21271a16efeb034fdf261a0b74c925e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ded047a5d4708a95540aa3e615646575f9006094` · SHA-256 `d04af9c08530760c5d0172e987393e17b730df570bd848d6e00cca88c1dc8005`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseMirror.Variante06fe874abe910caccd55127bb9d61743456d0abaa0e5fc20f0a39a73e9431e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e06fe874abe910caccd55127bb9d61743456d0abaa0e5fc20f0a39a73e9431e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PhaseMirror.Variante06fe874abe910caccd55127bb9d61743456d0abaa0e5fc20f0a39a73e9431e7","mathematical_subject":"Foundations.Unclassified","original_sha256":"e06fe874abe910caccd55127bb9d61743456d0abaa0e5fc20f0a39a73e9431e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/ModularWeight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Orbit


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseMirror.Variante06fe874abe910caccd55127bb9d61743456d0abaa0e5fc20f0a39a73e9431e7

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

def phaseMirror (n : Nat) : Nat :=
  60 - n

def phaseWeight (n : Nat) : Nat :=
  4 + 2 * ((Nat.min n (60 - n)) / 5)

theorem phaseWeight_reflection (n : Nat) (h : n ≤ 60) :
    phaseWeight n = phaseWeight (phaseMirror n) := by
  unfold phaseWeight phaseMirror
  rw [Nat.sub_sub_self h]
  exact congrArg (fun x => 4 + 2 * (x / 5)) (Nat.min_comm n (60 - n))

def canonicalFiberWeight : CanonicalFiber -> Nat
  | .pipelineCenter => 16
  | .pipelinePhase => 16
  | .poleFamily => 12
  | .residueAlgebra => 14
  | .sourceTreeGeometry => 16
  | .targetBoundary => 8
  | .finiteWitness => 8
  | .modularCarrier => 8
  | .researchCorpus => 6
  | .validationShell => 10
  | .braidConformance => 10
  | .buildShell => 2

theorem sourceTreeGeometry_weight :
    canonicalFiberWeight CanonicalFiber.sourceTreeGeometry = 16 := by
  rfl

end Think.RadoProjectedModularHeatflow
```
