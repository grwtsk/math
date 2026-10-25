# correctedR2StarMidEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28622192-5c67-d6dd-8757-f795a26dc9ea",
  "kind": "theorem",
  "lexical_name": "correctedR2StarMidEnvelope",
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
  "slug": "correctedr2starmidenvelope--b1e9d294b3a43c0bd546f6e2",
  "source": {
    "blob": "6a7cfc0adc409d6739f186cb460806d03ba6ec1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RamareCorrectedR2Envelopes/Variant86c2617598f56b34c7109c501e65bdb4e6ab3e470dc1f71b179fd0ac46310d1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1e9d294b3a43c0bd546f6e2173e62d75d0120c3733e186458ca6f0f8d01342d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RamareCorrectedR2Envelopes/Variant86c2617598f56b34c7109c501e65bdb4e6ab3e470dc1f71b179fd0ac46310d1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28622192-5c67-d6dd-8757-f795a26dc9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedR2StarMidEnvelope
    (hfin : RamareCorrectedFiniteCertificates)
    (hinputs : RamareChebyshevInputs) :
    R2StarMidEnvelope := by
  intro u hlo hhi
  let N : ℕ := ⌊u⌋₊
  have hu0 : 0 ≤ u := le_trans (by norm_num [eq22K1]) hlo
  have hNlo : 21000000000 ≤ N := by
    apply Nat.le_floor
    simpa [eq22K1] using hlo
  have hNu : (N : ℝ) ≤ u := by
    dsimp [N]
    exact Nat.floor_le hu0
  change u ≤ (((10 : ℕ) ^ 16 : ℕ) : ℝ) at hhi
  have hNhi : N ≤ (10 : ℕ) ^ 16 := by
    exact_mod_cast hNu.trans hhi
  have hN : 1 ≤ N := le_trans (by norm_num) hNlo
  have hbridge := r2Star_abs_le_corrected N hN
  have hR3 := correctedR3_le_low hinputs hfin N hNlo hNhi
  have hR4 := correctedR4_abs_le_low hinputs N hNlo hNhi
  have hone : (1 : ℝ) ≤ (1 / 1000 : ℝ) * N := by
    have h10000Nat : 10000 ≤ N := le_trans (by norm_num) hNlo
    have h10000 : (10000 : ℝ) ≤ N := by exact_mod_cast h10000Nat
    nlinarith
  have hNbound : |r2Star N| ≤ (31 / 1000 : ℝ) * N := by
    nlinarith
  calc
    |r2Star ⌊u⌋₊| = |r2Star N| := by rfl
    _ ≤ (31 / 1000 : ℝ) * N := hNbound
    _ ≤ (31 / 1000 : ℝ) * u :=
      mul_le_mul_of_nonneg_left hNu (by norm_num)

/-- The uniform `0.0065` envelope above `10^16`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RamareCorrectedR2Envelopes/Variant86c2617598f56b34c7109c501e65bdb4e6ab3e470dc1f71b179fd0ac46310d1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RamareCorrectedR2Envelopes/Variant86c2617598f56b34c7109c501e65bdb4e6ab3e470dc1f71b179fd0ac46310d1b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a7cfc0adc409d6739f186cb460806d03ba6ec1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
