# logProfile_eq_continuousDivisorIntegrand_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc6db965-3e58-58a9-7c6f-94436b82a89f",
  "kind": "theorem",
  "lexical_name": "logProfile_eq_continuousDivisorIntegrand_mul",
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
  "slug": "logprofile-eq-continuousdivisorintegrand-mul--2c20930a0a8b1b41bc22eb6b",
  "source": {
    "blob": "6892d109217a7c7d54b03482593416f8fc282e21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 51,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceOmegaContinuousSectorAttempt01/Variant6c68ee6f6a7b93634ab7832f5f5649e26e4341beab4d2daafdf950492ce6fffd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c20930a0a8b1b41bc22eb6b467647a194de1dc9a8ca56bad6bc41b3a6ad0aa2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceOmegaContinuousSectorAttempt01/Variant6c68ee6f6a7b93634ab7832f5f5649e26e4341beab4d2daafdf950492ce6fffd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc6db965-3e58-58a9-7c6f-94436b82a89f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logProfile_eq_continuousDivisorIntegrand_mul (A : ℝ) {d u : ℝ}
    (hd : 0 < d) (hu : 0 < u) :
    logProfile A d u = continuousDivisorIntegrand A d (d * u) := by
  unfold continuousDivisorIntegrand
  rw [mul_div_cancel_left₀ u hd.ne', logProfile_eq_log_mul,
    plainProfile_multiplicative A hd hu]

/-- Genuine actual x-coordinate integrability follows from the proved actual profile integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceOmegaContinuousSectorAttempt01/Variant6c68ee6f6a7b93634ab7832f5f5649e26e4341beab4d2daafdf950492ce6fffd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceOmegaContinuousSectorAttempt01/Variant6c68ee6f6a7b93634ab7832f5f5649e26e4341beab4d2daafdf950492ce6fffd.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6892d109217a7c7d54b03482593416f8fc282e21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
