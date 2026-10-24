# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3d2282ba0b8a656018714f3cf46c9f0856464ea32f94bbf87ee30402bcd9311",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a202237e7fe179e8fd841dd3",
  "source": {
    "blob": "dc274a51e60f728ba7894b9ee7a3f16a07b8ec1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 984,
    "line": 947,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant6cad60d7fd897bb2d80154dfdcbaf78ad8e919d78109197bece34929aa96a97c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a202237e7fe179e8fd841dd3f64ef7531c6f76000d3feab69189e103047446c5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variant6cad60d7fd897bb2d80154dfdcbaf78ad8e919d78109197bece34929aa96a97c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3d2282ba0b8a656018714f3cf46c9f0856464ea32f94bbf87ee30402bcd9311`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 947–984.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec instance (priority := 100) haveLebesgueDecomposition_of_sigmaFinite
    [SFinite μ] [SigmaFinite ν] : HaveLebesgueDecomposition μ ν := by
  wlog hμ : IsFiniteMeasure μ generalizing μ
  · exact .sfinite_of_isFiniteMeasure fun μ _ ↦ this μ ‹_›
  -- Take a disjoint cover that consists of sets of finite measure `ν`.
  set s : ℕ → Set α := disjointed (spanningSets ν)
  have hsm : ∀ n, MeasurableSet (s n) := .disjointed <| measurableSet_spanningSets _
  have hs : ∀ n, Fact (ν (s n) < ⊤) := fun n ↦
    ⟨lt_of_le_of_lt (measure_mono <| disjointed_le ..) (measure_spanningSets_lt_top ν n)⟩
  -- Note that the restrictions of `μ` and `ν` to `s n` are finite measures.
  -- Therefore, as we proved above, these restrictions have a Lebesgue decomposition.
  -- Let `ξ n` and `f n` be the singular part and the Radon-Nikodym derivative
  -- of these restrictions.
  set ξ : ℕ → Measure α := fun n : ℕ ↦ singularPart (.restrict μ (s n)) (.restrict ν (s n))
  set f : ℕ → α → ℝ≥0∞ := fun n ↦ (s n).indicator (rnDeriv (.restrict μ (s n)) (.restrict ν (s n)))
  have hfm (n : ℕ) : Measurable (f n) := by measurability
  -- Each `ξ n` is supported on `s n` and is mutually singular with the restriction of `ν` to `s n`.
  -- Therefore, `ξ n` is mutually singular with `ν`, hence their sum is mutually singular with `ν`.
  have hξ : .sum ξ ⟂ₘ ν := by
    refine MutuallySingular.sum_left.2 fun n ↦ ?_
    rw [← ν.restrict_add_restrict_compl (hsm n)]
    refine (mutuallySingular_singularPart ..).add_right (.singularPart ?_ _)
    refine ⟨(s n)ᶜ, (hsm n).compl, ?_⟩
    simp [hsm]
  -- Finally, the sum of all `ξ n` and measure `ν` with the density `∑' n, f n`
  -- is equal to `μ`, thus `(Measure.sum ξ, ∑' n, f n)` is a Lebesgue decomposition for `μ` and `ν`.
  have hadd : .sum ξ + ν.withDensity (∑' n, f n) = μ := calc
    .sum ξ + ν.withDensity (∑' n, f n) = .sum fun n ↦ ξ n + ν.withDensity (f n) := by
      rw [withDensity_tsum hfm, Measure.sum_add_sum]
    _ = .sum fun n ↦ .restrict μ (s n) := by
      simp_rw [ξ, f, withDensity_indicator (hsm _), singularPart_add_rnDeriv]
    _ = μ := sum_restrict_disjointed_spanningSets ..
  exact ⟨⟨(.sum ξ, ∑' n, f n), by measurability, hξ, hadd.symm⟩⟩

section rnDeriv

/-- Radon-Nikodym derivative of the scalar multiple of a measure.
See also `rnDeriv_smul_left`, which has no hypothesis on `μ` but requires finite `ν`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variant6cad60d7fd897bb2d80154dfdcbaf78ad8e919d78109197bece34929aa96a97c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant6cad60d7fd897bb2d80154dfdcbaf78ad8e919d78109197bece34929aa96a97c.lean#L947).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc274a51e60f728ba7894b9ee7a3f16a07b8ec1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
