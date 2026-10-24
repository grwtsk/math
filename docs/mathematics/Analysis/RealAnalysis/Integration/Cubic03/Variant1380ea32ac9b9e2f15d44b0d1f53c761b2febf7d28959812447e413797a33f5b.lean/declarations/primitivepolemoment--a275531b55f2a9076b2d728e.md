# primitivePoleMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f68a99dd9bb9622eb31ce20f4b0f0b01fcca79b45f59b1504bb849c319b6bf3b",
  "kind": "def",
  "lexical_name": "primitivePoleMoment",
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
  "slug": "primitivepolemoment--a275531b55f2a9076b2d728e",
  "source": {
    "blob": "f8ef2848f3783f72fc050c23a73b408881a16d4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic03/Variant1380ea32ac9b9e2f15d44b0d1f53c761b2febf7d28959812447e413797a33f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a275531b55f2a9076b2d728ee3d4a0be94d80f6cec4caff7c3f4c5aa0f4fab13",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cubic03/Variant1380ea32ac9b9e2f15d44b0d1f53c761b2febf7d28959812447e413797a33f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f68a99dd9bb9622eb31ce20f4b0f0b01fcca79b45f59b1504bb849c319b6bf3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primitivePoleMoment (A : ℝ) : ℝ :=
  ∫ x : ℝ, Real.exp (x/2)*normalizedPrimitiveBump A x

/-- The literal unnormalized primitive moment in issue324. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cubic03/Variant1380ea32ac9b9e2f15d44b0d1f53c761b2febf7d28959812447e413797a33f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cubic03/Variant1380ea32ac9b9e2f15d44b0d1f53c761b2febf7d28959812447e413797a33f5b.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ef2848f3783f72fc050c23a73b408881a16d4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
