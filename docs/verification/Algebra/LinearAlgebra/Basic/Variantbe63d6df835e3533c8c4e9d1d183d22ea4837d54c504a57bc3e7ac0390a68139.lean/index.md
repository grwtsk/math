# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2bdf8cb1fbfa62e0450913859481d15a1746f63",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2bdf8cb1fbfa62e0450913859481d15a1746f63`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FinsuppVectorSpace` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProductBasis` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module.Free](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/module-free--3135138b650aac0d5176897c.md) | 41 | `declaration-track:3135138b650aac0d5176897c6e1123f51c74f311c7fa7e8766e8c8804d043e2f` |
| 2 | `theorem` | [Module.free_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/module-free-def--da2425645cd2cad49592901c.md) | 50 | `result-track:da2425645cd2cad49592901c8d78005341cfe7bf85a417f59d3a407f67912d8c` |
| 3 | `theorem` | [Module.free_iff_set](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/module-free-iff-set--8707395ffb5cf368bbb33540.md) | 61 | `result-track:8707395ffb5cf368bbb33540b03337583ae15c4c6ea2cbdbee767ace89537425` |
| 4 | `theorem` | [Module.Free.of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/module-free-of-basis--9f101b0e6cc07cbf9abb8137.md) | 68 | `result-track:9f101b0e6cc07cbf9abb8137187863ba2eeaf9b00b80e84a691f1f5fa4e4aaac` |
| 5 | `def` | [ChooseBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/choosebasisindex--1ce541d3bab5bfeb84ae5775.md) | 84 | `declaration-track:1ce541d3bab5bfeb84ae5775bcc6e5ed48081665f3a6cfb71ed188f9c4083f18` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/instance--2d8d5265a23958dca737a635.md) | 90 | `declaration-track:2d8d5265a23958dca737a635c5c6112a9cc694035b4574dd8041cbc634165f0b` |
| 7 | `def` | [chooseBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/choosebasis--249a5818b98b03aee7f06801.md) | 94 | `declaration-track:249a5818b98b03aee7f068012f198685e378cec2e3643ccb01b09e1f792c1e18` |
| 8 | `def` | [repr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/repr--927f533863efaf4c6093173e.md) | 99 | `declaration-track:927f533863efaf4c6093173e9d5dd58fd1696bda4ad066a925fc31d3b1340a6f` |
| 9 | `def` | [constr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/constr--47f719e6fa3a0f48e35ebb67.md) | 111 | `declaration-track:47f719e6fa3a0f48e35ebb670242ff8099815a0218f83cda17585eea66411520` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/instance--233d1b6eb84faf2a9ade487d.md) | 116 | `declaration-track:233d1b6eb84faf2a9ade487d7ff5b4c695225e7cece3cef2a1c1dc83bb13a76f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/instance--becf6cbb357b0592277316ca.md) | 121 | `declaration-track:becf6cbb357b0592277316cad47b45ce22a069a368d7a7ced8f2f5e5755bb7ad` |
| 12 | `theorem` | [of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/of-equiv--003716c660f1e1e842044583.md) | 126 | `result-track:003716c660f1e1e842044583f0d9e5f79c59462cfb25b9e9651f3dd998742c4b` |
| 13 | `theorem` | [of_equiv'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/of-equiv--4dc4dc2b0b6ffd65a62f19d5.md) | 132 | `result-track:4dc4dc2b0b6ffd65a62f19d5b444f1549efd3a5642c1e634f5825e0b718fce0a` |
| 14 | `instance` | [self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/self--ffd29330f6ed89cea00c0f0a.md) | 140 | `declaration-track:ffd29330f6ed89cea00c0f0a325f0276ffcff55be9d63d4f05fad0f438685b10` |
| 15 | `instance` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/prod--06948f23ac20524ef95e16e9.md) | 144 | `declaration-track:06948f23ac20524ef95e16e955dec3ea2587c372ba264340617c37e607d1e93c` |
| 16 | `instance` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/pi--a7ffa0fa67fd6c752f0c757d.md) | 149 | `declaration-track:a7ffa0fa67fd6c752f0c757d40528c4d12a122512ff30bdb3828215b7f0d721a` |
| 17 | `instance` | [matrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/matrix--f4f23a88cebce80508c1c6ae.md) | 156 | `declaration-track:f4f23a88cebce80508c1c6ae6ca947be288b985e89f1e0cdf8cfd38efd9770c1` |
| 18 | `instance` | [function](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/function--e31191e8d5c645faf5a098de.md) | 164 | `declaration-track:e31191e8d5c645faf5a098de6c3e7f7046c047e5802d517e80c6fb7bc591f1c4` |
| 19 | `instance` | [finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/finsupp--4951893d73b5fbb4fa160f3e.md) | 168 | `declaration-track:4951893d73b5fbb4fa160f3ea4fc83ea55572f3f2607d885cc15560c550de09d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/instance--76b742f95ad213b8a096b346.md) | 174 | `declaration-track:76b742f95ad213b8a096b34606188eba1f5f0ef84ae3f2160fdcb6289791b35b` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/instance--da3d693a9e4ba3240b947b6d.md) | 178 | `declaration-track:da3d693a9e4ba3240b947b6d964943e00279c3fa00de97fe4caffe3c42fe0bde` |
| 22 | `instance` | [dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/dfinsupp--8514285e083dbd5f883bee6d.md) | 183 | `declaration-track:8514285e083dbd5f883bee6dc566cd1cce077b9250823e8bf3544354541dd1f5` |
| 23 | `instance` | [directSum](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/directsum--5cf34560c426e7b9add08b24.md) | 188 | `declaration-track:5cf34560c426e7b9add08b24540fda1d0da3f2b075b25d37f6c8d669d42892bf` |
| 24 | `instance` | [tensor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbe63d6df835e3533c8c4e9d1d183d22ea4837d54c504a57bc3e7ac0390a68139.lean/declarations/tensor--0965c2e26154793f9c6a6a88.md) | 201 | `declaration-track:0965c2e26154793f9c6a6a88303901fbc6038e53fbc5e118e878167972d558c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
