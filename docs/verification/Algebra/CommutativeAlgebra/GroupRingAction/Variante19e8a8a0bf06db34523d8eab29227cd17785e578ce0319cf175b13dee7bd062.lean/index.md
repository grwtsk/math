# Verification target: GRWTSK.Algebra.CommutativeAlgebra.GroupRingAction.Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c329555af443b11bc9e17a7853a3aab1c98631bd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c329555af443b11bc9e17a7853a3aab1c98631bd`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Monic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_eq_map](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/smul-eq-map--4cfc4d92b71d0e0a208fa6e1.md) | 38 | `result-track:4cfc4d92b71d0e0a208fa6e1f52718eb2a7b651d96596fd197497848229ea136` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/instance--1997a98d43067fbede3e69ae.md) | 48 | `declaration-track:1997a98d43067fbede3e69aef9647bf661617eb1db53caeed197d5caea7d85e5` |
| 3 | `theorem` | [smul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/smul-x--3634f984467144cd0f9c4149.md) | 59 | `result-track:3634f984467144cd0f9c414993294f659f74fc1fd01b59692413d0fcd9c63bf9` |
| 4 | `theorem` | [smul_eval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/smul-eval-smul--9753d7502d33a036434397b0.md) | 64 | `result-track:9753d7502d33a036434397b03078a628dc758962d94ad6b5c2ab802755b21c4f` |
| 5 | `theorem` | [eval_smul'](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/eval-smul--8e87b9bf82e09f27ceaa9efc.md) | 72 | `result-track:8e87b9bf82e09f27ceaa9efc5aaaf132b91e69bcdc6264898125337f56434696` |
| 6 | `theorem` | [smul_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/smul-eval--cbbbe6b10c0bcf2502bb4ed7.md) | 76 | `result-track:cbbbe6b10c0bcf2502bb4ed7b85fb4155562b1f455f4e36d426a8ed22fcb101b` |
| 7 | `def` | [prodXSubSMul](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/prodxsubsmul--f2f9cced8658074666a593e1.md) | 90 | `declaration-track:f2f9cced8658074666a593e14665f8f0cfceeade4b277935d31dd0fe2d74f5a3` |
| 8 | `theorem` | [prodXSubSMul.monic](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/prodxsubsmul-monic--0583de30ad4d986a9d8bab50.md) | 95 | `result-track:0583de30ad4d986a9d8bab50f538be02a42eb3794aaa6a4a679f7c756280a634` |
| 9 | `theorem` | [prodXSubSMul.eval](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/prodxsubsmul-eval--38f44609978886af32f0dcdf.md) | 98 | `result-track:38f44609978886af32f0dcdf5ef3de7b904cfe3f49e654ae2d5ecff53b318391` |
| 10 | `theorem` | [prodXSubSMul.smul](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/prodxsubsmul-smul--517017b0e707645bef83194e.md) | 103 | `result-track:517017b0e707645bef83194ebfdad3209cf6c67cfcd27ecddf899c62bdb64e98` |
| 11 | `theorem` | [prodXSubSMul.coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/prodxsubsmul-coeff--c427eaa64b47ba45dd750e7e.md) | 109 | `result-track:c427eaa64b47ba45dd750e7e4493c9e453754c305426ead20e7ed4211236fef5` |
| 12 | `def` | [polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/polynomial--588554a97dd8f6d63a8d2e17.md) | 124 | `declaration-track:588554a97dd8f6d63a8d2e17de95b3f6863a52d6c8e3ee0e75cec56369f0e884` |
| 13 | `theorem` | [coe_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variante19e8a8a0bf06db34523d8eab29227cd17785e578ce0319cf175b13dee7bd062.lean/declarations/coe-polynomial--798e5568e997f18b07c9fadd.md) | 142 | `result-track:798e5568e997f18b07c9fadd18dfdd69667ffea41c85367a7c91e863eef7f584` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
