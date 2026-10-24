import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section
open GRWTSK.LinearAlgebra.FramedFiberPort

def zeroDifferential : TwoTermHodgeData ℚ ℚ ℚ where
  delta := 0
  deltaStar := LinearMap.id

def zeroCodifferential : TwoTermHodgeData ℚ ℚ ℚ where
  delta := LinearMap.id
  deltaStar := 0

def identityHodge : TwoTermHodgeData ℚ ℚ ℚ where
  delta := LinearMap.id
  deltaStar := LinearMap.id

-- The identity frame satisfies the codifferential law for this pair,
-- but omitting its differential law changes harmonicity.
example :
    (LinearMap.id : ℚ →ₗ[ℚ] ℚ).comp zeroDifferential.deltaStar =
      identityHodge.deltaStar.comp LinearMap.id := rfl
example : zeroDifferential.IsHarmonic0 1 ∧ ¬ identityHodge.IsHarmonic0 1 := by
  constructor <;>
    norm_num [TwoTermHodgeData.IsHarmonic0, TwoTermHodgeData.laplacian0,
      zeroDifferential, identityHodge, LinearMap.comp_apply]

-- The identity frame satisfies the differential law for this pair,
-- but omitting its codifferential law also changes harmonicity.
example :
    (LinearMap.id : ℚ →ₗ[ℚ] ℚ).comp zeroCodifferential.delta =
      identityHodge.delta.comp LinearMap.id := rfl
example : zeroCodifferential.IsHarmonic0 1 ∧ ¬ identityHodge.IsHarmonic0 1 := by
  constructor <;>
    norm_num [TwoTermHodgeData.IsHarmonic0, TwoTermHodgeData.laplacian0,
      zeroCodifferential, identityHodge, LinearMap.comp_apply]
