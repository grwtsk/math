# MemLp.enorm_rpow_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df3ca55b-c624-1e84-9c95-a85b15173d74",
  "kind": "theorem",
  "lexical_name": "MemLp.enorm_rpow_div",
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
  "slug": "memlp-enorm-rpow-div--e0d5ef68c481ac1724e807ab",
  "source": {
    "blob": "e1f0f7c4a292a1673c78326b4b09a8e389d55ab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 505,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0d5ef68c481ac1724e807ab901b8c19c1bb0d4bcbed323ad3e6de7342e8b7c9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df3ca55b-c624-1e84-9c95-a85b15173d74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.enorm_rpow_div {f : α → ε} (hf : MemLp f p μ) (q : ℝ≥0∞) :
    MemLp (‖f ·‖ₑ ^ q.toReal) (p / q) μ := by
  have hfrpow : AEStronglyMeasurable (‖f ·‖ₑ ^ q.toReal) μ :=
    (hf.aestronglyMeasurable.enorm.pow_const q.toReal).aestronglyMeasurable
  rw [memLp_iff]
  by_cases q_top : q = ∞
  · subst q
    simp only [ENNReal.toReal_top, ENNReal.rpow_zero, ENNReal.div_top,
      eLpNorm_exponent_zero aestronglyMeasurable_const, ENNReal.zero_lt_top]
  by_cases q_zero : q = 0
  · subst q
    simp only [ENNReal.toReal_zero]
    have hfrpow_zero : AEStronglyMeasurable (fun x => ‖f x‖ₑ ^ (0 : ℝ)) μ := by
      simpa only [ENNReal.toReal_zero] using hfrpow
    by_cases p_zero : p = 0
    · subst p
      simp only [ENNReal.zero_div, eLpNorm_exponent_zero hfrpow_zero,
        ENNReal.zero_lt_top]
    rw [ENNReal.div_zero p_zero]
    simpa only [ENNReal.rpow_zero, eLpNorm_exponent_top] using
      (memLp_top_const_enorm (by simp)).eLpNorm_lt_top
  rw [eLpNorm_enorm_rpow _ hf.aestronglyMeasurable (ENNReal.toReal_pos q_zero q_top)]
  apply ENNReal.rpow_lt_top_of_nonneg ENNReal.toReal_nonneg
  rw [ENNReal.ofReal_toReal q_top, div_eq_mul_inv, mul_assoc, ENNReal.inv_mul_cancel q_zero q_top,
    mul_one]
  exact hf.eLpNorm_ne_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f0f7c4a292a1673c78326b4b09a8e389d55ab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
