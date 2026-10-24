# phase_distance_sq_chords

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4df65320-3ef8-8878-39cc-ebf83b8b6b3e",
  "kind": "theorem",
  "lexical_name": "phase_distance_sq_chords",
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
  "slug": "phase-distance-sq-chords--0cd6c7eea7aea5d4cee8a743",
  "source": {
    "blob": "0b9e3a9111d0507c9740fb6f827038ec837e45ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 59,
    "path": "GRWTSK/Algebra/PrimePhaseChord/Variantbeb12047f79ccd492e02d5ed993156ffb2a89462cc3390eac1ca4e3dffc83eb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cd6c7eea7aea5d4cee8a743435fd3a55ab6600e57fd15e0725978e8f73903b9",
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

Occurrence: `result:4df65320-3ef8-8878-39cc-ebf83b8b6b3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phase_distance_sq_chords (δ : ℝ) :
    phaseDistance δ 0 ^ 2 = chord (δ * Real.log 2) ^ 2 + chord (δ * Real.log 3) ^ 2 := by
  rw [phase_distance_sq, Fin.sum_univ_two]
  rw [show primeLog 0 = Real.log 2 from rfl, show primeLog 1 = Real.log 3 from rfl]
  simp only [neg_zero, zero_mul, Complex.ofReal_zero, mul_zero, Complex.exp_zero]
  change chord (-δ * Real.log 2) ^ 2 + chord (-δ * Real.log 3) ^ 2 = _
  rw [neg_mul, neg_mul, chord_neg, chord_neg]

/-- The nearest in this module, with the following exact parameterization.

def nearest (x : ℝ) : ℤ := round (x / (2 * Real.pi))
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimePhaseChord/Variantbeb12047f79ccd492e02d5ed993156ffb2a89462cc3390eac1ca4e3dffc83eb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimePhaseChord/Variantbeb12047f79ccd492e02d5ed993156ffb2a89462cc3390eac1ca4e3dffc83eb3.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9e3a9111d0507c9740fb6f827038ec837e45ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
