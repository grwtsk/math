# homologyTorsionEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d194361de3ed2c0af0a46e53284a9905a08d737bab61c0f553fde83033d5b0fb",
  "kind": "def",
  "lexical_name": "homologyTorsionEquiv",
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
  "slug": "homologytorsionequiv--d3674b6bb23d230f9f82d721",
  "source": {
    "blob": "f49b25e556e6a7bbb6a23a0427c61d595aad90ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3674b6bb23d230f9f82d7210fa79452a8971518443880de250ff5fc59ba7d04",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d194361de3ed2c0af0a46e53284a9905a08d737bab61c0f553fde83033d5b0fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homologyTorsionEquiv (q : Nat) :
    AddCommGroup.torsion (K.homology q) ≃+
      AddCommGroup.torsion (K.homology q) where
  toFun x :=
    ⟨L.homologyAddEquiv q x,
      (L.homologyIso_isOfFinAddOrder_iff q x).2 x.property⟩
  invFun x :=
    ⟨(L.homologyAddEquiv q).symm x,
      (by
        apply (L.homologyIso_isOfFinAddOrder_iff q
          ((L.homologyAddEquiv q).symm x)).1
        rw [(L.homologyAddEquiv q).apply_symm_apply]
        exact x.property)⟩
  left_inv x := by
    apply Subtype.ext
    exact (L.homologyAddEquiv q).symm_apply_apply x
  right_inv x := by
    apply Subtype.ext
    exact (L.homologyAddEquiv q).apply_symm_apply x
  map_add' x y := by
    apply Subtype.ext
    exact (L.homologyAddEquiv q).map_add x y

end HomologicalLift

end DAF.Homology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f49b25e556e6a7bbb6a23a0427c61d595aad90ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
