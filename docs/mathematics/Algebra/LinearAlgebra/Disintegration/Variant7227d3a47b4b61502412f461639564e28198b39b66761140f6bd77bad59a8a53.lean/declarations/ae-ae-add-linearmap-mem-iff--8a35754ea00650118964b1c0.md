# ae_ae_add_linearMap_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52a9c8bf-1bf7-d747-3e5a-c7d0269ba936",
  "kind": "lemma",
  "lexical_name": "ae_ae_add_linearMap_mem_iff",
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
  "slug": "ae-ae-add-linearmap-mem-iff--8a35754ea00650118964b1c0",
  "source": {
    "blob": "1f978f910dbc5d820f84a54a56d2621b01eded6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 137,
    "path": "GRWTSK/Algebra/LinearAlgebra/Disintegration/Variant7227d3a47b4b61502412f461639564e28198b39b66761140f6bd77bad59a8a53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a35754ea00650118964b1c00bff24c319ff38578a71bf1f22ca03bc0e57446a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Disintegration/Variant7227d3a47b4b61502412f461639564e28198b39b66761140f6bd77bad59a8a53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52a9c8bf-1bf7-d747-3e5a-c7d0269ba936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ae_ae_add_linearMap_mem_iff [LocallyCompactSpace F] {s : Set F} (hs : MeasurableSet s) :
    (∀ᵐ y ∂ν, ∀ᵐ x ∂μ, y + L x ∈ s) ↔ ∀ᵐ y ∂ν, y ∈ s := by
  have : FiniteDimensional 𝕜 E := .of_locallyCompactSpace 𝕜
  have : FiniteDimensional 𝕜 F := .of_locallyCompactSpace 𝕜
  have : ProperSpace E := .of_locallyCompactSpace 𝕜
  have : ProperSpace F := .of_locallyCompactSpace 𝕜
  let M : F × E →ₗ[𝕜] F := LinearMap.id.coprod L
  have M_cont : Continuous M := M.continuous_of_finiteDimensional
  -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to change `range_eq_top` into
  -- `range_eq_top (f := _)`
  have hM : Function.Surjective M := by
    simp [M, ← LinearMap.range_eq_top (f := _), LinearMap.range_coprod]
  have A : ∀ x, M x ∈ s ↔ x ∈ M ⁻¹' s := fun x ↦ Iff.rfl
  simp_rw [← ae_comp_linearMap_mem_iff M (ν.prod μ) ν hM hs, A]
  rw [Measure.ae_prod_mem_iff_ae_ae_mem]
  · simp only [M, mem_preimage, LinearMap.coprod_apply, LinearMap.id_coe, id_eq]
  · exact M_cont.measurable hs

/-- To check that a property holds almost everywhere with respect to an additive Haar measure, it
suffices to check it almost everywhere along all translates of a given vector subspace. This is an
instance of a disintegration argument for additive Haar measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Disintegration/Variant7227d3a47b4b61502412f461639564e28198b39b66761140f6bd77bad59a8a53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Disintegration/Variant7227d3a47b4b61502412f461639564e28198b39b66761140f6bd77bad59a8a53.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f978f910dbc5d820f84a54a56d2621b01eded6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
