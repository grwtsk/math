# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Rendering.Variant17f8d3b7fa11abb20eb60c3575b82205ce39c9b6942a46d41b1565c76bb50b60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e32e80243d55f871478746209c0129326b810c24` · SHA-256 `17f8d3b7fa11abb20eb60c3575b82205ce39c9b6942a46d41b1565c76bb50b60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
