# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FindPos.Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4025ea9e428d63e4035d10bedbbcfc20dd4526c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4025ea9e428d63e4035d10bedbbcfc20dd4526c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Slice.posGE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/slice-posge--f2d9339acf7a1941d58a4e75.md) | 27 | `declaration-track:f2d9339acf7a1941d58a4e75f44cbae0f99ff384787317d26d5eab4564d8c308` |
| 2 | `def` | [Slice.posGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/slice-posgt--d51088dd7150c784f4d07ba0.md) | 42 | `declaration-track:d51088dd7150c784f4d07ba0429b6eafac9d7a78ad1d45fc5ac1caf7c3662f87` |
| 3 | `def` | [Slice.findNextPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/slice-findnextpos--e665f90b5d26e61474fd34c3.md) | 46 | `declaration-track:e665f90b5d26e61474fd34c3ef0ff909f0a98d94d6a9d7c02a31dfc1f55a15b6` |
| 4 | `def` | [posGE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/posge--00563dc4ae1bfe5b20be4c24.md) | 53 | `declaration-track:00563dc4ae1bfe5b20be4c24fc547d52edb75b446fb7d0e59931530fe51ea78e` |
| 5 | `def` | [posGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/posgt--3df7d4da5fcba4177f0f7646.md) | 60 | `declaration-track:3df7d4da5fcba4177f0f7646cf2e198e300717d2042cf98e9f092378f19e0611` |
| 6 | `def` | [Slice.posLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/slice-posle--99fbe3ea3e721c1f7678072e.md) | 67 | `declaration-track:99fbe3ea3e721c1f7678072e786a6669065c8a614bc078667af67e89f818d761` |
| 7 | `def` | [Slice.posLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/slice-poslt--b8ef84aa5cea312d3bf2b394.md) | 80 | `declaration-track:b8ef84aa5cea312d3bf2b3940027b039f80b3571684c22a42a15cc19fcceaee1` |
| 8 | `def` | [posLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/posle--6ae00d8618991538d6828966.md) | 87 | `declaration-track:6ae00d8618991538d68289667d1c8ab3a6bba10d54ac6bfb01eb054e7a6a867a` |
| 9 | `def` | [posLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/poslt--5da3fee50f7f1e08cf0f44c2.md) | 94 | `declaration-track:5da3fee50f7f1e08cf0f44c231435aae2c620da292d329ac317948c22257b0bb` |
| 10 | `def` | [Slice.Pos.prev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/slice-pos-prev--8b551fb079cc1e8ca2b6ae4e.md) | 102 | `declaration-track:8b551fb079cc1e8ca2b6ae4eb13d5158f5fe245a129f046d31d326d58b82cf24` |
| 11 | `def` | [Slice.Pos.prev?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/slice-pos-prev--4f2e15c8fa98fca31cfcba8e.md) | 108 | `declaration-track:4f2e15c8fa98fca31cfcba8ec499ff38fad6e54c783a0d2076216a27d174f61c` |
| 12 | `def` | [Slice.Pos.prev!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/slice-pos-prev--712c9a5f47a67303befa97d2.md) | 114 | `declaration-track:712c9a5f47a67303befa97d261a43d265d67df2c36f1ea0227476d1f963a729e` |
| 13 | `def` | [Pos.prev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/pos-prev--c9cd909eba8168420d6b7857.md) | 120 | `declaration-track:c9cd909eba8168420d6b78571fba9d51a0bd891db08b4dad470fc40cec148355` |
| 14 | `def` | [Pos.prev?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/pos-prev--a18d54fa2b6518473ae043ee.md) | 126 | `declaration-track:a18d54fa2b6518473ae043ee72bee5d15adcfaf09ccaf7749cb9cf247cbe2a92` |
| 15 | `def` | [Pos.prev!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/pos-prev--a5b8fb16f93fa7536c93ce75.md) | 132 | `declaration-track:a5b8fb16f93fa7536c93ce755adda19ef702794af494251aa973ce5dd20a38de` |
| 16 | `def` | [Slice.Pos.prevn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/slice-pos-prevn--ca6c33ef5b8c84fcd0d18401.md) | 140 | `declaration-track:ca6c33ef5b8c84fcd0d18401898ec480f5b2c458aed5a9c77c5711269c5771ac` |
| 17 | `def` | [Pos.prevn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393.lean/declarations/pos-prevn--83b983d7e1bca6cedcf30ab4.md) | 155 | `declaration-track:83b983d7e1bca6cedcf30ab4cac4099e1460768aa88297c0f786b73efdbc0667` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
