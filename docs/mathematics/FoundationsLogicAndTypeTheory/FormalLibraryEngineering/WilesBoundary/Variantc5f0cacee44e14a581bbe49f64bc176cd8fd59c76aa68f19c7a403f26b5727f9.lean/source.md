# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WilesBoundary.Variantc5f0cacee44e14a581bbe49f64bc176cd8fd59c76aa68f19c7a403f26b5727f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78516d728241eb358ef794e7e664c2a0dee421d5` · SHA-256 `391766588e1affce12801f0d8b054534740173f38ea7e45058423f3da8e1d2f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternalTheoremArtifactKind.Variant2e45ec6cf7ce71723377d9b5895b0836991d90626056bee726029ce9b3958679","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e45ec6cf7ce71723377d9b5895b0836991d90626056bee726029ce9b3958679","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ExternalTheoremArtifactKind.Variant2e45ec6cf7ce71723377d9b5895b0836991d90626056bee726029ce9b3958679","mathematical_subject":"Foundations.Unclassified","original_sha256":"2e45ec6cf7ce71723377d9b5895b0836991d90626056bee726029ce9b3958679","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ModularWave/WilesBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.ModularWave.FiniteQWave
import Think.SourceTree.Legacy.ModularWave.LFunctionLowering


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternalTheoremArtifactKind.Variant2e45ec6cf7ce71723377d9b5895b0836991d90626056bee726029ce9b3958679

namespace Think.ModularWave

inductive ExternalTheoremArtifactKind where
  | Wiles_1995
  | Taylor_Wiles_1995
  | scoped_external_theorem
  deriving DecidableEq

structure WilesAuthorityArtifact where
  artifactKind : ExternalTheoremArtifactKind
  externalScoped : Bool
  repoLocalWilesProofClaim : Bool
  repoLocalTaylorWilesProofClaim : Bool
  repoLocalModularityProofClaim : Bool
  fermatLastTheoremProofClaim : Bool
  permittedBoundaryUseOnly : Bool

def WilesAuthorityArtifact.IsExternalScopedArtifact
    (artifact : WilesAuthorityArtifact) : Prop :=
  artifact.externalScoped = true /\
  artifact.repoLocalWilesProofClaim = false /\
  artifact.repoLocalTaylorWilesProofClaim = false /\
  artifact.repoLocalModularityProofClaim = false /\
  artifact.fermatLastTheoremProofClaim = false /\
  artifact.permittedBoundaryUseOnly = true

structure ForbiddenAuthorityFlags where
  rhClaim : Bool
  analyticContinuationClaim : Bool
  primePredictionClaim : Bool
  spectralAuthority : Bool
  modularityProofClaim : Bool
  repoLocalWilesProofClaim : Bool

def ForbiddenAuthorityFlags.NoForbiddenAuthority
    (flags : ForbiddenAuthorityFlags) : Prop :=
  flags.rhClaim = false /\
  flags.analyticContinuationClaim = false /\
  flags.primePredictionClaim = false /\
  flags.spectralAuthority = false /\
  flags.modularityProofClaim = false /\
  flags.repoLocalWilesProofClaim = false

theorem wiles_artifact_external_only
    (artifact : WilesAuthorityArtifact)
    (hArtifact : artifact.IsExternalScopedArtifact) :
    artifact.repoLocalWilesProofClaim = false /\
    artifact.repoLocalTaylorWilesProofClaim = false /\
    artifact.repoLocalModularityProofClaim = false /\
    artifact.fermatLastTheoremProofClaim = false := by
  exact
    And.intro hArtifact.right.left
      (And.intro hArtifact.right.right.left
        (And.intro hArtifact.right.right.right.left
          hArtifact.right.right.right.right.left))

theorem forbidden_authority_not_introduced
    (lfun : LFunctionExpression)
    (artifact : WilesAuthorityArtifact)
    (hLfun : lfun.IsFiniteExpression)
    (hArtifact : artifact.IsExternalScopedArtifact) :
    lfun.rhClaim = false /\
    lfun.analyticContinuationClaim = false /\
    lfun.primePredictionClaim = false /\
    lfun.spectralAuthority = false /\
    lfun.modularityProofClaim = false /\
    artifact.repoLocalWilesProofClaim = false /\
    artifact.repoLocalModularityProofClaim = false := by
  exact
    And.intro hLfun.right.right.right.left
      (And.intro hLfun.right.right.right.right.left
        (And.intro hLfun.right.right.right.right.right.left
          (And.intro hLfun.right.right.right.right.right.right.left
            (And.intro hLfun.right.right.right.right.right.right.right
              (And.intro hArtifact.right.left
                hArtifact.right.right.right.left)))))

end Think.ModularWave
```
