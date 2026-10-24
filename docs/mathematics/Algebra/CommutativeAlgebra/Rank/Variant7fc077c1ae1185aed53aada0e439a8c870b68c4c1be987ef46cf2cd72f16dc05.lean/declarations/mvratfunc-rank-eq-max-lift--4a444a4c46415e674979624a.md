# MvRatFunc.rank_eq_max_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06152f32-6ce3-b919-4b57-8b56eb872fe8",
  "kind": "theorem",
  "lexical_name": "MvRatFunc.rank_eq_max_lift",
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
  "slug": "mvratfunc-rank-eq-max-lift--4a444a4c46415e674979624a",
  "source": {
    "blob": "18ec43ab65fbd0803101b1f0cccf3a8fb36400a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 29,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Rank/Variant7fc077c1ae1185aed53aada0e439a8c870b68c4c1be987ef46cf2cd72f16dc05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a444a4c46415e674979624a58671997940c6edf2098eff5a11436a8c8075a41",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Rank/Variant7fc077c1ae1185aed53aada0e439a8c870b68c4c1be987ef46cf2cd72f16dc05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06152f32-6ce3-b919-4b57-8b56eb872fe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MvRatFunc.rank_eq_max_lift
    {σ : Type u} {F : Type v} [Field F] [Nonempty σ] :
    Module.rank F (FractionRing (MvPolynomial σ F)) = lift.{u} #F ⊔ lift.{v} #σ ⊔ ℵ₀ := by
  let R := MvPolynomial σ F
  let K := FractionRing R
  refine ((rank_le_card _ _).trans ?_).antisymm ?_
  · rw [FractionRing.cardinalMk, MvPolynomial.cardinalMk_eq_max_lift]
  have hinj := IsFractionRing.injective R K
  have h1 := (IsScalarTower.toAlgHom F R K).toLinearMap.rank_le_of_injective hinj
  rw [MvPolynomial.rank_eq_lift, mk_finsupp_nat, lift_max, lift_aleph0, max_le_iff] at h1
  obtain ⟨i⟩ := ‹Nonempty σ›
  have hx : Transcendental F (algebraMap R K (MvPolynomial.X i)) :=
    (transcendental_algebraMap_iff hinj).2 (MvPolynomial.transcendental_X F i)
  have h2 := hx.linearIndependent_sub_inv.cardinal_lift_le_rank
  rw [lift_id'.{v, u}, lift_umax.{v, u}] at h2
  exact max_le (max_le h2 h1.1) h1.2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Rank/Variant7fc077c1ae1185aed53aada0e439a8c870b68c4c1be987ef46cf2cd72f16dc05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Rank/Variant7fc077c1ae1185aed53aada0e439a8c870b68c4c1be987ef46cf2cd72f16dc05.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18ec43ab65fbd0803101b1f0cccf3a8fb36400a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
