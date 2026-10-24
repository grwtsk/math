# IsSelfAdjoint.map_spectrum_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9b983fe-5acc-ee2e-3c9b-08da3fbe2d18",
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
  "slug": "isselfadjoint-map-spectrum-real--10c287e548e1382a7db17ece",
  "source": {
    "blob": "e2be79f59d3b25d8cdf426bdcae29840b648fc79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variant374ea1cb7cc0e6d179dc329115254bccc3793af4299a704a18964b3b64c374df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10c287e548e1382a7db17ece4dc00dfe29b9e4503d3c760707fcb86d0b0240c5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variant374ea1cb7cc0e6d179dc329115254bccc3793af4299a704a18964b3b64c374df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9b983fe-5acc-ee2e-3c9b-08da3fbe2d18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSelfAdjoint.map_spectrum_real {F 𝕜 A B : Type*} [RCLike 𝕜]
    [Ring A] [StarRing A] [TopologicalSpace A] [Algebra ℝ A] [Algebra 𝕜 A]
    [Ring B] [StarRing B] [TopologicalSpace B] [Algebra ℝ B] [Algebra 𝕜 B]
    [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [ContinuousFunctionalCalculus ℝ B IsSelfAdjoint]
    [IsScalarTower ℝ 𝕜 A] [IsScalarTower ℝ 𝕜 B]
    [ContinuousMap.UniqueHom ℝ B] [FunLike F A B] [AlgHomClass F 𝕜 A B] [StarHomClass F A B]
    {a : A} (ha : IsSelfAdjoint a) (φ : F) (hφ : Function.Injective φ)
    (hφ' : Continuous φ := by fun_prop) :
    spectrum ℝ (φ a) = spectrum ℝ a := by
  have h_spec := AlgHom.spectrum_apply_subset ((.ofClass φ : A →⋆ₐ[𝕜] B).restrictScalars ℝ) a
  refine Set.eq_of_subset_of_subset h_spec fun x hx ↦ ?_
  /- we prove the reverse inclusion by contradiction, so assume that `x ∈ spectrum ℝ a`, but
  `x ∉ spectrum ℝ (φ a)`. Then by Urysohn's lemma we can get a function for which `f x = 1`, but
  `f = 0` on `spectrum ℝ a`. -/
  by_contra hx'
  obtain ⟨f, h_eqOn, h_eqOn_x, -⟩ := exists_continuous_zero_one_of_isClosed
    (isCompact_spectrum (R := ℝ) (φ a)).isClosed (isClosed_singleton (x := x)) <| by simpa
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

open CStarAlgebra in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variant374ea1cb7cc0e6d179dc329115254bccc3793af4299a704a18964b3b64c374df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variant374ea1cb7cc0e6d179dc329115254bccc3793af4299a704a18964b3b64c374df.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2be79f59d3b25d8cdf426bdcae29840b648fc79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
