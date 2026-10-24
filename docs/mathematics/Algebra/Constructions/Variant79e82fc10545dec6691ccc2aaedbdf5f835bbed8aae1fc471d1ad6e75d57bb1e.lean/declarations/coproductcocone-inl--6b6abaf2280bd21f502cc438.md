# coproductCocone_inl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:451bcf15-92d2-5792-1203-14eba197285f",
  "kind": "theorem",
  "lexical_name": "coproductCocone_inl",
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
  "slug": "coproductcocone-inl--6b6abaf2280bd21f502cc438",
  "source": {
    "blob": "825b3284578f8b54947b7eab838850d2a4a9cc9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 150,
    "path": "GRWTSK/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b6abaf2280bd21f502cc438f569b003de65d74d9c1d4497dedc531b49873772",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:451bcf15-92d2-5792-1203-14eba197285f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coproductCocone_inl : (coproductCocone A B).inl =
  ofHom (Algebra.TensorProduct.includeLeft (S := ℤ)).toRingHom := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `825b3284578f8b54947b7eab838850d2a4a9cc9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
