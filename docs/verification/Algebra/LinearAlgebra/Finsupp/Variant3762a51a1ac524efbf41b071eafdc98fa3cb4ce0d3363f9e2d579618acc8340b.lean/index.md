# Verification target: GRWTSK.Algebra.LinearAlgebra.Finsupp.Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f5c74b1dd6c56d2143076abd6fb0ce93ba8789e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f5c74b1dd6c56d2143076abd6fb0ce93ba8789e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean.json)

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
| 1 | `def` | [finsuppLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/finsupplinearmap--9324d3ea1991022bdd5ad98e.md) | 33 | `declaration-track:9324d3ea1991022bdd5ad98e06c036c69c2cae8339f32a9ff2f57d518f698e63` |
| 2 | `theorem` | [finsuppLinearMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/finsupplinearmap-injective--35b8b8827e0e0b87cb38d070.md) | 42 | `result-track:35b8b8827e0e0b87cb38d070e5d910bc0f8d549fe5fe202f68e85d403bc1411a` |
| 3 | `theorem` | [finsuppLinearMap_bijective_of_moduleFinite](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/finsupplinearmap-bijective-of-modulefinite--87a7b18d79b262b9d46eab0d.md) | 46 | `result-track:87a7b18d79b262b9d46eab0d9a79c95d1257861a6c5d1c0e47522667ce714096` |
| 4 | `theorem` | [finsuppLinearMap_bijective_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/finsupplinearmap-bijective-of-finite--273bec1a293b4c1845364367.md) | 54 | `result-track:273bec1a293b4c1845364367ef49ef27cbbda040ca602b6b15c5a4dd0f4dc640` |
| 5 | `theorem` | [fg_of_fg_map_of_fg_inf_ker](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/fg-of-fg-map-of-fg-inf-ker--aa0316a7c835397114b96074.md) | 70 | `result-track:aa0316a7c835397114b960740593a7a1b991c423f54de5e8104040846b2fc859` |
| 6 | `theorem` | [fg_ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/fg-ker-comp--057490926b17c80768729134.md) | 144 | `result-track:057490926b17c8076872913431116b24ccdc392983da7f3e4e4a4ecb6e933183` |
| 7 | `lemma` | [_root_.Module.Finite.of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/root-module-finite-of-exact--3019008e565f2e83999f2df2.md) | 157 | `result-track:3019008e565f2e83999f2df25697c68b35759aae5617ac851f083412b3b67e37` |
| 8 | `theorem` | [_root_.Module.Finite.of_submodule_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/root-module-finite-of-submodule-quotient--23939cbc25f2271b44d75617.md) | 166 | `result-track:23939cbc25f2271b44d756172ae312c252a4c9a061ec560168bc1af5543ce117` |
| 9 | `instance` | [Module.Finite.finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/module-finite-finsupp--47d5c178ee4e905f150c4f49.md) | 176 | `declaration-track:47d5c178ee4e905f150c4f491a7ce04e37bb88b1e6a3d476bbfcfcff23c3cbad` |
| 10 | `instance` | [moduleFinite](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/modulefinite--f8b6e22accabf7822b470ae9.md) | 185 | `declaration-track:f8b6e22accabf7822b470ae955339a6b0c2cb8a406b30dbc8d8c380f75fb9318` |
| 11 | `instance` | [moduleFinite](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/modulefinite--16c20d92e05afd5b36ce5944.md) | 192 | `declaration-track:16c20d92e05afd5b36ce5944c7fd71595930d7c7ec90cdb13ea533273989b462` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/instance--b1c6157464f913fc8fc6c674.md) | 199 | `declaration-track:b1c6157464f913fc8fc6c6741f2f3e474139429077ffb878cead74efe9abef94` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/declarations/instance--a333ab67d4d21a88e8dec713.md) | 202 | `declaration-track:a333ab67d4d21a88e8dec7132b5908b8ddbdef7cd439ceb57e45d19ced681513` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
