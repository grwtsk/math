# map_derivedSeries_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa4613f2bafdf0dc87d60acbb53ef6f836635021",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e2d0fd3-e904-b120-e3d3-e1f617c5c0ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c04b0fd4-c532-6f96-7d04-fa218730737d",
  "kind": "theorem",
  "lexical_name": "map_derivedSeries_eq",
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
  "slug": "map-derivedseries-eq--702d80964eae50e202079ab9",
  "source": {
    "blob": "fa4613f2bafdf0dc87d60acbb53ef6f836635021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 92,
    "path": "GRWTSK/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:702d80964eae50e202079ab9e7946ea4ac39231783e6255d426fc6d04d0a0424",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c04b0fd4-c532-6f96-7d04-fa218730737d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_derivedSeries_eq (hf : Function.Surjective f) (n : ℕ) :
    (derivedSeries G n).map f = derivedSeries G' n :=
  le_antisymm (map_derivedSeries_le_derivedSeries f n) (derivedSeries_le_map_derivedSeries hf n)
#align map_derived_series_eq map_derivedSeries_eq

end DerivedSeriesMap

end CommutatorMap

section Solvable

variable (G)

/-- A group `G` is solvable if its derived series is eventually trivial. We use this definition
  because it's the most convenient one to work with. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa4613f2bafdf0dc87d60acbb53ef6f836635021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
