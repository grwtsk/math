# cardPowDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:968c6942392df81b3d06b6c04e33628648ba2ad61939b8ee3303bb312229ed7f",
  "kind": "def",
  "lexical_name": "cardPowDegree",
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
  "slug": "cardpowdegree--2f16d09a3fc80dbdc5c74f4c",
  "source": {
    "blob": "414c1b69756aec9ba339d3805cf780195390c5c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 48,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f16d09a3fc80dbdc5c74f4c6f162c8d5b198e1a1b5a1c982220647837c461fc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:968c6942392df81b3d06b6c04e33628648ba2ad61939b8ee3303bb312229ed7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cardPowDegree : AbsoluteValue Fq[X] ℤ :=
  have card_pos : 0 < Fintype.card Fq := Fintype.card_pos_iff.mpr inferInstance
  have pow_pos : ∀ n, 0 < (Fintype.card Fq : ℤ) ^ n := fun n =>
    pow_pos (Int.natCast_pos.mpr card_pos) n
  letI := Classical.decEq Fq
  { toFun := fun p => if p = 0 then 0 else (Fintype.card Fq : ℤ) ^ p.natDegree
    nonneg' := fun p => by
      split_ifs
      · rfl
      exact pow_nonneg (Int.ofNat_zero_le _) _
    eq_zero' := fun p =>
      ite_eq_left_iff.trans
        ⟨fun h => by
          contrapose! h
          exact ⟨h, (pow_pos _).ne'⟩, absurd⟩
    add_le' := fun p q => by
      by_cases hp : p = 0; · simp [hp]
      by_cases hq : q = 0; · simp [hq]
      by_cases hpq : p + q = 0
      · simp only [hpq, hp, hq, eq_self_iff_true, if_true, if_false]
        exact add_nonneg (pow_pos _).le (pow_pos _).le
      simp only [hpq, hp, hq, if_false]
      refine le_trans (pow_right_mono₀ (by omega) (Polynomial.natDegree_add_le _ _)) ?_
      refine
        le_trans (le_max_iff.mpr ?_)
          (max_le_add_of_nonneg (pow_nonneg (by omega) _) (pow_nonneg (by omega) _))
      exact (max_choice p.natDegree q.natDegree).imp (fun h => by rw [h]) fun h => by rw [h]
    map_mul' := fun p q => by
      by_cases hp : p = 0; · simp [hp]
      by_cases hq : q = 0; · simp [hq]
      have hpq : p * q ≠ 0 := mul_ne_zero hp hq
      simp only [hpq, hp, hq, eq_self_iff_true, if_true, if_false, Polynomial.natDegree_mul hp hq,
        pow_add] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `414c1b69756aec9ba339d3805cf780195390c5c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
