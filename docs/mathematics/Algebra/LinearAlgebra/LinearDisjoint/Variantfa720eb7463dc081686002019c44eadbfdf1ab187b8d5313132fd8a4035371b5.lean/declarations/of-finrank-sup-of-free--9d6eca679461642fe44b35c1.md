# of_finrank_sup_of_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b8f79c3-9c5e-18dc-e13c-c1a248ad2885",
  "kind": "theorem",
  "lexical_name": "of_finrank_sup_of_free",
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
  "slug": "of-finrank-sup-of-free--9d6eca679461642fe44b35c1",
  "source": {
    "blob": "85213be5bb216bae650938535c70ffc17d762a1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 651,
    "line": 633,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variantfa720eb7463dc081686002019c44eadbfdf1ab187b8d5313132fd8a4035371b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d6eca679461642fe44b35c1e67a93565d3b2e373dbf281bdf1c466761ce3205",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearDisjoint/Variantfa720eb7463dc081686002019c44eadbfdf1ab187b8d5313132fd8a4035371b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b8f79c3-9c5e-18dc-e13c-c1a248ad2885`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–651.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_finrank_sup_of_free [Module.Free R A] [Module.Free R B]
    [Module.Finite R A] [Module.Finite R B]
    (H : Module.finrank R ↥(A ⊔ B) = Module.finrank R A * Module.finrank R B) :
    A.LinearDisjoint B := by
  nontriviality R
  rw [← Module.finrank_tensorProduct] at H
  obtain ⟨j, hj⟩ := exists_linearIndependent_of_le_finrank H.ge
  rw [LinearIndependent] at hj
  let j' := Finsupp.linearCombination R j ∘ₗ
    (LinearEquiv.ofFinrankEq (A ⊗[R] B) _ (by simp)).toLinearMap
  replace hj : Function.Injective j' := by simpa [j']
  have hf : Function.Surjective (mulMap' A B).toLinearMap := mulMap'_surjective A B
  haveI := Subalgebra.finite_sup A B
  rw [linearDisjoint_iff, Submodule.linearDisjoint_iff]
  exact Subtype.val_injective.comp (OrzechProperty.injective_of_surjective_of_injective j' _ hj hf)

include H in
/-- If `A` and `B` are linearly disjoint, if `A` is free and `B` is flat,
then `[B[A] : B] = [A : R]`. See also `Subalgebra.adjoin_rank_le`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearDisjoint/Variantfa720eb7463dc081686002019c44eadbfdf1ab187b8d5313132fd8a4035371b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variantfa720eb7463dc081686002019c44eadbfdf1ab187b8d5313132fd8a4035371b5.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85213be5bb216bae650938535c70ffc17d762a1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
