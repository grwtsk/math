# Verification target: GRWTSK.Algebra.LinearAlgebra.TransferInstance.Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e238596992b86380f2eac65e56c460979257539f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e238596992b86380f2eac65e56c460979257539f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [noZeroSMulDivisors](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean/declarations/nozerosmuldivisors--6f3637b45b92f01a866578d1.md) | 39 | `result-track:6f3637b45b92f01a866578d10b37158eff584cffed67b250f18035d8eeeefbf3` |
| 2 | `abbrev` | [module](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean/declarations/module--e1a52cd2aea8c2caa14cff39.md) | 58 | `declaration-track:e1a52cd2aea8c2caa14cff39b73835900b176d183fd74fad3fa6ebbfbed326ca` |
| 3 | `def` | [linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean/declarations/linearequiv--0e16916ef6a6245b49608682.md) | 66 | `declaration-track:0e16916ef6a6245b496086824e1d6aa8667c6e3d58fe946d3552cf038b6a5fe9` |
| 4 | `lemma` | [linearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean/declarations/linearequiv-apply--b419d61764e9deca21ba24f6.md) | 77 | `result-track:b419d61764e9deca21ba24f63d792e2a5c6e9b925ea1a46a54eb03eb04f4b2ee` |
| 5 | `lemma` | [linearEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean/declarations/linearequiv-symm-apply--7de413c22728dc98af6dd57f.md) | 80 | `result-track:7de413c22728dc98af6dd57f9c0623bd3a840671ebfc6956e80435d697e42d2b` |
| 6 | `lemma` | [moduleIsTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean/declarations/moduleistorsionfree--fb5e189080894f0eb1a85d7f.md) | 84 | `result-track:fb5e189080894f0eb1a85d7f4cbff50a22869c300c0e2f9054709040259bfcfd` |
| 7 | `lemma` | [LinearEquiv.isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean/declarations/linearequiv-isscalartower--f0450acee19a3655e67b7b18.md) | 104 | `result-track:f0450acee19a3655e67b7b18640c23c5ff22d66f873b10b0bdc12eff4be672cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
