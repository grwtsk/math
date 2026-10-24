# IsSelfAdjoint.map_spectrum_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b00083cad5f484a41fb82804e678f10a64d2796",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a234a80dd63ca322d87427daa3d1c742c70063a1769c80416111e94949de4697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7fad035-4e73-6c18-3511-5e766edb70f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99e6a746-b354-c1a0-2f38-35f7036ef025",
  "kind": "lemma",
  "lexical_name": "IsSelfAdjoint.map_spectrum_real",
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
  "slug": "isselfadjoint-map-spectrum-real--cd761eeb165fed995e76c184",
  "source": {
    "blob": "5b00083cad5f484a41fb82804e678f10a64d2796",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 20,
    "path": "GRWTSK/Topology/MetricTopology/Hom/Varianta234a80dd63ca322d87427daa3d1c742c70063a1769c80416111e94949de4697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd761eeb165fed995e76c184fe7fd383d05ce56d81625b8c47255c5c5319e634",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hom/Varianta234a80dd63ca322d87427daa3d1c742c70063a1769c80416111e94949de4697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99e6a746-b354-c1a0-2f38-35f7036ef025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSelfAdjoint.map_spectrum_real {F A B : Type*} [CStarAlgebra A] [CStarAlgebra B]
    [FunLike F A B] [AlgHomClass F ℂ A B] [StarHomClass F A B]
    {a : A} (ha : IsSelfAdjoint a) (φ : F) (hφ : Function.Injective φ) :
    spectrum ℝ (φ a) = spectrum ℝ a := by
  have h_spec := AlgHom.spectrum_apply_subset ((φ : A →⋆ₐ[ℂ] B).restrictScalars ℝ) a
  refine Set.eq_of_subset_of_subset h_spec fun x hx ↦ ?_
  /- we prove the reverse inclusion by contradiction, so assume that `x ∈ spectrum ℝ a`, but
  `x ∉ spectrum ℝ (φ a)`. Then by Urysohn's lemma we can get a function for which `f x = 1`, but
  `f = 0` on `spectrum ℝ a`. -/
  by_contra hx'
  obtain ⟨f, h_eqOn, h_eqOn_x, -⟩ := exists_continuous_zero_one_of_isClosed
    (spectrum.isClosed (𝕜 := ℝ) (φ a)) (isClosed_singleton (x := x)) <| by simpa
  /- it suffices to show that `φ (f a) = 0`, for if so, then `f a = 0` by injectivity of `φ`, and
  hence `f = 0` on `spectrum ℝ a`, contradicting the fact that `f x = 1`. -/
  suffices φ (cfc f a) = 0 by
    rw [map_eq_zero_iff φ hφ, ← cfc_zero ℝ a, cfc_eq_cfc_iff_eqOn] at this
    exact zero_ne_one <| calc
      0 = f x := (this hx).symm
      _ = 1 := h_eqOn_x <| Set.mem_singleton x
  /- Finally, `φ (f a) = f (φ a) = 0`, where the last equality follows since `f = 0` on
  `spectrum ℝ (φ a)`. -/
  calc φ (cfc f a) = cfc f (φ a) := StarAlgHomClass.map_cfc φ f a
    _ = cfc (0 : ℝ → ℝ) (φ a) := cfc_congr h_eqOn
    _ = 0 := by simp

namespace NonUnitalStarAlgHom

variable {F A B : Type*} [NonUnitalCStarAlgebra A] [NonUnitalCStarAlgebra B]
variable [FunLike F A B] [NonUnitalAlgHomClass F ℂ A B] [StarHomClass F A B]

open CStarAlgebra Unitization in
/-- A non-unital star algebra monomorphism of complex C⋆-algebras is isometric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hom/Varianta234a80dd63ca322d87427daa3d1c742c70063a1769c80416111e94949de4697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hom/Varianta234a80dd63ca322d87427daa3d1c742c70063a1769c80416111e94949de4697.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b00083cad5f484a41fb82804e678f10a64d2796` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
