# IntegralVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e75e52fc9b365033ab4fed7223a0a5367146de990228b296a717893225ab88c",
  "kind": "def",
  "lexical_name": "IntegralVector",
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
  "slug": "integralvector--34ed9fed9b28991c46173819",
  "source": {
    "blob": "35c70576488684af38a580bc1a28b026f32c76e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 161,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34ed9fed9b28991c461738199943884f8c803d3670007c6922b15a8f59b14410",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e75e52fc9b365033ab4fed7223a0a5367146de990228b296a717893225ab88c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IntegralVector (x : ℚ_[p] × ℚ_[p]) : Prop := ‖x.1‖ ≤ 1 ∧ ‖x.2‖ ≤ 1

/-- The actual coefficient check licenses preservation of integral coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c70576488684af38a580bc1a28b026f32c76e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
