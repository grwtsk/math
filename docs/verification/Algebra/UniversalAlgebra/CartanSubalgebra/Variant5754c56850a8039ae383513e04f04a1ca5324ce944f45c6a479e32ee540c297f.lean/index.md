# Verification target: GRWTSK.Algebra.UniversalAlgebra.CartanSubalgebra.Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "234bcfa6a066cadbe9203ab1ee1638da2908aa8f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `234bcfa6a066cadbe9203ab1ee1638da2908aa8f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Nilpotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Normalizer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LieSubmodule.IsUcsLimit](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean/declarations/liesubmodule-isucslimit--ff7772107bfbc059386e26e8.md) | 37 | `declaration-track:ff7772107bfbc059386e26e85811f360cff5bb9c71c0b1a69039caee17fca700` |
| 2 | `class` | [IsCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean/declarations/iscartansubalgebra--305ef6b8fd94660694598599.md) | 46 | `declaration-track:305ef6b8fd9466069459859907ff08efde41d6b5e964377e014b095c5e8dc900` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean/declarations/instance--a1b1ce3cb412f453feb7b979.md) | 50 | `declaration-track:a1b1ce3cb412f453feb7b9793344ca2b6fa31b841bb832bb4c308cc1ca3232f6` |
| 4 | `theorem` | [normalizer_eq_self_of_isCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean/declarations/normalizer-eq-self-of-iscartansubalgebra--a509c2b035fe944a6be7ca8e.md) | 54 | `result-track:a509c2b035fe944a6be7ca8ebd9477b383e9bd2d938a6767c1065c07330ec543` |
| 5 | `theorem` | [ucs_eq_self_of_isCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean/declarations/ucs-eq-self-of-iscartansubalgebra--c7a734aef52c1bc542d3d718.md) | 60 | `result-track:c7a734aef52c1bc542d3d71800df6c67b0768edc8402a661b740368ca32a9041` |
| 6 | `theorem` | [isCartanSubalgebra_iff_isUcsLimit](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean/declarations/iscartansubalgebra-iff-isucslimit--8f1df0f842de631250a3a3b8.md) | 66 | `result-track:8f1df0f842de631250a3a3b8b87c5d6ed99167c7e35878005b5db2f9410fb89e` |
| 7 | `lemma` | [ne_bot_of_isCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean/declarations/ne-bot-of-iscartansubalgebra--acf044258c8791de9986ab35.md) | 93 | `result-track:acf044258c8791de9986ab35ca7a67dbbfe38ca30733870b32e6cc761bd83325` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean/declarations/instance--0c4051639707cd36afa2cb93.md) | 100 | `declaration-track:0c4051639707cd36afa2cb932e184d8e32c6fb61c85ee65112cf5fa68e459d0c` |
| 9 | `theorem` | [LieIdeal.normalizer_eq_top](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean/declarations/lieideal-normalizer-eq-top--a4747738925bb8fc25aecd1b.md) | 110 | `result-track:a4747738925bb8fc25aecd1b93e2a6693c12525994561a9742700f37dd4d375b` |
| 10 | `instance` | [LieAlgebra.top_isCartanSubalgebra_of_nilpotent](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f.lean/declarations/liealgebra-top-iscartansubalgebra-of-nilpotent--e956d1eba217947f4ec958be.md) | 119 | `declaration-track:e956d1eba217947f4ec958be8925c9897c0b8fe552b0ad36ce7cf8cb368c160a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
