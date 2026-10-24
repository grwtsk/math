# Verification target: GRWTSK.Algebra.LinearAlgebra.HermitianFunctionalCalculus.Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a78128c2e3da44c1e6ce28a0128351d32533c1cc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a78128c2e3da44c1e6ce28a0128351d32533c1cc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean.json)

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
| 1 | `def` | [cfcAux](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/declarations/cfcaux--bc62e8d1ca011ab066dfdf92.md) | 58 | `declaration-track:bc62e8d1ca011ab066dfdf9247dae1f60d37deb7760cf25c029855870efcaa67` |
| 2 | `lemma` | [isClosedEmbedding_cfcAux](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/declarations/isclosedembedding-cfcaux--415eccdd9f7907c8cc1eca19.md) | 79 | `result-track:415eccdd9f7907c8cc1eca19e35f3a9061ddb69edebb0c8d00c30359ceb415ff` |
| 3 | `lemma` | [cfcAux_id](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/declarations/cfcaux-id--c78d467c49dd6614d1331c0c.md) | 99 | `result-track:c78d467c49dd6614d1331c0cd2427d98f49b48ac798e50b4caebc941660ece86` |
| 4 | `instance` | [instContinuousFunctionalCalculus](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/declarations/instcontinuousfunctionalcalculus--483f86640c8e41c0246f39f5.md) | 105 | `declaration-track:483f86640c8e41c0246f39f599ac2c2f513c64807757593832e7ef2fe332d42b` |
| 5 | `def` | [cfc](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/declarations/cfc--9eea14c604c9ac59484863c7.md) | 140 | `declaration-track:9eea14c604c9ac59484863c7df69966f804427bc4054ef48fdf1260ac846029b` |
| 6 | `lemma` | [cfcHom_eq_cfcAux](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/declarations/cfchom-eq-cfcaux--d574b5bd0330dc824282c7f4.md) | 143 | `result-track:d574b5bd0330dc824282c7f42dd10639aafa6144cdabea6031b710a1ad1abb30` |
| 7 | `instance` | [instContinuousFunctionalCalculusIsClosedEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/declarations/instcontinuousfunctionalcalculusisclosedembedding--868fb3347b77462ffdf619ab.md) | 147 | `declaration-track:868fb3347b77462ffdf619ab671a9fc38602a54550d7ef65fcf67a7408590fe6` |
| 8 | `lemma` | [cfc_eq](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/declarations/cfc-eq--ade0df553505edd0c26ba98b.md) | 151 | `result-track:ade0df553505edd0c26ba98ba806060346e126cb8c06921c36c8d3a518734aed` |
| 9 | `lemma` | [charpoly_cfc_eq](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/declarations/charpoly-cfc-eq--2ac8b5b35b552976faaf6c5f.md) | 160 | `result-track:2ac8b5b35b552976faaf6c5fe6ce4056b71352d2943a9b697ed0e0a646810471` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
