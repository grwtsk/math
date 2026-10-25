# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CurvatureDiffusionTests.Variant458d42c80e3f23f547f563513bb7e8ef95529b231ba356451ee0da2772fd797e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7366aa15473314499b96aeaca71557fbd8ee3a6a` · SHA-256 `e73cd0673b3247b07592a8b1518e92df55cccfbbee7b1ae7168f4df2e3e4595e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwoTerrain.Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TwoTerrain.Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Integration/CurvatureDiffusionTests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Geometry.LegalDiffusion
import Mathlib.Tactic

/-!
# Bounded curvature and legal diffusion integration tests

This finite two-vertex fixture keeps the metric trajectory and signal
trajectory separate.  The selected curvature semantics is discrete, legal
edge weights remain exactly one, pre-threshold evolution is structurally
linear, and deterministic half-up thresholding is applied only at the end.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwoTerrain.Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd

namespace DAF.Integration.CurvatureDiffusionTests

open DAF.Geometry
open DAF.Terrain

/-- The undirected graph with its single edge `0 — 1`. -/
def twoTerrain : Terrain (Fin 2) where
  neighbors v := if v = 0 then {1} else {0}
  adjacency_symmetric := by
    intro v w
    fin_cases v <;> fin_cases w <;> simp
  irreflexive := by
    intro v
    fin_cases v <;> simp

/-- No boundary or obstacle is marked in this tiny legality fixture. -/
def twoBoundary : BoundaryState (Fin 2) where
  boundary := ∅
  obstacles := ∅
  boundary_obstacle_disjoint := by simp

/-- A scalar metric whose legal edge has weight `g` and illegal edges zero. -/
def twoCurvatureModel : DiscreteCurvatureModel twoTerrain ℝ where
  semantics := .formanRicci
  semantics_discrete := trivial
  edgeWeight g x y := if y ∈ twoTerrain.neighbors x then g else 0
  edgeWeight_symmetric := by
    intro g x y hxy
    have hyx : twoTerrain.Adjacent y x :=
      (twoTerrain.adjacent_comm).1 hxy
    change y ∈ twoTerrain.neighbors x at hxy
    change x ∈ twoTerrain.neighbors y at hyx
    simp [hxy, hyx]
  illegal_edge_weight_zero := by
    intro g x y hxy
    change y ∉ twoTerrain.neighbors x at hxy
    simp [hxy]
  curvature := fun _ _ _ => 0
  referenceCurvature := fun _ _ => 0
  metricStep := id
  metricDistance := fun g h => |g - h|
  metricDistance_nonnegative := by intros; exact abs_nonneg _

/-- A one-step constant metric trajectory at the fixed reference metric. -/
def twoFlow : BoundedRicciReferenceFlow twoTerrain where
  MetricState := ℝ
  model := twoCurvatureModel
  horizon := 1
  referenceMetric := 1
  metric := fun _ => 1
  metric_step := by intro k; rfl
  epsilon := 1
  maximum := 1
  epsilon_pos := by norm_num
  epsilon_le_maximum := le_rfl
  weight_bounds := by
    intro k x y hxy
    change y ∈ twoTerrain.neighbors x at hxy
    simp [twoCurvatureModel, hxy]
  reference_fixed := rfl
  target_distance_nonincreasing := by intro k; norm_num [twoCurvatureModel]

/-- Exact legal neighbors are exactly the graph neighbors. -/
def twoLegalNeighbors : LegalNeighborSystem twoTerrain twoBoundary where
  admitted := twoTerrain.Adjacent
  legalNeighbors := twoTerrain.neighbors
  mem_legalNeighbors_iff := by intros; rfl
  admitted_adjacent := id
  admitted_symmetric := by
    intro x y hxy
    exact (twoTerrain.adjacent_comm).1 hxy
  obstacle_excluded := by simp [twoBoundary]

/-- Identity signal evolution, used to expose the linear/threshold boundary. -/
def identityDiffusion :
    LegalDiffusionOperator twoFlow twoBoundary twoLegalNeighbors where
  step := fun _ => LinearMap.id
  locality := by intros k u v x hx hneighbors; exact hx
  fixed_boundary := by simp [twoBoundary]
  conservative := True
  constant_stationary := by intros h k c; rfl
  refinementLaw := True
  refinementStatus := .proved trivial
  globalRestrictionLaw := True
  globalRestrictionStatus := .proved trivial

/-- A concrete Boolean reference state and its exact real embedding. -/
def referenceBits : Fin 2 → Bool
  | ⟨0, _⟩ => true
  | ⟨1, _⟩ => false

def referenceSignal : Fin 2 → ℝ :=
  fun v => DAF.Terrain.boolToReal (referenceBits v)

/-- The selected model is certified discrete, not smooth-manifold curvature. -/
example : twoFlow.model.semantics ≠ CurvatureSemantics.smoothManifold :=
  twoFlow.semantics_ne_smoothManifold

/-- The unique legal edge remains strictly positive along the bounded flow. -/
example :
    0 < twoFlow.model.edgeWeight
      (twoFlow.metric (0 : Fin 2)) (0 : Fin 2) (1 : Fin 2) := by
  apply twoFlow.edgeWeight_pos
  simp [twoTerrain, Terrain.Adjacent]

/-- The declared distance to the reference does not increase. -/
example :
    twoFlow.model.metricDistance
        (twoFlow.metric (1 : Fin 2)) twoFlow.referenceMetric ≤
      twoFlow.model.metricDistance
        (twoFlow.metric (0 : Fin 2)) twoFlow.referenceMetric :=
  twoFlow.distance_to_reference_nonincreasing (0 : Fin 1)

/-- The finite legal Laplacian annihilates constants. -/
example :
    legalLaplacian twoLegalNeighbors
        (twoFlow.model.edgeWeight (twoFlow.metric (0 : Fin 2)))
        (fun _ => (3 : ℝ)) = 0 :=
  legalLaplacian.constant _ _ _

/-- The complete pre-threshold map retains exact linearity. -/
example (u v : Fin 2 → ℝ) :
    identityDiffusion.horizonMap (u + v) =
      identityDiffusion.horizonMap u + identityDiffusion.horizonMap v :=
  identityDiffusion.horizonMap_add u v

/-- Thresholding is visibly a terminal operation after the linear horizon. -/
example :
    identityDiffusion.thresholdResult referenceSignal 0 = referenceBits := by
  unfold LegalDiffusionOperator.thresholdResult
    LegalDiffusionOperator.absoluteResult
  rw [identityDiffusion.horizonMap.map_zero]
  rw [add_zero]
  unfold referenceSignal
  exact thresholdState_boolToReal referenceBits

end DAF.Integration.CurvatureDiffusionTests
```
