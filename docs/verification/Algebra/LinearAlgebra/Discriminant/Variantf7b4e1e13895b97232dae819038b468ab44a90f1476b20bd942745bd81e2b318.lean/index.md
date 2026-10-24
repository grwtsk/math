# Verification target: GRWTSK.Algebra.LinearAlgebra.Discriminant.Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a028d09f4b60d9fbd7f1b65b2e295176e72920bc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a028d09f4b60d9fbd7f1b65b2e295176e72920bc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.LocallyFinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discr](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr--1d290d07d49c3db5b8634611.md) | 66 | `declaration-track:1d290d07d49c3db5b863461169714070f7bc4400bcc22e0c85998cfd17c260ee` |
| 2 | `theorem` | [discr_def](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-def--bb826ed075d30410f135fe8b.md) | 69 | `result-track:bb826ed075d30410f135fe8b56a3072f1fcea37e6777fa4b0319019a57327902` |
| 3 | `theorem` | [discr_eq_discr_of_algEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-eq-discr-of-algequiv--f7bb9bfe0d32ea07dba70e4d.md) | 73 | `result-track:f7bb9bfe0d32ea07dba70e4d24593558c6defe8fabaf3af4c4473f0e8834edfe` |
| 4 | `theorem` | [discr_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-reindex--4f0cbd6c893f99436461cef7.md) | 83 | `result-track:4f0cbd6c893f99436461cef7d7a3ef205d8bfcc3051829e0e53585c2d465dfca` |
| 5 | `theorem` | [discr_zero_of_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-zero-of-not-linearindependent--72505372866c46695854ff93.md) | 87 | `result-track:72505372866c46695854ff937f19b41e35f78acbf9d79ec8959947dbde0974b0` |
| 6 | `theorem` | [discr_of_matrix_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-of-matrix-vecmul--8f77e5118a1e98143036e94d.md) | 106 | `result-track:8f77e5118a1e98143036e94d4219304bfc90eb2e3b21a421d6b9a11864182df1` |
| 7 | `theorem` | [discr_of_matrix_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-of-matrix-mulvec--519478e20aefd9ab4dc981bf.md) | 113 | `result-track:519478e20aefd9ab4dc981bf97c603288639031441c5440a0cf19730a19f8bcc` |
| 8 | `theorem` | [discr_not_zero_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-not-zero-of-basis--f489a3c5fed8daa975038e3b.md) | 127 | `result-track:f489a3c5fed8daa975038e3b203ebf60dc2b9b2ecadd752f0bd6a5d98acf1a29` |
| 9 | `theorem` | [discr_isUnit_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-isunit-of-basis--4bee8e19d9abe332744ac6d6.md) | 134 | `result-track:4bee8e19d9abe332744ac6d6257a12c1dd12b75e536ee977c21c78308bed8fc7` |
| 10 | `theorem` | [discr_eq_det_embeddingsMatrixReindex_pow_two](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-eq-det-embeddingsmatrixreindex-pow-two--ca7903b08117fc2cab93e615.md) | 143 | `result-track:ca7903b08117fc2cab93e615d58a832a85a2ecaf7e0ab0d4529f8354ec0101f2` |
| 11 | `theorem` | [discr_powerBasis_eq_prod](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-powerbasis-eq-prod--b436fb3049f1cbe732eeb72a.md) | 150 | `result-track:b436fb3049f1cbe732eeb72a54c18b5808b479ea9d8957b77105a7c59b8fa830` |
| 12 | `theorem` | [discr_powerBasis_eq_prod'](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-powerbasis-eq-prod--734c7b7df3f602b1f1566d94.md) | 159 | `result-track:734c7b7df3f602b1f1566d94e479b1be6e14575ed75f3a9d026b005eb266fc52` |
| 13 | `theorem` | [discr_powerBasis_eq_prod''](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-powerbasis-eq-prod--72512c85b60ea1cc876632d2.md) | 169 | `result-track:72512c85b60ea1cc876632d29af65bd0513fc431294f4f998f6915d92d6ae6fe` |
| 14 | `theorem` | [discr_powerBasis_eq_norm](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-powerbasis-eq-norm--6997e4605193381b6e2164b4.md) | 201 | `result-track:6997e4605193381b6e2164b46c040b64839009638d779323e7b6f868758558b1` |
| 15 | `theorem` | [discr_isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-isintegral--9b5cdfa1703aff73914c4621.md) | 252 | `result-track:9b5cdfa1703aff73914c46214edd44a2e927c393a5076f69276b3491d5460372` |
| 16 | `theorem` | [discr_mul_isIntegral_mem_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-mul-isintegral-mem-adjoin--1296909161765a649ae13daf.md) | 261 | `result-track:1296909161765a649ae13daf25ad892265fb81a4af93f3f878da4604c1944839` |
| 17 | `theorem` | [discr_eq_discr](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/declarations/discr-eq-discr--e241e13f5f930a2c81ed65dc.md) | 304 | `result-track:e241e13f5f930a2c81ed65dcf505a2ed17661e4f7d461b0bc625d2e5613249bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
