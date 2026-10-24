# snorm'_lim_le_liminf_snorm'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "086920a13e481303d1474b03c12442c2af516c1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1307,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01a137eb-5666-c396-7589-a5ca620460b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a05ae45a-f70e-4559-fbc9-86f199b2b057",
  "kind": "theorem",
  "lexical_name": "snorm'_lim_le_liminf_snorm'",
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
  "slug": "snorm-lim-le-liminf-snorm--26ac309ff167c9a4c207ee7c",
  "source": {
    "blob": "086920a13e481303d1474b03c12442c2af516c1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1323,
    "line": 1307,
    "path": "GRWTSK/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26ac309ff167c9a4c207ee7c24a3a434fcf7d8de3608c9d1b93f5bd69f5dc6fa",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a05ae45a-f70e-4559-fbc9-86f199b2b057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1307–1323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snorm'_lim_le_liminf_snorm' {E} [NormedAddCommGroup E] {f : ℕ → α → E} {p : ℝ}
    (hp_pos : 0 < p) (hf : ∀ n, AEStronglyMeasurable (f n) μ) {f_lim : α → E}
    (h_lim : ∀ᵐ x : α ∂μ, Tendsto (fun n => f n x) atTop (𝓝 (f_lim x))) :
    snorm' f_lim p μ ≤ atTop.liminf fun n => snorm' (f n) p μ := by
  rw [snorm'_lim_eq_lintegral_liminf hp_pos.le h_lim]
  rw [← ENNReal.le_rpow_one_div_iff (by simp [hp_pos] : 0 < 1 / p), one_div_one_div]
  refine (lintegral_liminf_le' fun m => (hf m).ennnorm.pow_const _).trans_eq ?_
  have h_pow_liminf :
    (atTop.liminf fun n => snorm' (f n) p μ) ^ p = atTop.liminf fun n => snorm' (f n) p μ ^ p := by
    have h_rpow_mono := ENNReal.strictMono_rpow_of_pos hp_pos
    have h_rpow_surj := (ENNReal.rpow_left_bijective hp_pos.ne.symm).2
    refine' (h_rpow_mono.orderIsoOfSurjective _ h_rpow_surj).liminf_apply _ _ _ _
    all_goals isBoundedDefault
  rw [h_pow_liminf]
  simp_rw [snorm', ← ENNReal.rpow_mul, one_div, inv_mul_cancel hp_pos.ne.symm, ENNReal.rpow_one]
#align measure_theory.Lp.snorm'_lim_le_liminf_snorm' MeasureTheory.Lp.snorm'_lim_le_liminf_snorm'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean#L1307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `086920a13e481303d1474b03c12442c2af516c1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
