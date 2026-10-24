# isOpen_and_normal_iff_finite_and_isGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b914084-6899-eefd-dfa6-0c1b03ff986a",
  "kind": "theorem",
  "lexical_name": "isOpen_and_normal_iff_finite_and_isGalois",
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
  "slug": "isopen-and-normal-iff-finite-and-isgalois--a8b014a3b971c43cc55a76ef",
  "source": {
    "blob": "6aff0f690d21cd86887156330f15ed6e648f7fdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 269,
    "path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8b014a3b971c43cc55a76ef3d94f2af048af77446d90bdef9959badc4e61130",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b914084-6899-eefd-dfa6-0c1b03ff986a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_and_normal_iff_finite_and_isGalois (L : IntermediateField k K) [IsGalois k K] :
    IsOpen L.fixingSubgroup.carrier ∧ L.fixingSubgroup.Normal ↔
    FiniteDimensional k L ∧ IsGalois k L := by
  rw [isOpen_iff_finite, normal_iff_isGalois]

end InfiniteGalois
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aff0f690d21cd86887156330f15ed6e648f7fdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
