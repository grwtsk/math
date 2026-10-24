# _root_.GRWTSK.Algebra.LinearAlgebra.FinrankLeIffRankLe.Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.Submodule.exists_linearEquiv_restrict_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4fd1630-7917-aea9-867d-18c9b2e5074e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.FinrankLeIffRankLe.Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.Submodule.exists_linearEquiv_restrict_eq",
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
  "slug": "root-grwtsk-algebra-linearalgebra-finrankleiffrankle-variant033ff059870c--9db9fa8afb6391c9c387420f",
  "source": {
    "blob": "5a41bcbbfa6fb2f156528c94a236f4d70643bc97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9db9fa8afb6391c9c387420f2156a81c2dc339daae49edacb449bf9baa2fef0e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4fd1630-7917-aea9-867d-18c9b2e5074e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.FinrankLeIffRankLe.Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.Submodule.exists_linearEquiv_restrict_eq
    {W W' : Submodule K V} [FiniteDimensional K W] (f : W ≃ₗ[K] W') :
    ∃ g : V ≃ₗ[K] V, ∀ x : W, f x = g x := by
  obtain ⟨Q, hQ⟩ := Submodule.exists_isCompl W
  let eQ := W.prodEquivOfIsCompl Q hQ
  obtain ⟨Q', hQ'⟩ := Submodule.exists_isCompl W'
  let eQ' := W'.prodEquivOfIsCompl Q' hQ'
  suffices Nonempty (Q ≃ₗ[K] Q') from
    ⟨eQ.symm ≪≫ₗ (LinearEquiv.prodCongr f this.some) ≪≫ₗ eQ', by aesop⟩
  refine Module.nonempty_linearEquiv_iff_rank_eq.mpr ?_
  rw [← Cardinal.add_right_inj_of_lt_aleph0 (γ := Module.rank K W),
    add_comm, ← rank_prod', Module.nonempty_linearEquiv_iff_rank_eq.mp ⟨eQ⟩,
    add_comm, Module.nonempty_linearEquiv_iff_rank_eq.mp ⟨f⟩,
    ← rank_prod', Module.nonempty_linearEquiv_iff_rank_eq.mp ⟨eQ'⟩]
  exact Module.rank_lt_aleph0 K ↥W

section

open Finset

variable {L : Type*} [Field L] [LinearOrder L] [IsStrictOrderedRing L]
variable {W : Type v} [AddCommGroup W] [Module L W]

/-- A slight strengthening of `exists_nontrivial_relation_sum_zero_of_rank_succ_lt_card`
available when working over an ordered field:
we can ensure a positive coefficient, not just a nonzero coefficient.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a41bcbbfa6fb2f156528c94a236f4d70643bc97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
