# properPartitionsFourExplicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7551bfacc41d138c91146b3e2d96b038f64ccd57d7ef0f4058f52de9362fdb31",
  "kind": "def",
  "lexical_name": "properPartitionsFourExplicit",
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
  "slug": "properpartitionsfourexplicit--73f8899be752384fafc1e118",
  "source": {
    "blob": "f8944e31ff677ad28e2defc642161d2c40fcf084",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi/Variantc8d8f3c7a9a3c48ee075fed5bae0b42aafed653cd3c632bccabbbe3b9cd4016a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73f8899be752384fafc1e118c10a7be1ca2995ab183b84cbe02a8f67d42cf3d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi/Variantc8d8f3c7a9a3c48ee075fed5bae0b42aafed653cd3c632bccabbbe3b9cd4016a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7551bfacc41d138c91146b3e2d96b038f64ccd57d7ef0f4058f52de9362fdb31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def properPartitionsFourExplicit : Finset (DirectionPartition 4) :=
  {(⊥ : DirectionPartition 4),
    p01_2_3, p02_1_3, p03_1_2, p12_0_3, p13_0_2, p23_0_1,
    p01_23, p02_13, p03_12,
    p012_3, p013_2, p023_1, p123_0}

/-- Select among the fourteen proper nonempty blocks. Boolean coordinates
keep the finite completeness certificate shallow enough for the kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi/Variantc8d8f3c7a9a3c48ee075fed5bae0b42aafed653cd3c632bccabbbe3b9cd4016a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi/Variantc8d8f3c7a9a3c48ee075fed5bae0b42aafed653cd3c632bccabbbe3b9cd4016a.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8944e31ff677ad28e2defc642161d2c40fcf084` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
