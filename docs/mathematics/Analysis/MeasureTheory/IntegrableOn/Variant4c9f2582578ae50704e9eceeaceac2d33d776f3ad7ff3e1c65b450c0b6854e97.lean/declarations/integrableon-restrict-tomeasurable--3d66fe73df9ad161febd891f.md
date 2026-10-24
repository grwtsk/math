# IntegrableOn.restrict_toMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af016348-b31c-daa0-e17a-bbe80e5243b6",
  "kind": "theorem",
  "lexical_name": "IntegrableOn.restrict_toMeasurable",
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
  "slug": "integrableon-restrict-tomeasurable--3d66fe73df9ad161febd891f",
  "source": {
    "blob": "9b000638b28d1dbc542c5e2e53ca7b509e5bb560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 299,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d66fe73df9ad161febd891f3fdbcbb73c4c39e075e0ba06ffed46f884c88007",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af016348-b31c-daa0-e17a-bbe80e5243b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntegrableOn.restrict_toMeasurable (hf : IntegrableOn f s μ) (h's : ∀ x ∈ s, f x ≠ 0) :
    μ.restrict (toMeasurable μ s) = μ.restrict s := by
  rcases exists_seq_strictAnti_tendsto (0 : ℝ) with ⟨u, _, u_pos, u_lim⟩
  let v n := toMeasurable (μ.restrict s) { x | u n ≤ ‖f x‖ }
  have A : ∀ n, μ (s ∩ v n) ≠ ∞ := by
    intro n
    rw [inter_comm, ← Measure.restrict_apply (measurableSet_toMeasurable _ _),
      measure_toMeasurable]
    exact (hf.measure_ge_lt_top (u_pos n)).ne
  apply Measure.restrict_toMeasurable_of_cover _ A
  intro x hx
  have : 0 < ‖f x‖ := by simp only [h's x hx, norm_pos_iff, Ne.def, not_false_iff]
  obtain ⟨n, hn⟩ : ∃ n, u n < ‖f x‖; exact ((tendsto_order.1 u_lim).2 _ this).exists
  refine' mem_iUnion.2 ⟨n, _⟩
  exact subset_toMeasurable _ _ hn.le
#align measure_theory.integrable_on.restrict_to_measurable MeasureTheory.IntegrableOn.restrict_toMeasurable

/-- If a function is integrable on a set `s`, and vanishes on `t \ s`, then it is integrable on `t`
if `t` is null-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b000638b28d1dbc542c5e2e53ca7b509e5bb560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
