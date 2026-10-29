-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BooleanProbeSystem.Variantfc477a53283265c2be6502df23f8e429ffcdd05d8fa4b78a4c8a2dbf425c83e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc477a53283265c2be6502df23f8e429ffcdd05d8fa4b78a4c8a2dbf425c83e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BooleanProbeSystem.Variantfc477a53283265c2be6502df23f8e429ffcdd05d8fa4b78a4c8a2dbf425c83e8","mathematical_subject":"Foundations.Unclassified","original_sha256":"fc477a53283265c2be6502df23f8e429ffcdd05d8fa4b78a4c8a2dbf425c83e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/StoneClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.IncidenceCode

/-!
# Compatible Boolean probe stages

An evolving family of incidence coordinates belongs to an inverse system of
finite Boolean stages.  Residues therefore retain their full compatible
coordinates; they are not collapsed to a single undifferentiated infinity.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BooleanProbeSystem.Variantfc477a53283265c2be6502df23f8e429ffcdd05d8fa4b78a4c8a2dbf425c83e8

namespace Mathematics.Projection

universe u v

structure BooleanProbeSystem (Stage : Type u) [Preorder Stage] where
  Probe : Stage → Type v
  restrict :
    ∀ {earlier later : Stage},
      earlier ≤ later →
        IncidenceCode (Probe later) →
          IncidenceCode (Probe earlier)
  restrict_refl :
    ∀ stage code, restrict (show stage ≤ stage from le_rfl) code = code
  restrict_trans :
    ∀ {first second third : Stage}
      (firstToSecond : first ≤ second)
      (secondToThird : second ≤ third)
      (code : IncidenceCode (Probe third)),
      restrict firstToSecond (restrict secondToThird code) =
        restrict (firstToSecond.trans secondToThird) code

/-- A point of the Boolean inverse limit (Stone-stage closure). -/
structure StonePoint
    {Stage : Type u} [Preorder Stage]
    (system : BooleanProbeSystem Stage) where
  coordinate : ∀ stage, IncidenceCode (system.Probe stage)
  compatible :
    ∀ {earlier later : Stage} (relation : earlier ≤ later),
      system.restrict relation (coordinate later) = coordinate earlier

end Mathematics.Projection
