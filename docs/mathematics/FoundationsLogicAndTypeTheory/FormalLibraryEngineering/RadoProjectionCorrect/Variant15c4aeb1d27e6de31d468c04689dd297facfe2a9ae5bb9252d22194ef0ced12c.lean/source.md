# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RadoProjectionCorrect.Variant15c4aeb1d27e6de31d468c04689dd297facfe2a9ae5bb9252d22194ef0ced12c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e86ff6e18643cc18d51a6555bdc3e31ecfbaae0` · SHA-256 `15c4aeb1d27e6de31d468c04689dd297facfe2a9ae5bb9252d22194ef0ced12c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Pipeline.Center.RadoProjectedHeatflow

set_option autoImplicit false

namespace Think.Validation.RadoProjectionCorrect

theorem projection_rules_cover_canonical_fibers :
    Think.RadoProjectedModularHeatflow.projectionRules.length = 12 :=
  Think.RadoProjectedModularHeatflow.projectionRules_count

theorem projected_core_is_center :
    Think.Pipeline.Center.RadoProjectedHeatflow.canonicalizationPass.projectedCore =
      "formal/Think/Pipeline/Center" :=
  Think.Pipeline.Center.RadoProjectedHeatflow.projectedCore_is_center

theorem rado_projected_pass_has_residue :
    Think.Pipeline.Center.RadoProjectedHeatflow.finalWitness.hasResidue = true :=
  Think.Pipeline.Center.RadoProjectedHeatflow.finalWitness_hasResidue

end Think.Validation.RadoProjectionCorrect
```
