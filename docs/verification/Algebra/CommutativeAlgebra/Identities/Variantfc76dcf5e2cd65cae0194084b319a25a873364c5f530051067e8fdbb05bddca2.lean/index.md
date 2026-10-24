# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Identities.Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c20309a555ce42c23bbcf300c0694fbbfe373b5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Identities/Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c20309a555ce42c23bbcf300c0694fbbfe373b5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Identities/Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Identities/Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Derivative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powAddExpansion](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2.lean/declarations/powaddexpansion--378b76fac84fa139398e933d.md) | 43 | `declaration-track:378b76fac84fa139398e933d363dc5c75b928c91c9693345327f876874027ea6` |
| 2 | `def` | [polyBinomAux1](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2.lean/declarations/polybinomaux1--91597c6aa6c34381f7d9f22a.md) | 59 | `declaration-track:91597c6aa6c34381f7d9f22ac4bbb70e80e7d56d69dad600b28d674f7e55caa5` |
| 3 | `theorem` | [poly_binom_aux2](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2.lean/declarations/poly-binom-aux2--1f9cea1584bba3d184d553e9.md) | 65 | `result-track:1f9cea1584bba3d184d553e9ecedb164f2cbdb8342aac097fc93b5136faeceb0` |
| 4 | `theorem` | [poly_binom_aux3](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2.lean/declarations/poly-binom-aux3--ee501c93d4ca725ce97c428b.md) | 71 | `result-track:ee501c93d4ca725ce97c428bb8ff4b1e476dc797ff7f3664536208d2c91282a4` |
| 5 | `def` | [binomExpansion](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2.lean/declarations/binomexpansion--56966bdb010b3db72a69f096.md) | 82 | `declaration-track:56966bdb010b3db72a69f0967190fd623f217072d475f02d1fdfb5cab76bec8c` |
| 6 | `def` | [powSubPowFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2.lean/declarations/powsubpowfactor--ddee6b98c28837171f74b516.md) | 94 | `declaration-track:ddee6b98c28837171f74b516c9d262b3eb17cd02604291680160383f24b5881e` |
| 7 | `def` | [evalSubFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variantfc76dcf5e2cd65cae0194084b319a25a873364c5f530051067e8fdbb05bddca2.lean/declarations/evalsubfactor--f94ec95902b522c5bf532a5f.md) | 105 | `declaration-track:f94ec95902b522c5bf532a5fe22d32491a7312241e0de60ea6644b166221a8cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
