# Verification target: GRWTSK.Algebra.CommutativeAlgebra.RuleOfSigns.Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd5eb56e5b08d69344886f293b8780cd7182fcc9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd5eb56e5b08d69344886f293b8780cd7182fcc9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean.json)

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
| 1 | `def` | [signVariations](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/signvariations--a8475dd475c296233375fae7.md) | 58 | `declaration-track:a8475dd475c296233375fae7d98c8787f178bc526a6e341fd617d96c6e74a889` |
| 2 | `theorem` | [signVariations_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/signvariations-zero--096801cae6a1b6e4c7fb9baf.md) | 62 | `result-track:096801cae6a1b6e4c7fb9baf5065120878b79e8fd4d63338332ee52b48e3a582` |
| 3 | `theorem` | [signVariations_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/signvariations-monomial--2e567dfc44c6c5a97e2f58d9.md) | 67 | `result-track:2e567dfc44c6c5a97e2f58d95347eff4737e5d022ae0b508e47ad996d7052922` |
| 4 | `theorem` | [signVariations_eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/signvariations-eraselead--91ce3cdda423335d13bfbc7b.md) | 73 | `result-track:91ce3cdda423335d13bfbc7b1e43c039a1a8bb6d690529ed98fb2a3f5b1f785e` |
| 5 | `theorem` | [signVariations_eq_eraseLead_add_ite](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/signvariations-eq-eraselead-add-ite--c01f84267af4e7237273af72.md) | 84 | `result-track:c01f84267af4e7237273af72b5327133365fdf0757dd954330a08f0e3ab2365d` |
| 6 | `theorem` | [signVariations_eraseLead_le](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/signvariations-eraselead-le--2af18fafd18015be946533d7.md) | 101 | `result-track:2af18fafd18015be946533d7e8187fa026c66b57395b83065ab7d17da0bbcdda` |
| 7 | `theorem` | [signVariations_le_eraseLead_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/signvariations-le-eraselead-succ--381715836f21585e501011cf.md) | 107 | `result-track:381715836f21585e501011cff5dab7115376c2bd9062c7c8ea84071714273f51` |
| 8 | `theorem` | [signVariations_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/signvariations-neg--3825ef748d29b3e889e61b1d.md) | 120 | `result-track:3825ef748d29b3e889e61b1d929575b24ebe2c2185bebc07e95526be0b9026b3` |
| 9 | `theorem` | [signVariations_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/signvariations-c-mul--0ba7bab8d41b683efc5a203e.md) | 132 | `result-track:0ba7bab8d41b683efc5a203e4c8ee5dc83290187e24602a633d9c7fab19cba97` |
| 10 | `lemma` | [signVariations_eraseLead_mul_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/signvariations-eraselead-mul-x-sub-c--75cc9b24d238c348ba931a28.md) | 144 | `result-track:75cc9b24d238c348ba931a281a6c6981a59d2b1a4528ba36a33565819e0dcaa9` |
| 11 | `lemma` | [succ_signVariations_X_sub_C_mul_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/succ-signvariations-x-sub-c-mul-monomial--b79b7b7bb4ac04da1418aada.md) | 186 | `result-track:b79b7b7bb4ac04da1418aadac1bd49778791964ee6a3bd9123c13153a5936f05` |
| 12 | `lemma` | [exists_cons_of_leadingCoeff_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/exists-cons-of-leadingcoeff-pos--aa5549fed1e7a8c99dfbcbd6.md) | 201 | `result-track:aa5549fed1e7a8c99dfbcbd68a927066d83e4d6de57d69518c2473b94db31e20` |
| 13 | `lemma` | [signVariations_X_sub_C_mul_eraseLead_le](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/signvariations-x-sub-c-mul-eraselead-le--a4b4d79ad83d6521b684e74c.md) | 254 | `result-track:a4b4d79ad83d6521b684e74c4c0d3d9fc1288bee989df7168de5150517d9e4a5` |
| 14 | `theorem` | [succ_signVariations_le_X_sub_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/succ-signvariations-le-x-sub-c-mul--21676376d5ad34acd8d54f8c.md) | 273 | `result-track:21676376d5ad34acd8d54f8c355dce51ad656872e8d114be2999d8a4a2fc1b09` |
| 15 | `theorem` | [roots_countP_pos_le_signVariations](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/declarations/roots-countp-pos-le-signvariations--a911c7581117859ca5ce2b94.md) | 354 | `result-track:a911c7581117859ca5ce2b94edc91a352d72b08cc69847451558a11995fc4902` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
