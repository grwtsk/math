# mem_a_of_differentiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f7297a0-6ecc-39ac-1a57-df388ffbf4e0",
  "kind": "theorem",
  "lexical_name": "mem_a_of_differentiable",
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
  "slug": "mem-a-of-differentiable--415557aac882ab0d322f5365",
  "source": {
    "blob": "97d862382122315b30b02a8eecb3d5131c94041c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 532,
    "path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:415557aac882ab0d322f53653e3600819e9f467e2d3f483a1013c14abc6cdc52",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f7297a0-6ecc-39ac-1a57-df388ffbf4e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_a_of_differentiable {ε : ℝ} (hε : 0 < ε) {x : ℝ}
    (hx : DifferentiableWithinAt ℝ f (Ici x) x) :
    ∃ R > 0, ∀ r ∈ Ioo (0 : ℝ) R, x ∈ A f (derivWithin f (Ici x) x) r ε := by
  have := hx.hasDerivWithinAt
  simp_rw [hasDerivWithinAt_iff_isLittleO, isLittleO_iff] at this
  rcases mem_nhdsWithin_Ici_iff_exists_Ico_subset.1 (this (half_pos hε)) with ⟨m, xm, hm⟩
  refine' ⟨m - x, by linarith [show x < m from xm], fun r hr => _⟩
  have : r ∈ Ioc (r / 2) r := ⟨half_lt_self hr.1, le_rfl⟩
  refine' ⟨r, this, fun y hy z hz => _⟩
  calc
    ‖f z - f y - (z - y) • derivWithin f (Ici x) x‖ =
        ‖f z - f x - (z - x) • derivWithin f (Ici x) x -
            (f y - f x - (y - x) • derivWithin f (Ici x) x)‖ :=
      by congr 1; simp only [sub_smul]; abel
    _ ≤
        ‖f z - f x - (z - x) • derivWithin f (Ici x) x‖ +
          ‖f y - f x - (y - x) • derivWithin f (Ici x) x‖ :=
      (norm_sub_le _ _)
    _ ≤ ε / 2 * ‖z - x‖ + ε / 2 * ‖y - x‖ :=
      (add_le_add (hm ⟨hz.1, hz.2.trans_lt (by linarith [hr.2])⟩)
        (hm ⟨hy.1, hy.2.trans_lt (by linarith [hr.2])⟩))
    _ ≤ ε / 2 * r + ε / 2 * r := by
      gcongr
      · rw [Real.norm_of_nonneg] <;> linarith [hz.1, hz.2]
      · rw [Real.norm_of_nonneg] <;> linarith [hy.1, hy.2]
    _ = ε * r := by ring
#align right_deriv_measurable_aux.mem_A_of_differentiable RightDerivMeasurableAux.mem_a_of_differentiable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97d862382122315b30b02a8eecb3d5131c94041c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
