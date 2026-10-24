# chineseRemainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f372f8bae330e88f2431aad12c4561aae61cc0a3ddf34840f9b3448b490489c2",
  "kind": "def",
  "lexical_name": "chineseRemainder",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "chineseremainder--82ec1d6a13d3e37ece29a018",
  "source": {
    "blob": "1ca4d51e2e33dba33a0fe7e8619264dd8f0f2652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 890,
    "line": 848,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82ec1d6a13d3e37ece29a018afea106c7efba75c6d19b24501b5ff4c7422c56d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f372f8bae330e88f2431aad12c4561aae61cc0a3ddf34840f9b3448b490489c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 848–890.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chineseRemainder {m n : ℕ} (h : m.Coprime n) : ZMod (m * n) ≃+* ZMod m × ZMod n :=
  let to_fun : ZMod (m * n) → ZMod m × ZMod n :=
    ZMod.castHom (show m.lcm n ∣ m * n by simp [Nat.lcm_dvd_iff]) (ZMod m × ZMod n)
  let inv_fun : ZMod m × ZMod n → ZMod (m * n) := fun x =>
    if m * n = 0 then
      if m = 1 then cast (RingHom.snd _ (ZMod n) x) else cast (RingHom.fst (ZMod m) _ x)
    else Nat.chineseRemainder h x.1.val x.2.val
  have inv : Function.LeftInverse inv_fun to_fun ∧ Function.RightInverse inv_fun to_fun :=
    if hmn0 : m * n = 0 then by
      rcases h.eq_of_mul_eq_zero hmn0 with (⟨rfl, rfl⟩ | ⟨rfl, rfl⟩)
      · constructor
        · intro x; rfl
        · rintro ⟨x, y⟩
          fin_cases y
          simp [to_fun, inv_fun, castHom, Prod.ext_iff, eq_iff_true_of_subsingleton]
      · constructor
        · intro x; rfl
        · rintro ⟨x, y⟩
          fin_cases x
          simp [to_fun, inv_fun, castHom, Prod.ext_iff, eq_iff_true_of_subsingleton]
    else by
      haveI : NeZero (m * n) := ⟨hmn0⟩
      haveI : NeZero m := ⟨left_ne_zero_of_mul hmn0⟩
      haveI : NeZero n := ⟨right_ne_zero_of_mul hmn0⟩
      have left_inv : Function.LeftInverse inv_fun to_fun := by
        intro x
        dsimp only [to_fun, inv_fun, ZMod.castHom_apply]
        conv_rhs => rw [← ZMod.natCast_zmod_val x]
        rw [if_neg hmn0, ZMod.eq_iff_modEq_nat, ← Nat.modEq_and_modEq_iff_modEq_mul h,
          Prod.fst_zmod_cast, Prod.snd_zmod_cast]
        refine
          ⟨(Nat.chineseRemainder h (cast x : ZMod m).val (cast x : ZMod n).val).2.left.trans ?_,
            (Nat.chineseRemainder h (cast x : ZMod m).val (cast x : ZMod n).val).2.right.trans ?_⟩
        · rw [← ZMod.eq_iff_modEq_nat, ZMod.natCast_zmod_val, ZMod.natCast_val]
        · rw [← ZMod.eq_iff_modEq_nat, ZMod.natCast_zmod_val, ZMod.natCast_val]
      exact ⟨left_inv, left_inv.rightInverse_of_card_le (by simp)⟩
  { toFun := to_fun,
    invFun := inv_fun,
    map_mul' := RingHom.map_mul _
    map_add' := RingHom.map_add _
    left_inv := inv.1
    right_inv := inv.2 }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.lean#L848).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ca4d51e2e33dba33a0fe7e8619264dd8f0f2652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
