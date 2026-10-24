# logValue_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:036bc82f-bea6-9e02-8976-d25a54e49d69",
  "kind": "theorem",
  "lexical_name": "logValue_sound",
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
  "slug": "logvalue-sound--71da773167616e294b4b2f94",
  "source": {
    "blob": "ba4c5499cd38e3e8171a1af9e405c22e635e8fb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71da773167616e294b4b2f944f90315275640ffc52b6152631e36a774082f622",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:036bc82f-bea6-9e02-8976-d25a54e49d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logValue_sound {t : ℝ} {z : ℂ} (p : PowerInput t z) :
    ‖-(Real.log t : ℂ) * logPower t z - logValue p‖ ≤ logError p := by
  let l : ℝ := (p.base.logarithm.center : ℝ)
  let eta : ℝ := (p.base.logarithm.error : ℝ)
  have heta : 0 ≤ eta := by
    dsimp [eta]
    exact_mod_cast p.base.logarithm.error_nonneg
  have hl : |Real.log t - l| ≤ eta := p.base.logarithm.sound
  have habs : |Real.log t| ≤ |l| + eta := by
    have ht := abs_add_le (Real.log t - l) l
    rw [sub_add_cancel] at ht
    linarith
  have hid : -(Real.log t : ℂ) * logPower t z - logValue p =
      -(Real.log t : ℂ) * (logPower t z - p.value) -
        ((Real.log t - l : ℝ) : ℂ) * p.value := by
    unfold logValue
    dsimp [l]
    push_cast
    ring
  rw [hid]
  calc
    _ ≤ ‖-(Real.log t : ℂ) * (logPower t z - p.value)‖ +
        ‖((Real.log t - l : ℝ) : ℂ) * p.value‖ := norm_sub_le _ _
    _ = |Real.log t| * ‖logPower t z - p.value‖ + |Real.log t - l| * ‖p.value‖ := by
      simp only [norm_mul, norm_neg, Complex.norm_real, Real.norm_eq_abs]
    _ ≤ (|l| + eta) * p.error + eta * rectNorm p.value :=
      add_le_add (mul_le_mul habs p.sound (norm_nonneg _) (by positivity))
        (mul_le_mul hl (norm_le_rectNorm p.value) (norm_nonneg _) heta)
    _ = logError p := by unfold logError; dsimp [l, eta]; ring

namespace PowerPacket

variable {N : ℕ} {c : ℂ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba4c5499cd38e3e8171a1af9e405c22e635e8fb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
