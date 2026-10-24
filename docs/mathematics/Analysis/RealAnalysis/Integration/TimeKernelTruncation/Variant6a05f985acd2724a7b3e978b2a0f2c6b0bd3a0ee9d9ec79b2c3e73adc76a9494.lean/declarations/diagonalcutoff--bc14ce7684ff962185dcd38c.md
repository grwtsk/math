# diagonalCutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ca76c8ddde6c8f42e23d8312f18694f5c1b682f11240ee28e6f9e0dc3ee3a95",
  "kind": "def",
  "lexical_name": "diagonalCutoff",
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
  "slug": "diagonalcutoff--bc14ce7684ff962185dcd38c",
  "source": {
    "blob": "ea12e2afea9c5f87a4e9800b8a52bc82f11eed73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 425,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant6a05f985acd2724a7b3e978b2a0f2c6b0bd3a0ee9d9ec79b2c3e73adc76a9494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc14ce7684ff962185dcd38c036b25195f2169205973adbe6d788aa1d9630837",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant6a05f985acd2724a7b3e978b2a0f2c6b0bd3a0ee9d9ec79b2c3e73adc76a9494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ca76c8ddde6c8f42e23d8312f18694f5c1b682f11240ee28e6f9e0dc3ee3a95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diagonalCutoff (α : ℝ) : ℝ := max 2 (1 + 4 * Real.log (1 / α))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant6a05f985acd2724a7b3e978b2a0f2c6b0bd3a0ee9d9ec79b2c3e73adc76a9494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant6a05f985acd2724a7b3e978b2a0f2c6b0bd3a0ee9d9ec79b2c3e73adc76a9494.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea12e2afea9c5f87a4e9800b8a52bc82f11eed73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
