-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.IterateAct.Variant3542a86818e4040f523d35925fb9949a15344f23b15766fa5c6305bfab4579ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3542a86818e4040f523d35925fb9949a15344f23b15766fa5c6305bfab4579ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.IterateAct.Variant3542a86818e4040f523d35925fb9949a15344f23b15766fa5c6305bfab4579ee","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"3542a86818e4040f523d35925fb9949a15344f23b15766fa5c6305bfab4579ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Monodromy/TorsionPeriodicity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Monodromy.CatalanTransport

/-!
# Folder.Monodromy.TorsionPeriodicity

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: monodromy.torsion_periodicity
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: torsion
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.IterateAct.Variant3542a86818e4040f523d35925fb9949a15344f23b15766fa5c6305bfab4579ee

namespace Folder
namespace Monodromy

namespace TorsionAction

def iterateAct
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : Arithmetic.ECPoint E) :
    Nat → α → α
  | 0, x => x
  | n + 1, x => iterateAct A P n (A.act P x)

@[simp]
theorem iterateAct_zero
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    (x : α) :
    iterateAct A P 0 x = x :=
  rfl

@[simp]
theorem iterateAct_succ
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    (n : Nat)
    (x : α) :
    iterateAct A P (n + 1) x =
      iterateAct A P n (A.act P x) :=
  rfl

theorem act_nsmulPoint_apply
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    (n : Nat)
    (x : α) :
    A.act (Arithmetic.nsmulPoint G n P) x =
      iterateAct A P n x := by
  induction n generalizing x with
  | zero =>
      simp [Arithmetic.nsmulPoint, iterateAct, A.act_zero]
  | succ n ih =>
      change
        A.act (G.add P (Arithmetic.nsmulPoint G n P)) x =
          iterateAct A P n (A.act P x)
      rw [A.act_add_apply P (Arithmetic.nsmulPoint G n P) x]
      exact ih (A.act P x)

def HasPeriodDividing
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    (n : Nat) : Prop :=
  ∀ x : α, iterateAct A P n x = x

theorem period_dividing_of_nsmul_eq_zero
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (hn :
      Arithmetic.nsmulPoint G n P =
        Arithmetic.ECPoint.infinity (E := E)) :
    HasPeriodDividing A P n := by
  intro x
  rw [← act_nsmulPoint_apply A P n x, hn, A.act_zero]
  rfl

theorem period_dividing_of_hasOrder
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (h : Arithmetic.HasOrder G P n) :
    HasPeriodDividing A P n :=
  period_dividing_of_nsmul_eq_zero A P h.2.1

theorem exists_period_dividing_of_isTorsion
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    (h : Arithmetic.IsTorsion G P) :
    ∃ n : Nat, 0 < n ∧ HasPeriodDividing A P n := by
  rcases h with ⟨n, hnpos, hnzero⟩
  exact ⟨n, hnpos, period_dividing_of_nsmul_eq_zero A P hnzero⟩

end TorsionAction

theorem catalan_torsion_period_dividing_of_hasOrder
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    (M : CatalanMonodromySystem k E G)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (hP : Arithmetic.HasOrder G P n)
    (T : Catalan.CTree) :
    TorsionAction.HasPeriodDividing (M.torsionAction T) P n :=
  TorsionAction.period_dividing_of_hasOrder
    (M.torsionAction T) P hP

theorem catalan_torsion_period_on_transported_of_hasOrder
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    (M : CatalanMonodromySystem k E G)
    {T U : Catalan.CTree}
    (p : Path M.expansion.Step T U)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (hP : Arithmetic.HasOrder G P n)
    (x : M.expansion.bundle.Fiber T) :
    TorsionAction.iterateAct (M.torsionAction U) P n
      (Fiber.transportPath M.expansion.transport p x)
    =
    Fiber.transportPath M.expansion.transport p x :=
  TorsionAction.period_dividing_of_hasOrder
    (M.torsionAction U) P hP
    (Fiber.transportPath M.expansion.transport p x)

end Monodromy
end Folder
