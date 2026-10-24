# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac694fe96159f11d4569d57ec69195aa1f123ebf",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac694fe96159f11d4569d57ec69195aa1f123ebf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Provenance` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ContextField](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean/declarations/contextfield--2691c6ad5635728ddf0cc39a.md) | 15 | `declaration-track:2691c6ad5635728ddf0cc39a9029f6aa9ab98462f0bcdf1569f7a5d1148e96ba` |
| 2 | `structure` | [Context](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean/declarations/context--480c863672a2d73303286cc2.md) | 25 | `declaration-track:480c863672a2d73303286cc2096bb81016e4a154ecd134a26b90bbf6705d05e0` |
| 3 | `def` | [OptionRefines](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean/declarations/optionrefines--2c8d92ee064fe20edca38ca4.md) | 37 | `declaration-track:2c8d92ee064fe20edca38ca496eaab8c9ccd7fd602890226a4f4aa008da47b45` |
| 4 | `theorem` | [OptionRefines.refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean/declarations/optionrefines-refl--661c0ff2d2e56ade6066c925.md) | 40 | `result-track:661c0ff2d2e56ade6066c925afaba985f78ce87fe6fe5e06acb1d55c645e8dd1` |
| 5 | `theorem` | [OptionRefines.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean/declarations/optionrefines-trans--4c2c4a5e079d053f2a3a8a08.md) | 47 | `result-track:4c2c4a5e079d053f2a3a8a0822412b64b4fd166247176e3f2213de6c16777d37` |
| 6 | `def` | [Context.Refines](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean/declarations/context-refines--e1ad281c5e40937e41ec9668.md) | 56 | `declaration-track:e1ad281c5e40937e41ec96689ad00dd134012148194204c81115c02ba5737f20` |
| 7 | `theorem` | [Context.refines_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean/declarations/context-refines-refl--690ce7fe30c5ea6776c22d2d.md) | 66 | `result-track:690ce7fe30c5ea6776c22d2d0e02c16c9af5fbe65632081b23462d2342b51ecd` |
| 8 | `theorem` | [Context.Refines.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean/declarations/context-refines-trans--2fe12147e3d8fdc9bad095fe.md) | 77 | `result-track:2fe12147e3d8fdc9bad095fe12c682c300d164a8ac70b65b8d78e8499bf93ea1` |
| 9 | `structure` | [ContextTransportCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean/declarations/contexttransportcertificate--4738ffffb09830085b6ca83e.md) | 98 | `declaration-track:4738ffffb09830085b6ca83e47b41abdd9e998dd05a3e8ec83ee189903ddbd00` |
| 10 | `structure` | [ContextSufficiencyCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantc9bef384937c9e7fb1d7c7ab443d3543e77634c7366c93563572b392d5b16e19.lean/declarations/contextsufficiencycertificate--ac1d21b3a17f9e933378edd8.md) | 105 | `declaration-track:ac1d21b3a17f9e933378edd8779e63f081c4e19b5259e977a9cb38c009062b9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
