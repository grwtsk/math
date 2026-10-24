# cutoffShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2ce4dbbb8554089b8a2530d47c214f6441a956e841addb6195ad2e6fd7c6ccc",
  "kind": "def",
  "lexical_name": "cutoffShape",
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
  "slug": "cutoffshape--87d4c38d07636df336dfa949",
  "source": {
    "blob": "f077a3d4f8262e9463c578fb115720ed12db58b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 16,
    "line": 12,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87d4c38d07636df336dfa949a3cdb295510cc2a2f9e5237bb64c909a2feb57ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2ce4dbbb8554089b8a2530d47c214f6441a956e841addb6195ad2e6fd7c6ccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–16.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cutoffShape (N : ℕ) (z : ℂ) : ℂ :=
  Complex.exp ((1 / 2 - z) * (Real.log (N : ℝ) : ℂ)) -
    Complex.exp ((1 / 2 - z) * (Real.log ((N + 1 : ℕ) : ℝ) : ℂ))

/-- The original finite corrected family starts with the zero numerator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f077a3d4f8262e9463c578fb115720ed12db58b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
