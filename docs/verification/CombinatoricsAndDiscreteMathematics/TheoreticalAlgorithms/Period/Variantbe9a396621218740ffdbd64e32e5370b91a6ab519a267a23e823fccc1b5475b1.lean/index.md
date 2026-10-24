# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Period.Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61dc3a7060483fd2eae269a94ad476691f1623a6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61dc3a7060483fd2eae269a94ad476691f1623a6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Pisano.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findPeriodAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean/declarations/findperiodaux--5b15a078f7f4e7c20f4b1e72.md) | 36 | `declaration-track:5b15a078f7f4e7c20f4b1e72fcae58c94c6375344aaed9c5e57abaa75b04b04d` |
| 2 | `def` | [findPisanoPeriod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean/declarations/findpisanoperiod--26822de94dca1beb177d8a47.md) | 48 | `declaration-track:26822de94dca1beb177d8a474944f8e5d29b38a61737cd367330ca9cc6b2f015` |
| 3 | `def` | [checkPeriod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean/declarations/checkperiod--1d13d364d633f45a82a8538a.md) | 56 | `declaration-track:1d13d364d633f45a82a8538a58d3ef143fe875cd7c934871fa4bfb685fdbb099` |
| 4 | `def` | [checkPisanoPeriod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean/declarations/checkpisanoperiod--c94caf429f57a780fdeb438e.md) | 64 | `declaration-track:c94caf429f57a780fdeb438e0d31a9b342cb074f516ef5ae93a7d4f514fea94e` |
| 5 | `def` | [primeFactors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean/declarations/primefactors--28cca9d5d65691fd204e61df.md) | 75 | `declaration-track:28cca9d5d65691fd204e61dfe29938da7cf70e598d0081e8b7d63e978527689e` |
| 6 | `def` | [listLcm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean/declarations/listlcm--004aa67b4f5735876be62c5c.md) | 90 | `declaration-track:004aa67b4f5735876be62c5cd09ee7c63e31262201b9c0f93434cd1b9d8077dd` |
| 7 | `def` | [checkPisanoFixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean/declarations/checkpisanofixedpoint--aae73692a35b82945d98452b.md) | 96 | `declaration-track:aae73692a35b82945d98452b47cf1d92b9a1b7bbd8cb4c9639cdc698b271b95a` |
| 8 | `def` | [findPisanoFixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean/declarations/findpisanofixedpoints--efe11aac4f743290678b97bb.md) | 102 | `declaration-track:efe11aac4f743290678b97bb2f27a8b087518f3dcde70940ff505506ff44f5e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
