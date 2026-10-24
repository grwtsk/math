# trivialContribution_eq_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b02d2f66-54da-16b2-407f-addd90a6bbc0",
  "kind": "theorem",
  "lexical_name": "trivialContribution_eq_kernel",
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
  "slug": "trivialcontribution-eq-kernel--1d4c07eecf34f5288941051c",
  "source": {
    "blob": "2d4f77bf710061303cb9c16c20b564ccf1a011ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d4c07eecf34f5288941051ccb7dac8238178e872108806c5d7eea0acdda4bbd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b02d2f66-54da-16b2-407f-addd90a6bbc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivialContribution_eq_kernel (xi : ℝ) (n : ℕ) :
    trivialContribution xi n = kernel (xi / 2) (((n + 1 : ℕ) : ℝ) + 1 / 4) := by
  have ha : 0 < (n : ℝ) + 1 + 1 / 4 := by positivity
  have hd : 0 < 2 * (n : ℝ) + 5 / 2 := by positivity
  have hq : 0 < ((n : ℝ) + 1 + 1 / 4) ^ 2 + (xi / 2) ^ 2 := by positivity
  have hr : 0 < (2 * (n : ℝ) + 5 / 2) ^ 2 + xi ^ 2 := by positivity
  unfold trivialContribution kernel
  rw [trivialDistance_eq]
  push_cast
  field_simp [ne_of_gt ha, ne_of_gt hd, ne_of_gt hq, ne_of_gt hr] <;> ring

/-- Individual trivial-zero contributions are nonnegative for every real frequency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d4f77bf710061303cb9c16c20b564ccf1a011ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
