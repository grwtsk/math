-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HardyIntervalDisposition.Variante84302b3c9df3d08d36c37a5200ff1e8e46fd3d139dc935da38124fb3d07d8a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e84302b3c9df3d08d36c37a5200ff1e8e46fd3d139dc935da38124fb3d07d8a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HardyIntervalDisposition.Variante84302b3c9df3d08d36c37a5200ff1e8e46fd3d139dc935da38124fb3d07d8a4","mathematical_subject":"Foundations.Unclassified","original_sha256":"e84302b3c9df3d08d36c37a5200ff1e8e46fd3d139dc935da38124fb3d07d8a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Hardy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.OffLine

/-!
# Hardy-line evidence

Sign changes certify odd total multiplicity in an interval.  They do not
replace the two-dimensional strip count.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HardyIntervalDisposition.Variante84302b3c9df3d08d36c37a5200ff1e8e46fd3d139dc935da38124fb3d07d8a4

namespace Mathematics.RHIsolation

inductive HardyIntervalDisposition
  | zeroFree
  | oddMultiplicityExists
  | uniqueSimpleZero
  | unresolved
deriving DecidableEq, Repr

structure HardySignChangeCertificate where
  interval : RealInterval
  totalMultiplicity : Nat
  totalMultiplicity_odd :
    Odd totalMultiplicity
  endpointSignsOpposite : Prop
  endpointSignsOppositeProof :
    endpointSignsOpposite

theorem hardy_signChange_gives_oddMultiplicity
    (certificate :
      HardySignChangeCertificate) :
    Odd certificate.totalMultiplicity :=
  certificate.totalMultiplicity_odd

structure HardyUniqueSimpleZeroCertificate where
  interval : RealInterval
  ordinate : ℝ
  ordinate_mem : interval.Contains ordinate
  hardyZero : Prop
  hardyZeroProof : hardyZero
  simple : Prop
  simpleProof : simple

end Mathematics.RHIsolation
