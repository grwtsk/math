# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DevelopmentCertificate.Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c4793e962c5016e025716f988c87e323e04e013` · SHA-256 `5456a8746fca00ea6b72a211a26adcb92bc012854adf8098ae22a9c146d13353`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CandidateCoverage.Variant23ed171f5931bd2bdc7c60ecdece2dc92db7e0adc6ca37cd0d1f3201cfd71010","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23ed171f5931bd2bdc7c60ecdece2dc92db7e0adc6ca37cd0d1f3201cfd71010","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CandidateCoverage.Variant23ed171f5931bd2bdc7c60ecdece2dc92db7e0adc6ca37cd0d1f3201cfd71010","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"23ed171f5931bd2bdc7c60ecdece2dc92db7e0adc6ca37cd0d1f3201cfd71010","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/sucas-packing/development-certificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SUCAS.PackingObservations
import FormalResearch.SUCAS.DivisibilityPacking

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CandidateCoverage.Variant23ed171f5931bd2bdc7c60ecdece2dc92db7e0adc6ca37cd0d1f3201cfd71010

open FormalResearch.SUCAS.PackingObservations
set_option maxRecDepth 2048
set_option maxHeartbeats 2000000
namespace PackingReplay
theorem candidate_coverage :
      ((List.range 57).filter (fun n => decide
        (∀ h ∈ ([(0),(2)]:List ℤ), 2 ≤ (n:ℤ)+h ∧ (n:ℤ)+h ≤ 48)) = ([2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46]:List ℕ)) ∧
      (∀ n : ℕ, (∀ h ∈ ([(0),(2)]:List ℤ), 2 ≤ (n:ℤ)+h ∧ (n:ℤ)+h ≤ 48) → n < 57) := by
        constructor
        · decide
        · intro n hn
          have upper := (hn (0) (by decide)).2
          omega
theorem proper_survivors :
      ([2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46] : List ℕ).filter (fun n => decide
        (∀ h ∈ ([(0),(2)] : List ℤ), 2 ≤ (n:ℤ)+h ∧ (n:ℤ)+h ≤ 48 ∧
         ∀ p ∈ ([2,3,5]:List ℕ), p ∣ ((n:ℤ)+h).toNat → p = ((n:ℤ)+h).toNat)) =
      [3,5,11,17,29,41] := by decide
theorem prime_support : FormalResearch.SUCAS.DivisibilityPacking.primeSupport 6 = ({2,3,5} : Finset ℕ) := by decide
theorem raw_count : ((Finset.range 30).filter (fun a : ℕ =>
      (∀ p ∈ ([2,3,5]:List ℕ), ∀ h ∈ ([(0),(2)]:List ℤ), ¬(p:ℤ) ∣ ((a:ℕ):ℤ)+h))).card = 3 := by decide
theorem exclusions :
      (([2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46]:List ℕ).filter (fun n => !([3,5,11,17,29,41]:List ℕ).contains n) =
        ([(2,(2),2,2),(4,(0),2,2),(6,(0),2,3),(7,(2),3,3),(8,(0),2,4),(9,(0),3,3),(10,(0),2,5),(12,(0),2,6),(13,(2),3,5),(14,(0),2,7),(15,(0),3,5),(16,(0),2,8),(18,(0),2,9),(19,(2),3,7),(20,(0),2,10),(21,(0),3,7),(22,(0),2,11),(23,(2),5,5),(24,(0),2,12),(25,(0),5,5),(26,(0),2,13),(27,(0),3,9),(28,(0),2,14),(30,(0),2,15),(31,(2),3,11),(32,(0),2,16),(33,(0),3,11),(34,(0),2,17),(35,(0),5,7),(36,(0),2,18),(37,(2),3,13),(38,(0),2,19),(39,(0),3,13),(40,(0),2,20),(42,(0),2,21),(43,(2),3,15),(44,(0),2,22),(45,(0),3,15),(46,(0),2,23)]:List (ℕ × ℤ × ℕ × ℕ)).map (fun w => w.1)) ∧
      (∀ w ∈ ([(2,(2),2,2),(4,(0),2,2),(6,(0),2,3),(7,(2),3,3),(8,(0),2,4),(9,(0),3,3),(10,(0),2,5),(12,(0),2,6),(13,(2),3,5),(14,(0),2,7),(15,(0),3,5),(16,(0),2,8),(18,(0),2,9),(19,(2),3,7),(20,(0),2,10),(21,(0),3,7),(22,(0),2,11),(23,(2),5,5),(24,(0),2,12),(25,(0),5,5),(26,(0),2,13),(27,(0),3,9),(28,(0),2,14),(30,(0),2,15),(31,(2),3,11),(32,(0),2,16),(33,(0),3,11),(34,(0),2,17),(35,(0),5,7),(36,(0),2,18),(37,(2),3,13),(38,(0),2,19),(39,(0),3,13),(40,(0),2,20),(42,(0),2,21),(43,(2),3,15),(44,(0),2,22),(45,(0),3,15),(46,(0),2,23)]:List (ℕ × ℤ × ℕ × ℕ)),
        w.1 ∈ ([2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46]:List ℕ) ∧ w.2.1 ∈ ([(0),(2)]:List ℤ) ∧
        w.2.2.1 ∈ ([2,3,5]:List ℕ) ∧ Nat.Prime w.2.2.1 ∧
        1 < w.2.2.1 ∧ (w.2.2.1:ℤ) < (w.1:ℤ)+w.2.1 ∧
        (w.2.2.1:ℤ)*w.2.2.2 = (w.1:ℤ)+w.2.1) := by decide
