# Verification target: GRWTSK.Algebra.LinearAlgebra.Curry.Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "817bbcb28fe81a286a46603b25804603eaaccd0e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `817bbcb28fe81a286a46603b25804603eaaccd0e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Alternating.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Curry` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean/declarations/curryleft--77439c6449b3eb9050681368.md) | 30 | `declaration-track:77439c6449b3eb9050681368d70102da0b436d63ef45fea1ca7f8107d6492346` |
| 2 | `theorem` | [curryLeft_zero](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean/declarations/curryleft-zero--7d1c98a1e70273e309344c5f.md) | 42 | `result-track:7d1c98a1e70273e309344c5f077347b9a13c26af7bdb0abb54d0b31de6226b1c` |
| 3 | `theorem` | [curryLeft_add](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean/declarations/curryleft-add--fde55b14f79de91afffe9fb2.md) | 46 | `result-track:fde55b14f79de91afffe9fb2ed120b5c6f0e70cc2bb38960a81c48dc497c8ecf` |
| 4 | `theorem` | [curryLeft_smul](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean/declarations/curryleft-smul--017fdea39928f0ae219ed0e9.md) | 51 | `result-track:017fdea39928f0ae219ed0e9c659cb143d642aae26745060128fe8de88850905` |
| 5 | `def` | [curryLeftLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean/declarations/curryleftlinearmap--b73fb59e88b0c63179e6ecb3.md) | 58 | `declaration-track:b73fb59e88b0c63179e6ecb36771b5bbb6da677d4371fde59c2d79a2e45ec8cd` |
| 6 | `theorem` | [curryLeft_same](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean/declarations/curryleft-same--9018d2ee1bae6b1807ef48ce.md) | 66 | `result-track:9018d2ee1bae6b1807ef48cef74936043790bf6e713052c76c156cbb4450f081` |
| 7 | `theorem` | [curryLeft_compAlternatingMap](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean/declarations/curryleft-compalternatingmap--7f4256687011ca8919be3a25.md) | 71 | `result-track:7f4256687011ca8919be3a256548b0b5376fee8514d15481c80793cf8f009c0a` |
| 8 | `theorem` | [curryLeft_compLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant587028d1501902b1a0e7d66a0d7b03ef456168c49a763f2ce04aaae2ce6b6768.lean/declarations/curryleft-complinearmap--5e40ee3720a15ffd1208b68d.md) | 77 | `result-track:5e40ee3720a15ffd1208b68dc83c80e10470914911ce8c13f97554691eb05f47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
