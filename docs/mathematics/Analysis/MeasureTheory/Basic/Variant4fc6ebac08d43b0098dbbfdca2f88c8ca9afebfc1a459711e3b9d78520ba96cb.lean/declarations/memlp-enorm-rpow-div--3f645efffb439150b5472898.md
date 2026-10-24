# MemLp.enorm_rpow_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49ca798a7ffe3002a1d2ce7ae7ba6d06291406b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1575721-a3b4-4d97-1391-fd2a953ea9a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65cc4993-b3e1-972a-bc9b-b20d35d17ab7",
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
  "slug": "memlp-enorm-rpow-div--3f645efffb439150b5472898",
  "source": {
    "blob": "49ca798a7ffe3002a1d2ce7ae7ba6d06291406b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 497,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f645efffb439150b5472898271d87d809c732c819b3909a63a5175e3002ed21",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65cc4993-b3e1-972a-bc9b-b20d35d17ab7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–523.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49ca798a7ffe3002a1d2ce7ae7ba6d06291406b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
