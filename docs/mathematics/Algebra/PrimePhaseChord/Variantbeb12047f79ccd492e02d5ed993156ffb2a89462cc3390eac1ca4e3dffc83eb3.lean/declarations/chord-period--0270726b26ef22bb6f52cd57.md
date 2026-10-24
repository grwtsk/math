# chord_period

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa274198-34e1-8d30-ccd6-ed964c28ec2e",
  "kind": "theorem",
  "lexical_name": "chord_period",
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
  "slug": "chord-period--0270726b26ef22bb6f52cd57",
  "source": {
    "blob": "0b9e3a9111d0507c9740fb6f827038ec837e45ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 29,
    "path": "GRWTSK/Algebra/PrimePhaseChord/Variantbeb12047f79ccd492e02d5ed993156ffb2a89462cc3390eac1ca4e3dffc83eb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0270726b26ef22bb6f52cd57976a3c8e18268be717d2633ef4b067b5dca9afa4",
  "verification": {
    "reference": "docs/verification/Algebra/PrimePhaseChord/Variantbeb12047f79ccd492e02d5ed993156ffb2a89462cc3390eac1ca4e3dffc83eb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa274198-34e1-8d30-ccd6-ed964c28ec2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chord_period (x : ℝ) (n : ℤ) : chord (x - 2 * Real.pi * n) = chord x := by
  have he : Complex.I * ((x - 2 * Real.pi * (n : ℝ) : ℝ) : ℂ) =
      Complex.I * (x : ℂ) + ((-n : ℤ) : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) := by
    push_cast
    ring
  unfold chord
  rw [he, Complex.exp_add, Complex.exp_int_mul_two_pi_mul_I, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimePhaseChord/Variantbeb12047f79ccd492e02d5ed993156ffb2a89462cc3390eac1ca4e3dffc83eb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimePhaseChord/Variantbeb12047f79ccd492e02d5ed993156ffb2a89462cc3390eac1ca4e3dffc83eb3.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9e3a9111d0507c9740fb6f827038ec837e45ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
