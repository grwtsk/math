# IntegrableOn.of_ae_diff_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91088088-c37f-f016-b8cd-aadc2a9bfbee",
  "kind": "theorem",
  "lexical_name": "IntegrableOn.of_ae_diff_eq_zero",
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
  "slug": "integrableon-of-ae-diff-eq-zero--e59f5b91e988f7b1de5377f0",
  "source": {
    "blob": "f4824e02e4ab3d23958e8039e111228b669f0ed3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 333,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant7692586674fd7bb7231a8e9758cb6be4f5ea519ba5a7209ca9f6583d6de5a1c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e59f5b91e988f7b1de5377f0e8f32c6121822d9289e378358ba1ad10e2397807",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variant7692586674fd7bb7231a8e9758cb6be4f5ea519ba5a7209ca9f6583d6de5a1c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91088088-c37f-f016-b8cd-aadc2a9bfbee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntegrableOn.of_ae_diff_eq_zero [PseudoMetrizableSpace ε'] {f : α → ε'}
    (hf : IntegrableOn f s μ) (ht : NullMeasurableSet t μ)
    (h't : ∀ᵐ x ∂μ, x ∈ t \ s → f x = 0) : IntegrableOn f t μ := by
  let u := { x ∈ s | f x ≠ 0 }
  have hu : IntegrableOn f u μ := hf.mono_set fun x hx => hx.1
  let v := toMeasurable μ u
  have A : IntegrableOn f v μ := by
    rw [IntegrableOn, hu.restrict_toMeasurable]
    · exact hu
    · intro x hx; exact hx.2
  have B : IntegrableOn f (t \ v) μ := by
    apply integrableOn_zero.congr
    filter_upwards [ae_restrict_of_ae h't,
      ae_restrict_mem₀ (ht.diff (measurableSet_toMeasurable μ u).nullMeasurableSet)] with x hxt hx
    by_cases h'x : x ∈ s
    · by_contra H
      exact hx.2 (subset_toMeasurable μ u ⟨h'x, Ne.symm H⟩)
    · exact (hxt ⟨hx.1, h'x⟩).symm
  apply (A.union B).mono_set _
  rw [union_diff_self]
  exact subset_union_right

/-- If a function is integrable on a set `s`, and vanishes on `t \ s`, then it is integrable on `t`
if `t` is measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variant7692586674fd7bb7231a8e9758cb6be4f5ea519ba5a7209ca9f6583d6de5a1c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant7692586674fd7bb7231a8e9758cb6be4f5ea519ba5a7209ca9f6583d6de5a1c9.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4824e02e4ab3d23958e8039e111228b669f0ed3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
