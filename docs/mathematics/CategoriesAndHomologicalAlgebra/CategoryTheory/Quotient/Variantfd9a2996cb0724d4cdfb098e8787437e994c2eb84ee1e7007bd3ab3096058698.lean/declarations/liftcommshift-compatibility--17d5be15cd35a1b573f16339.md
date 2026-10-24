# liftCommShift_compatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f074c590e65822b1bf9513d87551115d06b9648e6f5d43c1e7f19ce0f5d32bc",
  "kind": "instance",
  "lexical_name": "liftCommShift_compatibility",
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
  "slug": "liftcommshift-compatibility--17d5be15cd35a1b573f16339",
  "source": {
    "blob": "40fcad54992337349b62c55c74a4c451198569fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantfd9a2996cb0724d4cdfb098e8787437e994c2eb84ee1e7007bd3ab3096058698.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17d5be15cd35a1b573f16339001d4e22066b7fb851b43c0128b6724c0acf2575",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantfd9a2996cb0724d4cdfb098e8787437e994c2eb84ee1e7007bd3ab3096058698.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f074c590e65822b1bf9513d87551115d06b9648e6f5d43c1e7f19ce0f5d32bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance liftCommShift_compatibility :
    NatTrans.CommShift (Quotient.lift.isLift r F hF).hom A where
  shift_comm a := by
    ext X
    dsimp
    rw [Functor.commShiftIso_comp_hom_app, liftCommShift_commShiftIso,
      LiftCommShift.iso_hom_app, ← Functor.map_comp_assoc, Iso.hom_inv_id_app]
    simp [lift, Quotient.functor]

end Quotient

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantfd9a2996cb0724d4cdfb098e8787437e994c2eb84ee1e7007bd3ab3096058698.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantfd9a2996cb0724d4cdfb098e8787437e994c2eb84ee1e7007bd3ab3096058698.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fcad54992337349b62c55c74a4c451198569fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
