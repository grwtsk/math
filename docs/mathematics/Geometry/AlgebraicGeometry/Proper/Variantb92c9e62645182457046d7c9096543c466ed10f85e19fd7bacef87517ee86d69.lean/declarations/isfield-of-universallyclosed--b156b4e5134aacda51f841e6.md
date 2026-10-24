# isField_of_universallyClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b54ff9171c00515c43985dd7cfe733e5a63033d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43e7aa8f-e826-c3c2-d565-eaba0d7f7bf1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9fbd82f0-fbe9-1d03-d4bd-10852c275db9",
  "kind": "theorem",
  "lexical_name": "isField_of_universallyClosed",
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
  "slug": "isfield-of-universallyclosed--b156b4e5134aacda51f841e6",
  "source": {
    "blob": "b54ff9171c00515c43985dd7cfe733e5a63033d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 150,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b156b4e5134aacda51f841e68e7ec8498f8bbd6c1a41066a86c179ff1792003e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fbd82f0-fbe9-1d03-d4bd-10852c275db9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isField_of_universallyClosed (f : X ⟶ Spec ↧K)
    [IsIntegral X] [UniversallyClosed f] : IsField Γ(X, ⊤) := by
  let F := (Scheme.ΓSpecIso _).inv ≫ f.appTop
  have : F.hom.IsIntegral := by
    apply RingHom.isIntegral_respectsIso.2 (e := (Scheme.ΓSpecIso _).symm.commRingCatIsoToRingEquiv)
    exact isIntegral_appTop_of_universallyClosed f
  algebraize [F.hom]
  exact isField_of_isIntegral_of_isField' (Field.toIsField K)

/-- If `X` is an integral scheme that is universally closed and of finite type over `Spec K`,
then `Γ(X, ⊤)` is a finite field extension over `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Proper/Variantb92c9e62645182457046d7c9096543c466ed10f85e19fd7bacef87517ee86d69.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b54ff9171c00515c43985dd7cfe733e5a63033d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
