-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParallelSignature.Variant999ad0464922c90a492ba5dc42460559c49316498c7579768135826ce656c3a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"999ad0464922c90a492ba5dc42460559c49316498c7579768135826ce656c3a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ParallelSignature.Variant999ad0464922c90a492ba5dc42460559c49316498c7579768135826ce656c3a9","mathematical_subject":"Foundations.Unclassified","original_sha256":"999ad0464922c90a492ba5dc42460559c49316498c7579768135826ce656c3a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Parallel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Incidence

/-!
# Parallel channel

Parallelism is a relation on lines.  Symmetry, irreflexivity, and Playfair
uniqueness remain independent assumptions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParallelSignature.Variant999ad0464922c90a492ba5dc42460559c49316498c7579768135826ce656c3a9

namespace Mathematics.Geometry

universe u v

/-- Bare line-parallelism data. -/
structure ParallelSignature (Line : Type v) where
  parallel : Line → Line → Prop

def ParallelSymmetric
    {Line : Type v}
    (parallelism : ParallelSignature Line) : Prop :=
  ∀ left right,
    parallelism.parallel left right →
      parallelism.parallel right left

def ParallelIrreflexive
    {Line : Type v}
    (parallelism : ParallelSignature Line) : Prop :=
  ∀ line, ¬ parallelism.parallel line line

/--
Playfair's condition, stated independently of all incidence, order,
congruence, construction, and continuity laws.
-/
def UniqueParallelThroughExternalPoint
    {Point : Type u} {Line : Type v}
    (incidence : IncidenceSignature Point Line)
    (parallelism : ParallelSignature Line) : Prop :=
  ∀ point line,
    ¬ incidence.liesOn point line →
      ∃ candidate,
        incidence.liesOn point candidate ∧
        parallelism.parallel candidate line ∧
        ∀ other,
          incidence.liesOn point other →
          parallelism.parallel other line →
            other = candidate

end Mathematics.Geometry
