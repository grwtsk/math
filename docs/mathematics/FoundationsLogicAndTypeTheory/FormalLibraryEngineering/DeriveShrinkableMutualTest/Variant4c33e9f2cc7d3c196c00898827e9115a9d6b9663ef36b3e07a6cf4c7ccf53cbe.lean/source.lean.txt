-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variantdd1b1b76b5636d30ebdefcd8d18fc479e29e11535c0d8d64cb49681f9b81b407","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd1b1b76b5636d30ebdefcd8d18fc479e29e11535c0d8d64cb49681f9b81b407","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Even.Variantdd1b1b76b5636d30ebdefcd8d18fc479e29e11535c0d8d64cb49681f9b81b407","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dd1b1b76b5636d30ebdefcd8d18fc479e29e11535c0d8d64cb49681f9b81b407","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest/DeriveShrinkable/DeriveShrinkableMutualTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Plausible


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variantdd1b1b76b5636d30ebdefcd8d18fc479e29e11535c0d8d64cb49681f9b81b407

open Plausible

namespace ShrinkableMutualTests

-- Mutually recursive types
mutual
  inductive Even where
    | zero : Even
    | succOdd : Odd → Even

  inductive Odd where
    | succEven : Even → Odd
end

deriving instance Repr, Shrinkable for Even, Odd

-- `deriving instance ... for` on a non-mutual recursive type
inductive Expr where
  | Lit : Nat → Expr
  | Add : Expr → Expr → Expr
  | Neg : Expr → Expr
  deriving Repr

deriving instance Shrinkable for Expr

/-- info: [] -/
#guard_msgs in
#eval Shrinkable.shrink (Even.succOdd (Odd.succEven Even.zero))

/--
info: [ShrinkableMutualTests.Expr.Lit 3,
 ShrinkableMutualTests.Expr.Neg (ShrinkableMutualTests.Expr.Lit 1),
 ShrinkableMutualTests.Expr.Add
   (ShrinkableMutualTests.Expr.Lit 1)
   (ShrinkableMutualTests.Expr.Neg (ShrinkableMutualTests.Expr.Lit 1)),
 ShrinkableMutualTests.Expr.Add
   (ShrinkableMutualTests.Expr.Lit 0)
   (ShrinkableMutualTests.Expr.Neg (ShrinkableMutualTests.Expr.Lit 1)),
 ShrinkableMutualTests.Expr.Add (ShrinkableMutualTests.Expr.Lit 3) (ShrinkableMutualTests.Expr.Lit 1),
 ShrinkableMutualTests.Expr.Add
   (ShrinkableMutualTests.Expr.Lit 3)
   (ShrinkableMutualTests.Expr.Neg (ShrinkableMutualTests.Expr.Lit 0))]
-/
#guard_msgs in
#eval Shrinkable.shrink (Expr.Add (Expr.Lit 3) (Expr.Neg (Expr.Lit 1)))

end ShrinkableMutualTests
