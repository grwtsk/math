# Verification target: GRWTSK.Algebra.LinearAlgebra.Triangularizable.Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a68e80c0ea3e7254da0fabdb1baa6b00efbe8f76",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Triangularizable/Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a68e80c0ea3e7254da0fabdb1baa6b00efbe8f76`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Triangularizable/Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Triangularizable/Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768.lean.json)

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
| 1 | `theorem` | [exists_hasEigenvalue_of_genEigenspace_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768.lean/declarations/exists-haseigenvalue-of-geneigenspace-eq-top--3b3ad22f6600d2e2831a9c75.md) | 60 | `result-track:3b3ad22f6600d2e2831a9c75be1183092aaf3b6308cc6b67f52a8c933356c564` |
| 2 | `theorem` | [exists_eigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768.lean/declarations/exists-eigenvalue--0bc5176f3d35b0d9578a5891.md) | 71 | `result-track:0bc5176f3d35b0d9578a58912162b5de425a5768720c0ef0fcaf1ef7ce32c260` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768.lean/declarations/instance--b8b3913e21e5b4552ecc96e9.md) | 76 | `declaration-track:b8b3913e21e5b4552ecc96e94a7e60145cee907dc4ecf9ece5fb187e679adc53` |
| 4 | `theorem` | [iSup_maxGenEigenspace_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768.lean/declarations/isup-maxgeneigenspace-eq-top--4771249454c960eefb296e5a.md) | 83 | `result-track:4771249454c960eefb296e5a34df27083c2b92d35770f53e081837d14c52cbf0` |
| 5 | `theorem` | [inf_iSup_genEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768.lean/declarations/inf-isup-geneigenspace--cf702516fb16b7e1f689ec94.md) | 154 | `result-track:cf702516fb16b7e1f689ec94fc8487c7f6f4d99a6a2ab2b203534d051f56606f` |
| 6 | `theorem` | [eq_iSup_inf_genEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768.lean/declarations/eq-isup-inf-geneigenspace--f450150e1deaddc9ca95cea0.md) | 235 | `result-track:f450150e1deaddc9ca95cea0a99e94c81f9e002b677c2bcf125f3404ef18b910` |
| 7 | `theorem` | [Module.End.genEigenspace_restrict_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variantc04ec580d7404dbdd1532de57ea9bd43c7534df178c27070ebf13cff6532a768.lean/declarations/module-end-geneigenspace-restrict-eq-top--1442d2a0f5768a4e4f2dce50.md) | 244 | `result-track:1442d2a0f5768a4e4f2dce50ec2747dacefcc001c358a0d6c28529c4d64157bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
