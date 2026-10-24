# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f4272616964547269706c65732e6c65616e.Variant19f9c76b38b47bbf9fdff1e99ca25ab699b05b3bbc270338acdd2380bba6eb42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b63c2856d637cce375cd8ac31789db3fa9b076c8` · SHA-256 `19f9c76b38b47bbf9fdff1e99ca25ab699b05b3bbc270338acdd2380bba6eb42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f42726169645461786f6e6f6d792e6c65616e
import Think.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.M56616c69646174696f6e2f42726169644d6f64756c65436f6e74726163742e6c65616e

/- source-tree-label: STL1|L|addr=11101010|role=proof_code_atom|slug=pipeline-center-braidtriples|owner=canonical_owner|core=Pipeline/Center/BraidTriples.lean|leaf=M506970656c696e652f43656e7465722f4272616964547269706c65732e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Braid.Triples

open Think.Braid.Taxonomy
open Think.Braid.Validation

def commonFacets : List String :=
  ["Contract", "Witness", "Refusal", "Residue"]

def domainFacets : TripleId -> List String
  | .T0 => []
  | .T1 => ["TypeTheory", "ProofTargets", "ProgrammingLanguageSemantics"]
  | .T2 => ["Cover", "Deformation", "OrderedThinkNerve", "OrderedThinkNerveRigor"]
  | .T3 => ["ControlSurface", "SphereAtlas", "Tubes"]
  | .T4 => ["AnalyticBoundary", "MeasureSurface", "StochasticSurface"]
  | .T5 => ["FiniteOperator", "NumericalSurface"]
  | .T6 => ["Signal", "SpectralBridge", "Wave"]
  | .T7 => ["AlgebraicCarrier", "CodingSurface"]
  | .T8 => ["CryptoSurface", "FiniteScheme"]

def facetsFor (tripleId : TripleId) : List String :=
  commonFacets ++ domainFacets tripleId

def moduleName (tripleId : TripleId) (facet : String) : String :=
  tripleId.code ++ "/" ++ facet

def declaredModules : List (TripleId × String) :=
  List.flatMap
    (fun tripleId => (facetsFor tripleId).map (fun facet => (tripleId, facet)))
    TripleId.all

def moduleContractFor (module : TripleId × String) : ModuleContract :=
  defaultModuleContract
    module.fst.code
    (moduleName module.fst module.snd)
    "centralized_braid_catalog"

def declaredModuleContracts : List ModuleContract :=
  declaredModules.map moduleContractFor

theorem commonFacets_count :
    commonFacets.length = 4 := rfl

theorem declaredModules_count :
    declaredModules.length = 58 := rfl

theorem declaredModuleContracts_count :
    declaredModuleContracts.length = 58 := rfl

end Think.Braid.Triples
```
