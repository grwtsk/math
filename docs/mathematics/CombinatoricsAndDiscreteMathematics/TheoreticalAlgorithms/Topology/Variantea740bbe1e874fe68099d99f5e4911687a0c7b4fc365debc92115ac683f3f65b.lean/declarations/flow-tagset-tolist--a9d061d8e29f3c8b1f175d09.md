# Flow.TagSet.toList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bcafc7ecbe4e7533dfcd01db9f55c17cd0c95e96ba1cdab2a0e69003a68b586",
  "kind": "def",
  "lexical_name": "Flow.TagSet.toList",
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
  "slug": "flow-tagset-tolist--a9d061d8e29f3c8b1f175d09",
  "source": {
    "blob": "3cd0479821abc98f816755d254affa11eda11507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variantea740bbe1e874fe68099d99f5e4911687a0c7b4fc365debc92115ac683f3f65b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9d061d8e29f3c8b1f175d09c6ccd697a8200e936d5d62d47c0b257e6c2baede",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variantea740bbe1e874fe68099d99f5e4911687a0c7b4fc365debc92115ac683f3f65b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bcafc7ecbe4e7533dfcd01db9f55c17cd0c95e96ba1cdab2a0e69003a68b586`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Flow.TagSet.toList
    (A : Flow.TagSet) :
    List Flow.Tag :=
  (if A.homology then [.homology] else []) ++
  (if A.prismaticTag then [.prismaticTag] else []) ++
  (if A.symmetryGroup then [.symmetryGroup] else []) ++
  (if A.sieve then [.sieve] else []) ++
  (if A.heatResidue then [.heatResidue] else []) ++
  (if A.lFunction then [.lFunction] else []) ++
  (if A.eulerProduct then [.eulerProduct] else []) ++
  (if A.pointCounting then [.pointCounting] else [])

/-- Apply all attention tags in an attention set to a symbolic flow tree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variantea740bbe1e874fe68099d99f5e4911687a0c7b4fc365debc92115ac683f3f65b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variantea740bbe1e874fe68099d99f5e4911687a0c7b4fc365debc92115ac683f3f65b.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cd0479821abc98f816755d254affa11eda11507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
