# exists_eventually_eq_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4303a59264d27308dbe232496454d61b9bab767b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4683ac60-9f93-51ae-8ff9-85aee40ec445",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41371503-7b3e-7ea8-9bed-b62c53076782",
  "kind": "theorem",
  "lexical_name": "exists_eventually_eq_hasDerivAt",
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
  "slug": "exists-eventually-eq-hasderivat--12a3dd9aaf52a792e9f5dc7f",
  "source": {
    "blob": "4303a59264d27308dbe232496454d61b9bab767b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 167,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a3dd9aaf52a792e9f5dc7fe62fd79b315c2aeb55ca8713a319e46fb4c121b6",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41371503-7b3e-7ea8-9bed-b62c53076782`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eventually_eq_hasDerivAt
    (hf : ContDiffAt ℝ 1 f x₀) (t₀ : ℝ) :
    ∃ α : E → ℝ → E, ∀ᶠ xt in 𝓝 x₀ ×ˢ 𝓝 t₀,
      α xt.1 t₀ = xt.1 ∧ HasDerivAt (α xt.1) (f (α xt.1 xt.2)) xt.2 := by
  classical
  obtain ⟨r, hr, ε, hε, H⟩ := exists_forall_mem_closedBall_exists_eq_forall_mem_Ioo_hasDerivAt hf t₀
  choose α hα using H
  refine ⟨fun (x : E) ↦ if hx : x ∈ closedBall x₀ r then α x hx else 0, ?_⟩
  rw [Filter.eventually_iff_exists_mem]
  refine ⟨closedBall x₀ r ×ˢ Ioo (t₀ - ε) (t₀ + ε), ?_, ?_⟩
  · rw [Filter.prod_mem_prod_iff]
    exact ⟨closedBall_mem_nhds x₀ hr, Ioo_mem_nhds (by linarith) (by linarith)⟩
  · grind

end ContDiffAt

/-! ## Uniqueness of solutions to ODEs -/

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {v : ℝ → E → E} {s : ℝ → Set E} {K : ℝ≥0} {f g : ℝ → E} {a b t₀ : ℝ}

/-- There exists only one solution of an ODE $\dot x=v(t, x)$ in a set `s ⊆ ℝ × E` with
a given initial value provided that the RHS is Lipschitz continuous in `x` within `s`,
and we consider only solutions included in `s`.

This version shows uniqueness in a closed interval `Icc a b`, where `a` is the initial time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4303a59264d27308dbe232496454d61b9bab767b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
