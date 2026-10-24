-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BooleanNetworkNetwork.Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BooleanNetworkNetwork.Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b","mathematical_subject":"Foundations.Unclassified","original_sha256":"293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Cube/BooleanNetwork.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Cube.Hypercube


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BooleanNetworkNetwork.Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b

namespace Surface.Boolean.Cube

/-- A Boolean network is a discrete-time update rule on a hypercube state space. -/
structure BooleanNetwork.Network (n : Nat) where
  step : Hypercube.Point n → Hypercube.Point n

/-- Iterate a Boolean network for `t` discrete steps. -/
def BooleanNetwork.iterate {n : Nat} (N : BooleanNetwork.Network n) :
    Nat → Hypercube.Point n → Hypercube.Point n
  | 0, x => x
  | t + 1, x => BooleanNetwork.iterate N t (N.step x)

/--
State transition matrix of a Boolean network.

Rows are current states. Columns are next states. A `1` at `(i,j)` means state
`i` transitions to state `j`.
-/
def BooleanNetwork.transitionMatrix {n : Nat} (N : BooleanNetwork.Network n) :
    BoolMatrix (2 ^ n) (2 ^ n) :=
  fun i j =>
    Hypercube.pointEq
      (Hypercube.pointOfIndex n j.val)
      (N.step (Hypercube.pointOfIndex n i.val))

/--
A coordinate-level dependency test.

The output coordinate `target` depends on input coordinate `source` when flipping
`source` changes that target output for at least one state.
-/
def BooleanNetwork.dependsOn {n : Nat}
    (N : BooleanNetwork.Network n)
    (source target : Fin n) :
    Bool :=
  ListTools.anyTrue
    ((Hypercube.vertices n).map
      (fun x =>
        Hypercube.boolDiff
          (N.step x target)
          (N.step (Hypercube.flip x source) target)))

/--
Dependency diagram as a Boolean matrix.

A `1` at `(source,target)` records structural entailment:
the source coordinate can affect the target coordinate after one update.
-/
def BooleanNetwork.dependencyMatrix {n : Nat} (N : BooleanNetwork.Network n) :
    BoolMatrix n n :=
  fun source target => BooleanNetwork.dependsOn N source target

end Surface.Boolean.Cube
