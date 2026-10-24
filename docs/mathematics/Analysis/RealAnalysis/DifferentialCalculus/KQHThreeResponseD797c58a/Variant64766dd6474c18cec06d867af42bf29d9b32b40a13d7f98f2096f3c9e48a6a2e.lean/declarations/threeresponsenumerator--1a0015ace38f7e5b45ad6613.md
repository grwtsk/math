# threeResponseNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e031a5ed6fbff02ee5cf3e92c61ada8758fb07fd3f1ea2187ac6bcbe00e250e5",
  "kind": "def",
  "lexical_name": "threeResponseNumerator",
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
  "slug": "threeresponsenumerator--1a0015ace38f7e5b45ad6613",
  "source": {
    "blob": "4938694d11d1a48a67b90bd81917f160ef18968d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant64766dd6474c18cec06d867af42bf29d9b32b40a13d7f98f2096f3c9e48a6a2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a0015ace38f7e5b45ad6613c053aefc592ba23c53735cbffb5bbddd2458f3d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant64766dd6474c18cec06d867af42bf29d9b32b40a13d7f98f2096f3c9e48a6a2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e031a5ed6fbff02ee5cf3e92c61ada8758fb07fd3f1ea2187ac6bcbe00e250e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def threeResponseNumerator (A : ℝ) : ℝ :=
  (1 / A ^ 2) ^ 2 * T4 A - ((1 / A ^ 2) / 2) * T2 A + T0 A / 16

/-- Every summand lies in the certified closed profile interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant64766dd6474c18cec06d867af42bf29d9b32b40a13d7f98f2096f3c9e48a6a2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant64766dd6474c18cec06d867af42bf29d9b32b40a13d7f98f2096f3c9e48a6a2e.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4938694d11d1a48a67b90bd81917f160ef18968d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
