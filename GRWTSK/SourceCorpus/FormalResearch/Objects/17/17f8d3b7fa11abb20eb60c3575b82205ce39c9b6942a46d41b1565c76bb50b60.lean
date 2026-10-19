import Mathematics.Mutation.Discharge

/-!
# Stratum-specific problem renderings

Lossless renderers carry their decoder theorem.  Lossy projections are a
different type and must name their loss manifest.
-/

namespace Mathematics.Mutation

structure LosslessRenderProfile (Output : Type) where
  profileId : StableId
  target : Stratum
  render : ProblemIR → Output
  decode : Output → ProblemIR
  roundtrip :
    ∀ problem, decode (render problem) = problem

def renderProblem
    (profile : LosslessRenderProfile Output)
    (problem : ProblemIR) :
    Output :=
  profile.render problem

theorem lossless_render_roundtrip
    (profile : LosslessRenderProfile Output)
    (problem : ProblemIR) :
    profile.decode (renderProblem profile problem) = problem :=
  profile.roundtrip problem

structure LossyProblemProjection (Output : Type) where
  profileId : StableId
  target : Stratum
  render : ProblemIR → Output
  lossManifest : Finset StableId

end Mathematics.Mutation
