# Verification target: GRWTSK.Algebra.GroupTheory.OreSet.Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e11df203543567be6144419be45c780087ea5ed",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e11df203543567be6144419be45c780087ea5ed`.

Source path: `GRWTSK/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean.json)

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
| 1 | `class` | [AddOreSet](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/declarations/addoreset--489d0be847c41bdb25dafe6e.md) | 31 | `declaration-track:489d0be847c41bdb25dafe6e9461b4ba03b6e2d4a2d6326d6c86f232e73bb965` |
| 2 | `class` | [OreSet](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/declarations/oreset--a952bcf1fa481088c21c6cbf.md) | 52 | `declaration-track:a952bcf1fa481088c21c6cbfb8865f7a3b57facc13d6ff332f1295775d0c205f` |
| 3 | `theorem` | [ore_right_cancel](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/declarations/ore-right-cancel--2f4035e185fb0d8b91880542.md) | 73 | `result-track:2f4035e185fb0d8b91880542b3e51f70557613ef18c6bede942705865e7a39a0` |
| 4 | `def` | [oreNum](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/declarations/orenum--2d66083a1e31f217d8db71cc.md) | 78 | `declaration-track:2d66083a1e31f217d8db71cc1e1e0ec550a72537de181218860bd59a6279df61` |
| 5 | `def` | [oreDenom](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/declarations/oredenom--f04a3d0e666a4b1e212cb515.md) | 83 | `declaration-track:f04a3d0e666a4b1e212cb515c634eaf07e28cbad6bf77ed44c4f215e7b29702a` |
| 6 | `theorem` | [ore_eq](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/declarations/ore-eq--9b71a0ffd5017665f48a93c4.md) | 89 | `result-track:9b71a0ffd5017665f48a93c44c2cc079482909f0f15d1c476de4620e425d5537` |
| 7 | `def` | [oreCondition](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/declarations/orecondition--ab95f23d33608b52a4a80989.md) | 97 | `declaration-track:ab95f23d33608b52a4a80989bce660c693dc701855a8c86c89b0024b67a2f041` |
| 8 | `instance` | [oreSetBot](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/declarations/oresetbot--cf2753461f2f7ef3db3a32e8.md) | 102 | `declaration-track:cf2753461f2f7ef3db3a32e828aab6d25c6f821c56eed73beefdb6cd014e2bdf` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/declarations/instance--ee816c776bedf348a5eee730.md) | 121 | `declaration-track:ee816c776bedf348a5eee730e518a1164ae1c8c14d2a2dfd38af7dff5cf5c969` |
| 10 | `lemma` | [oreSetComm_oreNum](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/declarations/oresetcomm-orenum--1ca697e6fe6e6437da4b891f.md) | 128 | `result-track:1ca697e6fe6e6437da4b891f2a7102718a8991f986c4b0998adc355daaec5872` |
| 11 | `lemma` | [oreSetComm_oreDenom](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/declarations/oresetcomm-oredenom--84bedd94b75982cc68839ec6.md) | 132 | `result-track:84bedd94b75982cc68839ec69a35cd8c448d123b5c1839e32c50f1e7b8d93726` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
