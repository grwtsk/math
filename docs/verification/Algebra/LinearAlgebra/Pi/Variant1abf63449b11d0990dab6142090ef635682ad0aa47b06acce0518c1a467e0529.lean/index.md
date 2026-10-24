# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9780081941921e925e9b40a9714189863b2fda11",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9780081941921e925e9b40a9714189863b2fda11`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piQuotientLift](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/declarations/piquotientlift--a9e1b481b4a0688dfeb1c3f8.md) | 34 | `declaration-track:a9e1b481b4a0688dfeb1c3f82c12f80a442b601b93829671870db432d100feea` |
| 2 | `theorem` | [piQuotientLift_mk](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/declarations/piquotientlift-mk--12e696ec5b0e2330c865eff2.md) | 39 | `result-track:12e696ec5b0e2330c865eff2e01f51532616c4a554661cdc386decc97e24b4b5` |
| 3 | `theorem` | [piQuotientLift_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/declarations/piquotientlift-single--a989df388796f5d7daf06d8a.md) | 46 | `result-track:a989df388796f5d7daf06d8a3d66c6c3c9aaf02d1dd75f20b7f0166d6fe9cf64` |
| 4 | `def` | [quotientPiLift](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/declarations/quotientpilift--326b9d094dcc67cfd65ea265.md) | 59 | `declaration-track:326b9d094dcc67cfd65ea265032afcf16e1acc0a269defe6a2ca7113eedd40a9` |
| 5 | `theorem` | [quotientPiLift_mk](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/declarations/quotientpilift-mk--62c345cfdbe63960166b08b2.md) | 67 | `result-track:62c345cfdbe63960166b08b2c178f7aa76918945c7cb33da614f880a5808da15` |
| 6 | `def` | [toFun](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/declarations/tofun--90d290b7073d238b61204777.md) | 77 | `declaration-track:90d290b7073d238b61204777b418997353e4c84a8adcaf3f6cdfe4534fbf3e0a` |
| 7 | `theorem` | [map_add](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/declarations/map-add--6127d03aa4920464eacde33e.md) | 80 | `result-track:6127d03aa4920464eacde33e48eee16b1a8732f3b1254d34d8352214b46fae2e` |
| 8 | `theorem` | [map_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/declarations/map-smul--e8f8ca656de8fc2d967beb2b.md) | 84 | `result-track:e8f8ca656de8fc2d967beb2b9543ef3420530c40f8ae3c560b26cb1d1f968860` |
| 9 | `def` | [invFun](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/declarations/invfun--8920034aab4e00c8fcfe89dd.md) | 91 | `declaration-track:8920034aab4e00c8fcfe89dd2ca7da22b792e0eeface95b2e74d41ac87d98c65` |
| 10 | `theorem` | [left_inv](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/declarations/left-inv--f1d5c7c68e24ca9f75a2627e.md) | 94 | `result-track:f1d5c7c68e24ca9f75a2627ea46f224b89e2c171e5c58931f205936120f758d3` |
| 11 | `theorem` | [right_inv](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/declarations/right-inv--778a3ff347fe494254b69a79.md) | 100 | `result-track:778a3ff347fe494254b69a79179ab555f0cdd289a739dddda7adfc60c1d0f908` |
| 12 | `def` | [quotientPi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant1abf63449b11d0990dab6142090ef635682ad0aa47b06acce0518c1a467e0529.lean/declarations/quotientpi--ac2d1dc47d424ef4856b03c1.md) | 117 | `declaration-track:ac2d1dc47d424ef4856b03c1fcdce00a557ad76015349625aa52749545672600` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
