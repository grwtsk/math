# isUnit_map_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a58a1890cee2e2af71ecd3ac5d9814fb59e17c6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bbc7a5d-40a3-d2af-9c69-e81b0eb2216e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acb6caa6-6309-da51-c675-4945ed4fbe9e",
  "kind": "theorem",
  "lexical_name": "isUnit_map_of_injective",
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
  "slug": "isunit-map-of-injective--da6673f11da6609c7e1acf22",
  "source": {
    "blob": "a58a1890cee2e2af71ecd3ac5d9814fb59e17c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 171,
    "path": "GRWTSK/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da6673f11da6609c7e1acf224a83a54a136f50e3f665176ff4341ccb34631fc3",
  "verification": {
    "reference": "docs/verification/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acb6caa6-6309-da51-c675-4945ed4fbe9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_map_of_injective (hg : Function.Injective g) (y : nonZeroDivisors A) :
    IsUnit (g y) :=
  IsUnit.mk0 (g y) <|
    show g.toMonoidWithZeroHom y ≠ 0 from map_ne_zero_of_mem_nonZeroDivisors g hg y.2
#align is_fraction_ring.is_unit_map_of_injective IsFractionRing.isUnit_map_of_injective

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a58a1890cee2e2af71ecd3ac5d9814fb59e17c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
