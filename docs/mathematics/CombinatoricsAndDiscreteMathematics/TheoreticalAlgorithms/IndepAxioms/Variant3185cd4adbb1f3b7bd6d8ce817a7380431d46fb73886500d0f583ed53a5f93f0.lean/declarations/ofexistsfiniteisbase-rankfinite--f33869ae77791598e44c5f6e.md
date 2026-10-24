# ofExistsFiniteIsBase_rankFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab1d5eb41e85b61199a00eee834579f4407f86e48411d8f38988d89e45c8e4f0",
  "kind": "instance",
  "lexical_name": "ofExistsFiniteIsBase_rankFinite",
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
  "slug": "ofexistsfiniteisbase-rankfinite--f33869ae77791598e44c5f6e",
  "source": {
    "blob": "043149e64bdeee6918304be3de3391dc409ae8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 534,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f33869ae77791598e44c5f6eb9df0ab8b92315a7be239110f2b52a31ea80f8a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab1d5eb41e85b61199a00eee834579f4407f86e48411d8f38988d89e45c8e4f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ofExistsFiniteIsBase_rankFinite (E : Set α) IsBase exists_finite_base
    isBase_exchange subset_ground : RankFinite (Matroid.ofExistsFiniteIsBase
      E IsBase exists_finite_base isBase_exchange subset_ground) := by
  obtain ⟨B, hB, hfin⟩ := exists_finite_base
  exact Matroid.IsBase.rankFinite_of_finite (by simpa) hfin

/-- If `E` is finite, then any nonempty collection of its subsets
  with the exchange property is the collection of bases of a matroid on `E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `043149e64bdeee6918304be3de3391dc409ae8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
