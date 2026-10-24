# actualCenteredPrimeLogBulk_real_eq_phaseBulk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:902fe9a6-7621-69a0-9916-f88728621df9",
  "kind": "theorem",
  "lexical_name": "actualCenteredPrimeLogBulk_real_eq_phaseBulk",
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
  "slug": "actualcenteredprimelogbulk-real-eq-phasebulk--d738fc5bd609fe8aa2ef97d0",
  "source": {
    "blob": "766ce6ecd1b6a26dd15efc8688d25101c34a0c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 164,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variante06f4f687e6c15bc8c82a3cc2a2c8d7843a07e5c537745c3faf889b64e25e35b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d738fc5bd609fe8aa2ef97d044df9fa060cdce1ce8b3612d95f7bf40de3006c8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variante06f4f687e6c15bc8c82a3cc2a2c8d7843a07e5c537745c3faf889b64e25e35b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:902fe9a6-7621-69a0-9916-f88728621df9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredPrimeLogBulk_real_eq_phaseBulk (A c T : ℝ) :
    (actualCenteredPrimeLogBulk A c T).re = actualCenteredPrimePhaseBulk A c T := by
  unfold actualCenteredPrimeLogBulk actualCenteredPrimePhaseBulk
  rw [show (1 / (2 * Real.pi) : ℂ) = ((1 / (2 * Real.pi) : ℝ) : ℂ) by
    push_cast
    rfl]
  rw [Complex.mul_re]
  simp only [Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  have hi : (∫ t in -T..T, actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I) *
      (actualClosedPrimeLogPotential A ((c : ℂ) + (t : ℂ) * I) -
        actualClosedPrimeLogPotential A (c : ℂ))).re =
      ∫ t in -T..T, (actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I) *
        (actualClosedPrimeLogPotential A ((c : ℂ) + (t : ℂ) * I) -
          actualClosedPrimeLogPotential A (c : ℂ))).re := by
    exact ((RCLike.reCLM : ℂ →L[ℝ] ℝ).intervalIntegral_comp_comm
      (actualCenteredPrimeLogBulk_intervalIntegrable A c T)).symm
  rw [hi]
  congr 1
  apply intervalIntegral.integral_congr
  intro t _
  simp only [Complex.mul_re, actualClosedPrimeCosineDeficit, actualClosedPrimeSineComponent]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variante06f4f687e6c15bc8c82a3cc2a2c8d7843a07e5c537745c3faf889b64e25e35b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variante06f4f687e6c15bc8c82a3cc2a2c8d7843a07e5c537745c3faf889b64e25e35b.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `766ce6ecd1b6a26dd15efc8688d25101c34a0c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