theorem signature_0 : cappedValuation 2 2 (2:ℤ) = 1 := by exact cappedValuation_eq_of_profile 2 2 1 (2:ℤ) (by decide) (by decide) (by decide)
theorem signature_1 : cappedValuation 3 2 (2:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (2:ℤ) (by decide) (by decide) (by decide)
theorem signature_2 : cappedValuation 5 2 (2:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (2:ℤ) (by decide) (by decide) (by decide)
theorem signature_3 : cappedValuation 2 2 (4:ℤ) = 2 := by exact cappedValuation_eq_of_profile 2 2 2 (4:ℤ) (by decide) (by decide) (by decide)
theorem signature_4 : cappedValuation 3 2 (4:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (4:ℤ) (by decide) (by decide) (by decide)
theorem signature_5 : cappedValuation 5 2 (4:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (4:ℤ) (by decide) (by decide) (by decide)
theorem signature_6 : cappedValuation 2 2 (3:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (3:ℤ) (by decide) (by decide) (by decide)
theorem signature_7 : cappedValuation 3 2 (3:ℤ) = 1 := by exact cappedValuation_eq_of_profile 3 2 1 (3:ℤ) (by decide) (by decide) (by decide)
theorem signature_8 : cappedValuation 5 2 (3:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (3:ℤ) (by decide) (by decide) (by decide)
theorem signature_9 : cappedValuation 2 2 (5:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (5:ℤ) (by decide) (by decide) (by decide)
theorem signature_10 : cappedValuation 3 2 (5:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (5:ℤ) (by decide) (by decide) (by decide)
theorem signature_11 : cappedValuation 5 2 (5:ℤ) = 1 := by exact cappedValuation_eq_of_profile 5 2 1 (5:ℤ) (by decide) (by decide) (by decide)
theorem signature_12 : cappedValuation 2 2 (6:ℤ) = 1 := by exact cappedValuation_eq_of_profile 2 2 1 (6:ℤ) (by decide) (by decide) (by decide)
theorem signature_13 : cappedValuation 3 2 (6:ℤ) = 1 := by exact cappedValuation_eq_of_profile 3 2 1 (6:ℤ) (by decide) (by decide) (by decide)
theorem signature_14 : cappedValuation 5 2 (6:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (6:ℤ) (by decide) (by decide) (by decide)
theorem signature_15 : cappedValuation 2 2 (7:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (7:ℤ) (by decide) (by decide) (by decide)
theorem signature_16 : cappedValuation 3 2 (7:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (7:ℤ) (by decide) (by decide) (by decide)
theorem signature_17 : cappedValuation 5 2 (7:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (7:ℤ) (by decide) (by decide) (by decide)
theorem signature_18 : cappedValuation 2 2 (8:ℤ) = 2 := by exact cappedValuation_eq_of_profile 2 2 2 (8:ℤ) (by decide) (by decide) (by decide)
theorem signature_19 : cappedValuation 3 2 (8:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (8:ℤ) (by decide) (by decide) (by decide)
theorem signature_20 : cappedValuation 5 2 (8:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (8:ℤ) (by decide) (by decide) (by decide)
theorem signature_21 : cappedValuation 2 2 (9:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (9:ℤ) (by decide) (by decide) (by decide)
theorem signature_22 : cappedValuation 3 2 (9:ℤ) = 2 := by exact cappedValuation_eq_of_profile 3 2 2 (9:ℤ) (by decide) (by decide) (by decide)
theorem signature_23 : cappedValuation 5 2 (9:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (9:ℤ) (by decide) (by decide) (by decide)
theorem signature_24 : cappedValuation 2 2 (10:ℤ) = 1 := by exact cappedValuation_eq_of_profile 2 2 1 (10:ℤ) (by decide) (by decide) (by decide)
theorem signature_25 : cappedValuation 3 2 (10:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (10:ℤ) (by decide) (by decide) (by decide)
theorem signature_26 : cappedValuation 5 2 (10:ℤ) = 1 := by exact cappedValuation_eq_of_profile 5 2 1 (10:ℤ) (by decide) (by decide) (by decide)
theorem signature_27 : cappedValuation 2 2 (11:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (11:ℤ) (by decide) (by decide) (by decide)
theorem signature_28 : cappedValuation 3 2 (11:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (11:ℤ) (by decide) (by decide) (by decide)
theorem signature_29 : cappedValuation 5 2 (11:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (11:ℤ) (by decide) (by decide) (by decide)
theorem signature_30 : cappedValuation 2 2 (12:ℤ) = 2 := by exact cappedValuation_eq_of_profile 2 2 2 (12:ℤ) (by decide) (by decide) (by decide)
theorem signature_31 : cappedValuation 3 2 (12:ℤ) = 1 := by exact cappedValuation_eq_of_profile 3 2 1 (12:ℤ) (by decide) (by decide) (by decide)
theorem signature_32 : cappedValuation 5 2 (12:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (12:ℤ) (by decide) (by decide) (by decide)
theorem signature_33 : cappedValuation 2 2 (13:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (13:ℤ) (by decide) (by decide) (by decide)
theorem signature_34 : cappedValuation 3 2 (13:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (13:ℤ) (by decide) (by decide) (by decide)
theorem signature_35 : cappedValuation 5 2 (13:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (13:ℤ) (by decide) (by decide) (by decide)
theorem signature_36 : cappedValuation 2 2 (14:ℤ) = 1 := by exact cappedValuation_eq_of_profile 2 2 1 (14:ℤ) (by decide) (by decide) (by decide)
theorem signature_37 : cappedValuation 3 2 (14:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (14:ℤ) (by decide) (by decide) (by decide)
theorem signature_38 : cappedValuation 5 2 (14:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (14:ℤ) (by decide) (by decide) (by decide)
theorem signature_39 : cappedValuation 2 2 (15:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (15:ℤ) (by decide) (by decide) (by decide)
theorem signature_40 : cappedValuation 3 2 (15:ℤ) = 1 := by exact cappedValuation_eq_of_profile 3 2 1 (15:ℤ) (by decide) (by decide) (by decide)
theorem signature_41 : cappedValuation 5 2 (15:ℤ) = 1 := by exact cappedValuation_eq_of_profile 5 2 1 (15:ℤ) (by decide) (by decide) (by decide)
theorem signature_42 : cappedValuation 2 2 (16:ℤ) = 2 := by exact cappedValuation_eq_of_profile 2 2 2 (16:ℤ) (by decide) (by decide) (by decide)
theorem signature_43 : cappedValuation 3 2 (16:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (16:ℤ) (by decide) (by decide) (by decide)
theorem signature_44 : cappedValuation 5 2 (16:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (16:ℤ) (by decide) (by decide) (by decide)
theorem signature_45 : cappedValuation 2 2 (17:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (17:ℤ) (by decide) (by decide) (by decide)
theorem signature_46 : cappedValuation 3 2 (17:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (17:ℤ) (by decide) (by decide) (by decide)
theorem signature_47 : cappedValuation 5 2 (17:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (17:ℤ) (by decide) (by decide) (by decide)
theorem signature_48 : cappedValuation 2 2 (18:ℤ) = 1 := by exact cappedValuation_eq_of_profile 2 2 1 (18:ℤ) (by decide) (by decide) (by decide)
theorem signature_49 : cappedValuation 3 2 (18:ℤ) = 2 := by exact cappedValuation_eq_of_profile 3 2 2 (18:ℤ) (by decide) (by decide) (by decide)
theorem signature_50 : cappedValuation 5 2 (18:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (18:ℤ) (by decide) (by decide) (by decide)
theorem signature_51 : cappedValuation 2 2 (19:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (19:ℤ) (by decide) (by decide) (by decide)
theorem signature_52 : cappedValuation 3 2 (19:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (19:ℤ) (by decide) (by decide) (by decide)
theorem signature_53 : cappedValuation 5 2 (19:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (19:ℤ) (by decide) (by decide) (by decide)
theorem signature_54 : cappedValuation 2 2 (20:ℤ) = 2 := by exact cappedValuation_eq_of_profile 2 2 2 (20:ℤ) (by decide) (by decide) (by decide)
theorem signature_55 : cappedValuation 3 2 (20:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (20:ℤ) (by decide) (by decide) (by decide)
theorem signature_56 : cappedValuation 5 2 (20:ℤ) = 1 := by exact cappedValuation_eq_of_profile 5 2 1 (20:ℤ) (by decide) (by decide) (by decide)
theorem signature_57 : cappedValuation 2 2 (21:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (21:ℤ) (by decide) (by decide) (by decide)
theorem signature_58 : cappedValuation 3 2 (21:ℤ) = 1 := by exact cappedValuation_eq_of_profile 3 2 1 (21:ℤ) (by decide) (by decide) (by decide)
theorem signature_59 : cappedValuation 5 2 (21:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (21:ℤ) (by decide) (by decide) (by decide)
theorem signature_60 : cappedValuation 2 2 (22:ℤ) = 1 := by exact cappedValuation_eq_of_profile 2 2 1 (22:ℤ) (by decide) (by decide) (by decide)
theorem signature_61 : cappedValuation 3 2 (22:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (22:ℤ) (by decide) (by decide) (by decide)
theorem signature_62 : cappedValuation 5 2 (22:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (22:ℤ) (by decide) (by decide) (by decide)
theorem signature_63 : cappedValuation 2 2 (23:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (23:ℤ) (by decide) (by decide) (by decide)
theorem signature_64 : cappedValuation 3 2 (23:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (23:ℤ) (by decide) (by decide) (by decide)
theorem signature_65 : cappedValuation 5 2 (23:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (23:ℤ) (by decide) (by decide) (by decide)
theorem signature_66 : cappedValuation 2 2 (24:ℤ) = 2 := by exact cappedValuation_eq_of_profile 2 2 2 (24:ℤ) (by decide) (by decide) (by decide)
theorem signature_67 : cappedValuation 3 2 (24:ℤ) = 1 := by exact cappedValuation_eq_of_profile 3 2 1 (24:ℤ) (by decide) (by decide) (by decide)
theorem signature_68 : cappedValuation 5 2 (24:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (24:ℤ) (by decide) (by decide) (by decide)
theorem signature_69 : cappedValuation 2 2 (25:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (25:ℤ) (by decide) (by decide) (by decide)
theorem signature_70 : cappedValuation 3 2 (25:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (25:ℤ) (by decide) (by decide) (by decide)
theorem signature_71 : cappedValuation 5 2 (25:ℤ) = 2 := by exact cappedValuation_eq_of_profile 5 2 2 (25:ℤ) (by decide) (by decide) (by decide)
theorem signature_72 : cappedValuation 2 2 (26:ℤ) = 1 := by exact cappedValuation_eq_of_profile 2 2 1 (26:ℤ) (by decide) (by decide) (by decide)
theorem signature_73 : cappedValuation 3 2 (26:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (26:ℤ) (by decide) (by decide) (by decide)
theorem signature_74 : cappedValuation 5 2 (26:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (26:ℤ) (by decide) (by decide) (by decide)
theorem signature_75 : cappedValuation 2 2 (27:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (27:ℤ) (by decide) (by decide) (by decide)
theorem signature_76 : cappedValuation 3 2 (27:ℤ) = 2 := by exact cappedValuation_eq_of_profile 3 2 2 (27:ℤ) (by decide) (by decide) (by decide)
theorem signature_77 : cappedValuation 5 2 (27:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (27:ℤ) (by decide) (by decide) (by decide)
theorem signature_78 : cappedValuation 2 2 (28:ℤ) = 2 := by exact cappedValuation_eq_of_profile 2 2 2 (28:ℤ) (by decide) (by decide) (by decide)
theorem signature_79 : cappedValuation 3 2 (28:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (28:ℤ) (by decide) (by decide) (by decide)
theorem signature_80 : cappedValuation 5 2 (28:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (28:ℤ) (by decide) (by decide) (by decide)
theorem signature_81 : cappedValuation 2 2 (29:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (29:ℤ) (by decide) (by decide) (by decide)
theorem signature_82 : cappedValuation 3 2 (29:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (29:ℤ) (by decide) (by decide) (by decide)
theorem signature_83 : cappedValuation 5 2 (29:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (29:ℤ) (by decide) (by decide) (by decide)
theorem signature_84 : cappedValuation 2 2 (30:ℤ) = 1 := by exact cappedValuation_eq_of_profile 2 2 1 (30:ℤ) (by decide) (by decide) (by decide)
theorem signature_85 : cappedValuation 3 2 (30:ℤ) = 1 := by exact cappedValuation_eq_of_profile 3 2 1 (30:ℤ) (by decide) (by decide) (by decide)
theorem signature_86 : cappedValuation 5 2 (30:ℤ) = 1 := by exact cappedValuation_eq_of_profile 5 2 1 (30:ℤ) (by decide) (by decide) (by decide)
theorem signature_87 : cappedValuation 2 2 (31:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (31:ℤ) (by decide) (by decide) (by decide)
theorem signature_88 : cappedValuation 3 2 (31:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (31:ℤ) (by decide) (by decide) (by decide)
theorem signature_89 : cappedValuation 5 2 (31:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (31:ℤ) (by decide) (by decide) (by decide)
theorem signature_90 : cappedValuation 2 2 (32:ℤ) = 2 := by exact cappedValuation_eq_of_profile 2 2 2 (32:ℤ) (by decide) (by decide) (by decide)
theorem signature_91 : cappedValuation 3 2 (32:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (32:ℤ) (by decide) (by decide) (by decide)
theorem signature_92 : cappedValuation 5 2 (32:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (32:ℤ) (by decide) (by decide) (by decide)
theorem signature_93 : cappedValuation 2 2 (33:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (33:ℤ) (by decide) (by decide) (by decide)
theorem signature_94 : cappedValuation 3 2 (33:ℤ) = 1 := by exact cappedValuation_eq_of_profile 3 2 1 (33:ℤ) (by decide) (by decide) (by decide)
theorem signature_95 : cappedValuation 5 2 (33:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (33:ℤ) (by decide) (by decide) (by decide)
theorem signature_96 : cappedValuation 2 2 (34:ℤ) = 1 := by exact cappedValuation_eq_of_profile 2 2 1 (34:ℤ) (by decide) (by decide) (by decide)
theorem signature_97 : cappedValuation 3 2 (34:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (34:ℤ) (by decide) (by decide) (by decide)
theorem signature_98 : cappedValuation 5 2 (34:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (34:ℤ) (by decide) (by decide) (by decide)
theorem signature_99 : cappedValuation 2 2 (35:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (35:ℤ) (by decide) (by decide) (by decide)
theorem signature_100 : cappedValuation 3 2 (35:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (35:ℤ) (by decide) (by decide) (by decide)
theorem signature_101 : cappedValuation 5 2 (35:ℤ) = 1 := by exact cappedValuation_eq_of_profile 5 2 1 (35:ℤ) (by decide) (by decide) (by decide)
theorem signature_102 : cappedValuation 2 2 (36:ℤ) = 2 := by exact cappedValuation_eq_of_profile 2 2 2 (36:ℤ) (by decide) (by decide) (by decide)
theorem signature_103 : cappedValuation 3 2 (36:ℤ) = 2 := by exact cappedValuation_eq_of_profile 3 2 2 (36:ℤ) (by decide) (by decide) (by decide)
theorem signature_104 : cappedValuation 5 2 (36:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (36:ℤ) (by decide) (by decide) (by decide)
theorem signature_105 : cappedValuation 2 2 (37:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (37:ℤ) (by decide) (by decide) (by decide)
theorem signature_106 : cappedValuation 3 2 (37:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (37:ℤ) (by decide) (by decide) (by decide)
theorem signature_107 : cappedValuation 5 2 (37:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (37:ℤ) (by decide) (by decide) (by decide)
theorem signature_108 : cappedValuation 2 2 (38:ℤ) = 1 := by exact cappedValuation_eq_of_profile 2 2 1 (38:ℤ) (by decide) (by decide) (by decide)
theorem signature_109 : cappedValuation 3 2 (38:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (38:ℤ) (by decide) (by decide) (by decide)
theorem signature_110 : cappedValuation 5 2 (38:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (38:ℤ) (by decide) (by decide) (by decide)
theorem signature_111 : cappedValuation 2 2 (39:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (39:ℤ) (by decide) (by decide) (by decide)
theorem signature_112 : cappedValuation 3 2 (39:ℤ) = 1 := by exact cappedValuation_eq_of_profile 3 2 1 (39:ℤ) (by decide) (by decide) (by decide)
theorem signature_113 : cappedValuation 5 2 (39:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (39:ℤ) (by decide) (by decide) (by decide)
theorem signature_114 : cappedValuation 2 2 (40:ℤ) = 2 := by exact cappedValuation_eq_of_profile 2 2 2 (40:ℤ) (by decide) (by decide) (by decide)
theorem signature_115 : cappedValuation 3 2 (40:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (40:ℤ) (by decide) (by decide) (by decide)
theorem signature_116 : cappedValuation 5 2 (40:ℤ) = 1 := by exact cappedValuation_eq_of_profile 5 2 1 (40:ℤ) (by decide) (by decide) (by decide)
theorem signature_117 : cappedValuation 2 2 (41:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (41:ℤ) (by decide) (by decide) (by decide)
theorem signature_118 : cappedValuation 3 2 (41:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (41:ℤ) (by decide) (by decide) (by decide)
theorem signature_119 : cappedValuation 5 2 (41:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (41:ℤ) (by decide) (by decide) (by decide)
theorem signature_120 : cappedValuation 2 2 (42:ℤ) = 1 := by exact cappedValuation_eq_of_profile 2 2 1 (42:ℤ) (by decide) (by decide) (by decide)
theorem signature_121 : cappedValuation 3 2 (42:ℤ) = 1 := by exact cappedValuation_eq_of_profile 3 2 1 (42:ℤ) (by decide) (by decide) (by decide)
theorem signature_122 : cappedValuation 5 2 (42:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (42:ℤ) (by decide) (by decide) (by decide)
theorem signature_123 : cappedValuation 2 2 (43:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (43:ℤ) (by decide) (by decide) (by decide)
theorem signature_124 : cappedValuation 3 2 (43:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (43:ℤ) (by decide) (by decide) (by decide)
theorem signature_125 : cappedValuation 5 2 (43:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (43:ℤ) (by decide) (by decide) (by decide)
theorem signature_126 : cappedValuation 2 2 (44:ℤ) = 2 := by exact cappedValuation_eq_of_profile 2 2 2 (44:ℤ) (by decide) (by decide) (by decide)
theorem signature_127 : cappedValuation 3 2 (44:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (44:ℤ) (by decide) (by decide) (by decide)
theorem signature_128 : cappedValuation 5 2 (44:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (44:ℤ) (by decide) (by decide) (by decide)
theorem signature_129 : cappedValuation 2 2 (45:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (45:ℤ) (by decide) (by decide) (by decide)
theorem signature_130 : cappedValuation 3 2 (45:ℤ) = 2 := by exact cappedValuation_eq_of_profile 3 2 2 (45:ℤ) (by decide) (by decide) (by decide)
theorem signature_131 : cappedValuation 5 2 (45:ℤ) = 1 := by exact cappedValuation_eq_of_profile 5 2 1 (45:ℤ) (by decide) (by decide) (by decide)
theorem signature_132 : cappedValuation 2 2 (46:ℤ) = 1 := by exact cappedValuation_eq_of_profile 2 2 1 (46:ℤ) (by decide) (by decide) (by decide)
theorem signature_133 : cappedValuation 3 2 (46:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (46:ℤ) (by decide) (by decide) (by decide)
theorem signature_134 : cappedValuation 5 2 (46:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (46:ℤ) (by decide) (by decide) (by decide)
theorem signature_135 : cappedValuation 2 2 (47:ℤ) = 0 := by exact cappedValuation_eq_of_profile 2 2 0 (47:ℤ) (by decide) (by decide) (by decide)
theorem signature_136 : cappedValuation 3 2 (47:ℤ) = 0 := by exact cappedValuation_eq_of_profile 3 2 0 (47:ℤ) (by decide) (by decide) (by decide)
theorem signature_137 : cappedValuation 5 2 (47:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (47:ℤ) (by decide) (by decide) (by decide)
theorem signature_138 : cappedValuation 2 2 (48:ℤ) = 2 := by exact cappedValuation_eq_of_profile 2 2 2 (48:ℤ) (by decide) (by decide) (by decide)
theorem signature_139 : cappedValuation 3 2 (48:ℤ) = 1 := by exact cappedValuation_eq_of_profile 3 2 1 (48:ℤ) (by decide) (by decide) (by decide)
theorem signature_140 : cappedValuation 5 2 (48:ℤ) = 0 := by exact cappedValuation_eq_of_profile 5 2 0 (48:ℤ) (by decide) (by decide) (by decide)
theorem signatures : ([cappedValuation 2 2 (2:ℤ),cappedValuation 3 2 (2:ℤ),cappedValuation 5 2 (2:ℤ),cappedValuation 2 2 (4:ℤ),cappedValuation 3 2 (4:ℤ),cappedValuation 5 2 (4:ℤ),cappedValuation 2 2 (3:ℤ),cappedValuation 3 2 (3:ℤ),cappedValuation 5 2 (3:ℤ),cappedValuation 2 2 (5:ℤ),cappedValuation 3 2 (5:ℤ),cappedValuation 5 2 (5:ℤ),cappedValuation 2 2 (4:ℤ),cappedValuation 3 2 (4:ℤ),cappedValuation 5 2 (4:ℤ),cappedValuation 2 2 (6:ℤ),cappedValuation 3 2 (6:ℤ),cappedValuation 5 2 (6:ℤ),cappedValuation 2 2 (5:ℤ),cappedValuation 3 2 (5:ℤ),cappedValuation 5 2 (5:ℤ),cappedValuation 2 2 (7:ℤ),cappedValuation 3 2 (7:ℤ),cappedValuation 5 2 (7:ℤ),cappedValuation 2 2 (6:ℤ),cappedValuation 3 2 (6:ℤ),cappedValuation 5 2 (6:ℤ),cappedValuation 2 2 (8:ℤ),cappedValuation 3 2 (8:ℤ),cappedValuation 5 2 (8:ℤ),cappedValuation 2 2 (7:ℤ),cappedValuation 3 2 (7:ℤ),cappedValuation 5 2 (7:ℤ),cappedValuation 2 2 (9:ℤ),cappedValuation 3 2 (9:ℤ),cappedValuation 5 2 (9:ℤ),cappedValuation 2 2 (8:ℤ),cappedValuation 3 2 (8:ℤ),cappedValuation 5 2 (8:ℤ),cappedValuation 2 2 (10:ℤ),cappedValuation 3 2 (10:ℤ),cappedValuation 5 2 (10:ℤ),cappedValuation 2 2 (9:ℤ),cappedValuation 3 2 (9:ℤ),cappedValuation 5 2 (9:ℤ),cappedValuation 2 2 (11:ℤ),cappedValuation 3 2 (11:ℤ),cappedValuation 5 2 (11:ℤ),cappedValuation 2 2 (10:ℤ),cappedValuation 3 2 (10:ℤ),cappedValuation 5 2 (10:ℤ),cappedValuation 2 2 (12:ℤ),cappedValuation 3 2 (12:ℤ),cappedValuation 5 2 (12:ℤ),cappedValuation 2 2 (11:ℤ),cappedValuation 3 2 (11:ℤ),cappedValuation 5 2 (11:ℤ),cappedValuation 2 2 (13:ℤ),cappedValuation 3 2 (13:ℤ),cappedValuation 5 2 (13:ℤ),cappedValuation 2 2 (12:ℤ),cappedValuation 3 2 (12:ℤ),cappedValuation 5 2 (12:ℤ),cappedValuation 2 2 (14:ℤ),cappedValuation 3 2 (14:ℤ),cappedValuation 5 2 (14:ℤ),cappedValuation 2 2 (13:ℤ),cappedValuation 3 2 (13:ℤ),cappedValuation 5 2 (13:ℤ),cappedValuation 2 2 (15:ℤ),cappedValuation 3 2 (15:ℤ),cappedValuation 5 2 (15:ℤ),cappedValuation 2 2 (14:ℤ),cappedValuation 3 2 (14:ℤ),cappedValuation 5 2 (14:ℤ),cappedValuation 2 2 (16:ℤ),cappedValuation 3 2 (16:ℤ),cappedValuation 5 2 (16:ℤ),cappedValuation 2 2 (15:ℤ),cappedValuation 3 2 (15:ℤ),cappedValuation 5 2 (15:ℤ),cappedValuation 2 2 (17:ℤ),cappedValuation 3 2 (17:ℤ),cappedValuation 5 2 (17:ℤ),cappedValuation 2 2 (16:ℤ),cappedValuation 3 2 (16:ℤ),cappedValuation 5 2 (16:ℤ),cappedValuation 2 2 (18:ℤ),cappedValuation 3 2 (18:ℤ),cappedValuation 5 2 (18:ℤ),cappedValuation 2 2 (17:ℤ),cappedValuation 3 2 (17:ℤ),cappedValuation 5 2 (17:ℤ),cappedValuation 2 2 (19:ℤ),cappedValuation 3 2 (19:ℤ),cappedValuation 5 2 (19:ℤ),cappedValuation 2 2 (18:ℤ),cappedValuation 3 2 (18:ℤ),cappedValuation 5 2 (18:ℤ),cappedValuation 2 2 (20:ℤ),cappedValuation 3 2 (20:ℤ),cappedValuation 5 2 (20:ℤ),cappedValuation 2 2 (19:ℤ),cappedValuation 3 2 (19:ℤ),cappedValuation 5 2 (19:ℤ),cappedValuation 2 2 (21:ℤ),cappedValuation 3 2 (21:ℤ),cappedValuation 5 2 (21:ℤ),cappedValuation 2 2 (20:ℤ),cappedValuation 3 2 (20:ℤ),cappedValuation 5 2 (20:ℤ),cappedValuation 2 2 (22:ℤ),cappedValuation 3 2 (22:ℤ),cappedValuation 5 2 (22:ℤ),cappedValuation 2 2 (21:ℤ),cappedValuation 3 2 (21:ℤ),cappedValuation 5 2 (21:ℤ),cappedValuation 2 2 (23:ℤ),cappedValuation 3 2 (23:ℤ),cappedValuation 5 2 (23:ℤ),cappedValuation 2 2 (22:ℤ),cappedValuation 3 2 (22:ℤ),cappedValuation 5 2 (22:ℤ),cappedValuation 2 2 (24:ℤ),cappedValuation 3 2 (24:ℤ),cappedValuation 5 2 (24:ℤ),cappedValuation 2 2 (23:ℤ),cappedValuation 3 2 (23:ℤ),cappedValuation 5 2 (23:ℤ),cappedValuation 2 2 (25:ℤ),cappedValuation 3 2 (25:ℤ),cappedValuation 5 2 (25:ℤ),cappedValuation 2 2 (24:ℤ),cappedValuation 3 2 (24:ℤ),cappedValuation 5 2 (24:ℤ),cappedValuation 2 2 (26:ℤ),cappedValuation 3 2 (26:ℤ),cappedValuation 5 2 (26:ℤ),cappedValuation 2 2 (25:ℤ),cappedValuation 3 2 (25:ℤ),cappedValuation 5 2 (25:ℤ),cappedValuation 2 2 (27:ℤ),cappedValuation 3 2 (27:ℤ),cappedValuation 5 2 (27:ℤ),cappedValuation 2 2 (26:ℤ),cappedValuation 3 2 (26:ℤ),cappedValuation 5 2 (26:ℤ),cappedValuation 2 2 (28:ℤ),cappedValuation 3 2 (28:ℤ),cappedValuation 5 2 (28:ℤ),cappedValuation 2 2 (27:ℤ),cappedValuation 3 2 (27:ℤ),cappedValuation 5 2 (27:ℤ),cappedValuation 2 2 (29:ℤ),cappedValuation 3 2 (29:ℤ),cappedValuation 5 2 (29:ℤ),cappedValuation 2 2 (28:ℤ),cappedValuation 3 2 (28:ℤ),cappedValuation 5 2 (28:ℤ),cappedValuation 2 2 (30:ℤ),cappedValuation 3 2 (30:ℤ),cappedValuation 5 2 (30:ℤ),cappedValuation 2 2 (29:ℤ),cappedValuation 3 2 (29:ℤ),cappedValuation 5 2 (29:ℤ),cappedValuation 2 2 (31:ℤ),cappedValuation 3 2 (31:ℤ),cappedValuation 5 2 (31:ℤ),cappedValuation 2 2 (30:ℤ),cappedValuation 3 2 (30:ℤ),cappedValuation 5 2 (30:ℤ),cappedValuation 2 2 (32:ℤ),cappedValuation 3 2 (32:ℤ),cappedValuation 5 2 (32:ℤ),cappedValuation 2 2 (31:ℤ),cappedValuation 3 2 (31:ℤ),cappedValuation 5 2 (31:ℤ),cappedValuation 2 2 (33:ℤ),cappedValuation 3 2 (33:ℤ),cappedValuation 5 2 (33:ℤ),cappedValuation 2 2 (32:ℤ),cappedValuation 3 2 (32:ℤ),cappedValuation 5 2 (32:ℤ),cappedValuation 2 2 (34:ℤ),cappedValuation 3 2 (34:ℤ),cappedValuation 5 2 (34:ℤ),cappedValuation 2 2 (33:ℤ),cappedValuation 3 2 (33:ℤ),cappedValuation 5 2 (33:ℤ),cappedValuation 2 2 (35:ℤ),cappedValuation 3 2 (35:ℤ),cappedValuation 5 2 (35:ℤ),cappedValuation 2 2 (34:ℤ),cappedValuation 3 2 (34:ℤ),cappedValuation 5 2 (34:ℤ),cappedValuation 2 2 (36:ℤ),cappedValuation 3 2 (36:ℤ),cappedValuation 5 2 (36:ℤ),cappedValuation 2 2 (35:ℤ),cappedValuation 3 2 (35:ℤ),cappedValuation 5 2 (35:ℤ),cappedValuation 2 2 (37:ℤ),cappedValuation 3 2 (37:ℤ),cappedValuation 5 2 (37:ℤ),cappedValuation 2 2 (36:ℤ),cappedValuation 3 2 (36:ℤ),cappedValuation 5 2 (36:ℤ),cappedValuation 2 2 (38:ℤ),cappedValuation 3 2 (38:ℤ),cappedValuation 5 2 (38:ℤ),cappedValuation 2 2 (37:ℤ),cappedValuation 3 2 (37:ℤ),cappedValuation 5 2 (37:ℤ),cappedValuation 2 2 (39:ℤ),cappedValuation 3 2 (39:ℤ),cappedValuation 5 2 (39:ℤ),cappedValuation 2 2 (38:ℤ),cappedValuation 3 2 (38:ℤ),cappedValuation 5 2 (38:ℤ),cappedValuation 2 2 (40:ℤ),cappedValuation 3 2 (40:ℤ),cappedValuation 5 2 (40:ℤ),cappedValuation 2 2 (39:ℤ),cappedValuation 3 2 (39:ℤ),cappedValuation 5 2 (39:ℤ),cappedValuation 2 2 (41:ℤ),cappedValuation 3 2 (41:ℤ),cappedValuation 5 2 (41:ℤ),cappedValuation 2 2 (40:ℤ),cappedValuation 3 2 (40:ℤ),cappedValuation 5 2 (40:ℤ),cappedValuation 2 2 (42:ℤ),cappedValuation 3 2 (42:ℤ),cappedValuation 5 2 (42:ℤ),cappedValuation 2 2 (41:ℤ),cappedValuation 3 2 (41:ℤ),cappedValuation 5 2 (41:ℤ),cappedValuation 2 2 (43:ℤ),cappedValuation 3 2 (43:ℤ),cappedValuation 5 2 (43:ℤ),cappedValuation 2 2 (42:ℤ),cappedValuation 3 2 (42:ℤ),cappedValuation 5 2 (42:ℤ),cappedValuation 2 2 (44:ℤ),cappedValuation 3 2 (44:ℤ),cappedValuation 5 2 (44:ℤ),cappedValuation 2 2 (43:ℤ),cappedValuation 3 2 (43:ℤ),cappedValuation 5 2 (43:ℤ),cappedValuation 2 2 (45:ℤ),cappedValuation 3 2 (45:ℤ),cappedValuation 5 2 (45:ℤ),cappedValuation 2 2 (44:ℤ),cappedValuation 3 2 (44:ℤ),cappedValuation 5 2 (44:ℤ),cappedValuation 2 2 (46:ℤ),cappedValuation 3 2 (46:ℤ),cappedValuation 5 2 (46:ℤ),cappedValuation 2 2 (45:ℤ),cappedValuation 3 2 (45:ℤ),cappedValuation 5 2 (45:ℤ),cappedValuation 2 2 (47:ℤ),cappedValuation 3 2 (47:ℤ),cappedValuation 5 2 (47:ℤ),cappedValuation 2 2 (46:ℤ),cappedValuation 3 2 (46:ℤ),cappedValuation 5 2 (46:ℤ),cappedValuation 2 2 (48:ℤ),cappedValuation 3 2 (48:ℤ),cappedValuation 5 2 (48:ℤ)] : List ℕ) = [1,0,0,2,0,0,0,1,0,0,0,1,2,0,0,1,1,0,0,0,1,0,0,0,1,1,0,2,0,0,0,0,0,0,2,0,2,0,0,1,0,1,0,2,0,0,0,0,1,0,1,2,1,0,0,0,0,0,0,0,2,1,0,1,0,0,0,0,0,0,1,1,1,0,0,2,0,0,0,1,1,0,0,0,2,0,0,1,2,0,0,0,0,0,0,0,1,2,0,2,0,1,0,0,0,0,1,0,2,0,1,1,0,0,0,1,0,0,0,0,1,0,0,2,1,0,0,0,0,0,0,2,2,1,0,1,0,0,0,0,2,0,2,0,1,0,0,2,0,0,0,2,0,0,0,0,2,0,0,1,1,1,0,0,0,0,0,0,1,1,1,2,0,0,0,0,0,0,1,0,2,0,0,1,0,0,0,1,0,0,0,1,1,0,0,2,2,0,0,0,1,0,0,0,2,2,0,1,0,0,0,0,0,0,1,0,1,0,0,2,0,1,0,1,0,0,0,0,2,0,1,1,1,0,0,0,0,0,0,0,1,1,0,2,0,0,0,0,0,0,2,1,2,0,0,1,0,0,0,2,1,0,0,0,1,0,0,2,1,0] := by simp only [signature_0,signature_1,signature_2,signature_3,signature_4,signature_5,signature_6,signature_7,signature_8,signature_9,signature_10,signature_11,signature_12,signature_13,signature_14,signature_15,signature_16,signature_17,signature_18,signature_19,signature_20,signature_21,signature_22,signature_23,signature_24,signature_25,signature_26,signature_27,signature_28,signature_29,signature_30,signature_31,signature_32,signature_33,signature_34,signature_35,signature_36,signature_37,signature_38,signature_39,signature_40,signature_41,signature_42,signature_43,signature_44,signature_45,signature_46,signature_47,signature_48,signature_49,signature_50,signature_51,signature_52,signature_53,signature_54,signature_55,signature_56,signature_57,signature_58,signature_59,signature_60,signature_61,signature_62,signature_63,signature_64,signature_65,signature_66,signature_67,signature_68,signature_69,signature_70,signature_71,signature_72,signature_73,signature_74,signature_75,signature_76,signature_77,signature_78,signature_79,signature_80,signature_81,signature_82,signature_83,signature_84,signature_85,signature_86,signature_87,signature_88,signature_89,signature_90,signature_91,signature_92,signature_93,signature_94,signature_95,signature_96,signature_97,signature_98,signature_99,signature_100,signature_101,signature_102,signature_103,signature_104,signature_105,signature_106,signature_107,signature_108,signature_109,signature_110,signature_111,signature_112,signature_113,signature_114,signature_115,signature_116,signature_117,signature_118,signature_119,signature_120,signature_121,signature_122,signature_123,signature_124,signature_125,signature_126,signature_127,signature_128,signature_129,signature_130,signature_131,signature_132,signature_133,signature_134,signature_135,signature_136,signature_137,signature_138,signature_139,signature_140]
theorem reconstruction : ([2,4,3,5,4,6,5,7,6,8,7,9,8,10,9,11,10,12,11,13,12,14,13,15,14,16,15,17,16,18,17,19,18,20,19,21,20,22,21,23,22,24,23,25,24,26,25,27,26,28,27,29,28,30,29,31,30,32,31,33,32,34,33,35,34,36,35,37,36,38,37,39,38,40,39,41,40,42,41,43,42,44,43,45,44,46,45,47,46,48] : List ℕ).map (fun z => z / 900 * 900 + z % 900) = [2,4,3,5,4,6,5,7,6,8,7,9,8,10,9,11,10,12,11,13,12,14,13,15,14,16,15,17,16,18,17,19,18,20,19,21,20,22,21,23,22,24,23,25,24,26,25,27,26,28,27,29,28,30,29,31,30,32,31,33,32,34,33,35,34,36,35,37,36,38,37,39,38,40,39,41,40,42,41,43,42,44,43,45,44,46,45,47,46,48] := by decide
end PackingReplay
#print axioms PackingReplay.proper_survivors
#print axioms PackingReplay.signatures
#print axioms PackingReplay.reconstruction
#print axioms PackingReplay.prime_support
#print axioms PackingReplay.raw_count
#print axioms PackingReplay.candidate_coverage
#print axioms PackingReplay.exclusions
```
