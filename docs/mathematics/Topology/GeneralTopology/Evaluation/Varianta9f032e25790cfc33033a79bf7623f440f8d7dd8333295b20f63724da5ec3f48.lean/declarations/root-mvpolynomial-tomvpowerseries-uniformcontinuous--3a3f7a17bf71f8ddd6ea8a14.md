# _root_.MvPolynomial.toMvPowerSeries_uniformContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c0349331a0f4571ac8e5122ce0f01085e426d2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c57ec182-2d3b-7f4b-48d8-0e24e5e60063",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f66e672-3e9a-ff02-507a-5ad79ea81878",
  "kind": "theorem",
  "lexical_name": "_root_.MvPolynomial.toMvPowerSeries_uniformContinuous",
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
  "slug": "root-mvpolynomial-tomvpowerseries-uniformcontinuous--3a3f7a17bf71f8ddd6ea8a14",
  "source": {
    "blob": "6c0349331a0f4571ac8e5122ce0f01085e426d2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a3f7a17bf71f8ddd6ea8a142c74e42d9730d7146ddc19e88262a059b72d786d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f66e672-3e9a-ff02-507a-5ad79ea81878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MvPolynomial.toMvPowerSeries_uniformContinuous
    [IsUniformAddGroup R] [IsUniformAddGroup S] [IsLinearTopology S S]
    (hφ : Continuous φ) (ha : HasEval a) :
    UniformContinuous (MvPolynomial.eval₂Hom φ a) := by
  classical
  apply uniformContinuous_of_continuousAt_zero
  rw [ContinuousAt, map_zero, IsLinearTopology.hasBasis_ideal.tendsto_right_iff]
  intro I hI
  let n : σ → ℕ := fun s ↦ sInf {n : ℕ | (a s) ^ n.succ ∈ I}
  have hn_ne : ∀ s, Set.Nonempty {n : ℕ | (a s) ^ n.succ ∈ I} := fun s ↦ by
    rcases ha.hpow s |>.eventually_mem hI |>.exists_forall_of_atTop with ⟨n, hn⟩
    use n
    simpa using hn n.succ n.le_succ
  have hn : Set.Finite (n.support) := by
    change n =ᶠ[cofinite] 0
    filter_upwards [ha.tendsto_zero.eventually_mem hI] with s has
    simpa [n, Pi.zero_apply, Nat.sInf_eq_zero, or_iff_left (hn_ne s).ne_empty] using has
  let n₀ : σ →₀ ℕ := .ofSupportFinite n hn
  let D := Iic n₀
  have hD : Set.Finite D := finite_Iic _
  have : ∀ d ∈ D, ∀ᶠ (p : MvPolynomial σ R) in 𝓝 0, φ (p.coeff d) ∈ I := fun d hd ↦ by
    have : Tendsto (φ ∘ coeff d ∘ toMvPowerSeries) (𝓝 0) (𝓝 0) :=
      hφ.comp (continuous_coeff R d) |>.comp continuous_induced_dom |>.tendsto' 0 0 (map_zero _)
    filter_upwards [this.eventually_mem hI] with f hf
    simpa using hf
  rw [← hD.eventually_all] at this
  filter_upwards [this] with p hp
  rw [coe_eval₂Hom, SetLike.mem_coe, eval₂_eq]
  apply Ideal.sum_mem
  intro d _
  by_cases hd : d ∈ D
  · exact Ideal.mul_mem_right _ _ (hp d hd)
  · apply Ideal.mul_mem_left
    simp only [mem_Iic, D, Finsupp.le_iff] at hd
    push Not at hd
    rcases hd with ⟨s, hs', hs⟩
    exact I.prod_mem hs' (I.pow_mem_of_pow_mem (Nat.sInf_mem (hn_ne s)) hs)

variable (φ a)
open scoped Classical in
/-- Evaluation of a multivariate power series at `f` at a point `a : σ → S`.

It coincides with the evaluation of `f` as a polynomial if `f` is the coercion of a polynomial.
Otherwise, it is only relevant if `φ` is continuous and `HasEval a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c0349331a0f4571ac8e5122ce0f01085e426d2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
