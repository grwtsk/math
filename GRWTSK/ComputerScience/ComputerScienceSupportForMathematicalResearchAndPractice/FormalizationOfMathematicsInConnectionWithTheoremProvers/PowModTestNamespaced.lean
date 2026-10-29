-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PowMod.Variantf6e638bd44fafd911342082a9cf7874e96f09aa6d5bdac6af46621b2e6ee590e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f6e638bd44fafd911342082a9cf7874e96f09aa6d5bdac6af46621b2e6ee590e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PowMod.Variantf6e638bd44fafd911342082a9cf7874e96f09aa6d5bdac6af46621b2e6ee590e","mathematical_subject":"Foundations.Unclassified","original_sha256":"f6e638bd44fafd911342082a9cf7874e96f09aa6d5bdac6af46621b2e6ee590e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/PrimeCert/PrimeCertTest/PowModTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import PrimeCert.PowMod

/-! # Tests for `prove_pow_mod`

Checks the `prove_pow_mod` tactic on both small and large inputs (up to ~300-digit moduli).
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PowMod.Variantf6e638bd44fafd911342082a9cf7874e96f09aa6d5bdac6af46621b2e6ee590e

open Tactic.powMod in
set_option diagnostics.threshold 0 in
set_option diagnostics true in
theorem powMod_11_100002_100003 : powMod 11 100002 100003 = 1 := by prove_pow_mod
#print powMod_11_100002_100003

set_option linter.style.longLine false in
open Tactic.powMod in
set_option diagnostics.threshold 0 in
set_option diagnostics true in
#time
example :
    powMod 2
      131715931587485903133664770501783872901180735752961173191222502260846184802138117218820246495979164495762424017769215925882581565859513559697500346853208717730048481311930278737221764046227216650748207028546755348290341925152606053939920784122173626831732721956717186562885471376983969828398653806056
      131715931587485903133664770501783872901180735752961173191222502260846184802138117218820246495979164495762424017769215925882581565859513559697500346853208717730048481311930278737221764046227216650748207028546755348290341925152606053939920784122173626831732721956717186562885471376983969828398653806057 =
      1 := by
  prove_pow_mod

