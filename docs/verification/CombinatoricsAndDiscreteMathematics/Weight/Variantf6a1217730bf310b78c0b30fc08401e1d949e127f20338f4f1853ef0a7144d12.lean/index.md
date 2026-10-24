# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Weight.Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f46f382cbcc1c0618a76b8bc8c53b7d9eccccf0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f46f382cbcc1c0618a76b8bc8c53b7d9eccccf0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Antidiagonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/weight--f403512c2cab1ce02ec2f764.md) | 81 | `declaration-track:f403512c2cab1ce02ec2f764ebcc8c2f1151583504106dfb2984990e15776b49` |
| 2 | `theorem` | [weight_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/weight-apply--c6777db04f4c321943f1c4f2.md) | 84 | `result-track:c6777db04f4c321943f1c4f2105ff76e89e382f226de25f28dcba47d3d34a418` |
| 3 | `theorem` | [weight_single_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/weight-single-index--d68d76486637ac63eb6aaeec.md) | 87 | `result-track:d68d76486637ac63eb6aaeec54667bf4115164cc59ab17a89267f8119db54ffd` |
| 4 | `theorem` | [weight_single_one_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/weight-single-one-apply--82e43b020fb533b57c1caf62.md) | 91 | `result-track:82e43b020fb533b57c1caf62c3507babb8b3ddf77e84de68fee7752d41794d4d` |
| 5 | `theorem` | [weight_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/weight-single--b43dd1702ea88200a095b592.md) | 95 | `result-track:b43dd1702ea88200a095b59240c668fd32fb037ded7e66d7a697b0c3d33cd55e` |
| 6 | `class` | [NonTorsionWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/nontorsionweight--b3365dbd7598e86eb459357c.md) | 101 | `declaration-track:b3365dbd7598e86eb459357c861ac417a307bf3d67d76bf6cb74d1ebead2480c` |
| 7 | `theorem` | [nonTorsionWeight_of](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/nontorsionweight-of--4bec2073bf8669731ad28e63.md) | 106 | `result-track:4bec2073bf8669731ad28e63bb79834dd58270db64b381f14118c4ffe0c552fc` |
| 8 | `theorem` | [NonTorsionWeight.ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/nontorsionweight-ne-zero--cac8419acd96e38254a51b55.md) | 113 | `result-track:cac8419acd96e38254a51b55317745c3b12208fbbf452d2f55a98292a99dde32` |
| 9 | `lemma` | [weight_sub_single_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/weight-sub-single-add--353985cf1b04d88ea60fe70e.md) | 120 | `result-track:353985cf1b04d88ea60fe70e0976a2b2fcf282a71717aca950d38196c32d3135` |
| 10 | `theorem` | [le_weight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/le-weight--396bf8690b7270b91ebaab3f.md) | 130 | `result-track:396bf8690b7270b91ebaab3faa277b5c08a104e6955811cfd5df811b388f0adb` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/instance--8b0d32c7aded70cc319a43e6.md) | 147 | `declaration-track:8b0d32c7aded70cc319a43e63de1528a8d4b1cebf41386a9b0c6d11ce648b1c7` |
| 12 | `theorem` | [le_weight_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/le-weight-of-ne-zero--10e92907803cf60c827220fd.md) | 153 | `result-track:10e92907803cf60c827220fd14f2390b1d7c27f8a959a220ec14641aa694e19b` |
| 13 | `theorem` | [le_weight_of_ne_zero'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/le-weight-of-ne-zero--dd9038a27eb6b4dacc8a1c5c.md) | 172 | `result-track:dd9038a27eb6b4dacc8a1c5c9d7d6d87709d3a29f1b50466f9b50e6fa2284427` |
| 14 | `theorem` | [weight_eq_zero_iff_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/weight-eq-zero-iff-eq-zero--8a0adfd92d346a7389c0fe63.md) | 177 | `result-track:8a0adfd92d346a7389c0fe632bb692d20af079016453f4c43f52eeb893d14016` |
| 15 | `theorem` | [finite_of_nat_weight_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/finite-of-nat-weight-le--3baf80f560294d5cd45eb9a4.md) | 192 | `result-track:3baf80f560294d5cd45eb9a44ca84636d164ec58bd063a9f619e4dcd30373d9a` |
| 16 | `def` | [degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/degree--ba935ba7e2475f7f3e0092e7.md) | 216 | `declaration-track:ba935ba7e2475f7f3e0092e7828b7487ebc0a2ed5e88749a352b1b79d0cc36c4` |
| 17 | `theorem` | [degree_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/degree-add--5c454c1ddfc2ad2e72dbb5f4.md) | 219 | `result-track:5c454c1ddfc2ad2e72dbb5f45763f49bc50c1a5957fe144b533a12817d06f332` |
| 18 | `theorem` | [degree_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/degree-single--5d8b93354a044881d3f88494.md) | 223 | `result-track:5d8b93354a044881d3f88494f41ce279e0f0c70dfe41b757af9913c2d82039fd` |
| 19 | `theorem` | [degree_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/degree-zero--c445a89623fb709ee5d1e736.md) | 227 | `result-track:c445a89623fb709ee5d1e73679f5cb56c511b4a0860549763e6b2abbe75fd041` |
| 20 | `lemma` | [degree_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/degree-eq-zero-iff--b98bcd5042625557537b6d78.md) | 229 | `result-track:b98bcd5042625557537b6d78988f244361a6bf64203c84767e5b01701150276c` |
| 21 | `theorem` | [le_degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/le-degree--15c0fbe6a204fe860c58fced.md) | 236 | `result-track:15c0fbe6a204fe860c58fced749dd40c0ae19b48e4897d491879889c6d6476d3` |
| 22 | `theorem` | [degree_eq_weight_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/degree-eq-weight-one--b05c23cb7328265667a8ae01.md) | 245 | `result-track:b05c23cb7328265667a8ae01c5c963c641059a284a29bc083c05c94bac52610b` |
| 23 | `theorem` | [finite_of_degree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/declarations/finite-of-degree-le--23683b551cfc3f0d22572f3e.md) | 250 | `result-track:23683b551cfc3f0d22572f3e2817a352e8e39a4805835f0b3ffbe6fdaa7eb7e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
