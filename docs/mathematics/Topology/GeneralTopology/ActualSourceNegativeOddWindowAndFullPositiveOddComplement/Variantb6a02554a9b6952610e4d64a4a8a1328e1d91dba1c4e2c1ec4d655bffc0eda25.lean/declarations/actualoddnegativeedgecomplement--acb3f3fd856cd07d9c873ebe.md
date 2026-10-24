# actualOddNegativeEdgeComplement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83b6d710ec6e657dd7745027fa43f478279fee4b97ec99487683faf9de22571a",
  "kind": "def",
  "lexical_name": "actualOddNegativeEdgeComplement",
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
  "slug": "actualoddnegativeedgecomplement--acb3f3fd856cd07d9c873ebe",
  "source": {
    "blob": "7dbca816f9901d63e1fd52d413978dac3e2f4e2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 135,
    "path": "GRWTSK/Topology/GeneralTopology/ActualSourceNegativeOddWindowAndFullPositiveOddComplement/Variantb6a02554a9b6952610e4d64a4a8a1328e1d91dba1c4e2c1ec4d655bffc0eda25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acb3f3fd856cd07d9c873ebe61f93d6263347749679211c1d18c551852f0a2c5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualSourceNegativeOddWindowAndFullPositiveOddComplement/Variantb6a02554a9b6952610e4d64a4a8a1328e1d91dba1c4e2c1ec4d655bffc0eda25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83b6d710ec6e657dd7745027fa43f478279fee4b97ec99487683faf9de22571a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualOddNegativeEdgeComplement (A : ℝ) : ℝ :=
  ∑ n ∈ ((primePowerInventory (2 * A)).filter (fun n : ℕ => ¬2 ∣ n)) \
      ((actualNegativeEdgeWindow A).filter (fun n : ℕ => ¬2 ∣ n)),
    vonMangoldt n * closedPrimeWeight A n

/-- The original negative block retains both complete product parities exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualSourceNegativeOddWindowAndFullPositiveOddComplement/Variantb6a02554a9b6952610e4d64a4a8a1328e1d91dba1c4e2c1ec4d655bffc0eda25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualSourceNegativeOddWindowAndFullPositiveOddComplement/Variantb6a02554a9b6952610e4d64a4a8a1328e1d91dba1c4e2c1ec4d655bffc0eda25.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dbca816f9901d63e1fd52d413978dac3e2f4e2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
