# of_exponent_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cfb7745-d21d-4cda-62c6-96ca4943781d",
  "kind": "theorem",
  "lexical_name": "of_exponent_ge",
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
  "slug": "of-exponent-ge--ed1493eda8cb2a12afb57766",
  "source": {
    "blob": "a059e9acb7fff69b51af64de315d65f32b67871d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed1493eda8cb2a12afb57766b6add3a8f54b49b6695b80fa72c760390bde35ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cfb7745-d21d-4cda-62c6-96ca4943781d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_exponent_ge {p q : ℝ≥0∞} {f : ∀ i, E i} (hfq : Memℓp f q) (hpq : q ≤ p) : Memℓp f p := by
  rcases ENNReal.trichotomy₂ hpq with
    (⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, hp⟩ | ⟨rfl, rfl⟩ | ⟨hq, rfl⟩ | ⟨hq, _, hpq'⟩)
  · exact hfq
  · apply memℓp_infty
    obtain ⟨C, hC⟩ := (hfq.finite_dsupport.image fun i => ‖f i‖).bddAbove
    use max 0 C
    rintro x ⟨i, rfl⟩
    by_cases hi : f i = 0
    · simp [hi]
    · exact (hC ⟨i, hi, rfl⟩).trans (le_max_right _ _)
  · apply memℓp_gen
    have : ∀ i ∉ hfq.finite_dsupport.toFinset, ‖f i‖ ^ p.toReal = 0 := by
      intro i hi
      have : f i = 0 := by simpa using hi
      simp [this, Real.zero_rpow hp.ne']
    exact summable_of_ne_finset_zero this
  · exact hfq
  · apply memℓp_infty
    obtain ⟨A, hA⟩ := (hfq.summable hq).tendsto_cofinite_zero.bddAbove_range_of_cofinite
    use A ^ q.toReal⁻¹
    rintro x ⟨i, rfl⟩
    have : 0 ≤ ‖f i‖ ^ q.toReal := by positivity
    simpa [← Real.rpow_mul, mul_inv_cancel₀ hq.ne'] using
      Real.rpow_le_rpow this (hA ⟨i, rfl⟩) (inv_nonneg.mpr hq.le)
  · apply memℓp_gen
    have hf' := hfq.summable hq
    refine .of_norm_bounded_eventually _ hf' (@Set.Finite.subset _ { i | 1 ≤ ‖f i‖ } ?_ _ ?_)
    · have H : { x : α | 1 ≤ ‖f x‖ ^ q.toReal }.Finite := by
        simpa using hf'.tendsto_cofinite_zero.eventually_lt_const (by norm_num)
      exact H.subset fun i hi => Real.one_le_rpow hi hq.le
    · show ∀ i, ¬|‖f i‖ ^ p.toReal| ≤ ‖f i‖ ^ q.toReal → 1 ≤ ‖f i‖
      intro i hi
      have : 0 ≤ ‖f i‖ ^ p.toReal := Real.rpow_nonneg (norm_nonneg _) p.toReal
      simp only [abs_of_nonneg, this] at hi
      contrapose! hi
      exact Real.rpow_le_rpow_of_exponent_ge' (norm_nonneg _) hi.le hq.le hpq'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a059e9acb7fff69b51af64de315d65f32b67871d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
