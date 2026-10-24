# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hashing.Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6276ea34f6dfa5b6c3033e8444d5e8b26b5f05af",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6276ea34f6dfa5b6c3033e8444d5e8b26b5f05af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Cache.IO` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.ParseImportsFast` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HashMemo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/declarations/hashmemo--3acc98127ddd6d0bf6435bc3.md) | 32 | `declaration-track:3acc98127ddd6d0bf6435bc349b2b9ab2eed98a3acc1558f572d0db4cea8e698` |
| 2 | `def` | [insertDeps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/declarations/insertdeps--1bf8fa5283eb6740124e066d.md) | 48 | `declaration-track:1bf8fa5283eb6740124e066dec09748cf73b57a758d1ba40fba8ce1a6de0110a` |
| 3 | `def` | [HashMemo.filterByRootModules](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/declarations/hashmemo-filterbyrootmodules--ed2d9a0f9f0d58d376d0f173.md) | 61 | `declaration-track:ed2d9a0f9f0d58d376d0f173cba3bde35d5301585311c83890197860b7bf0eae` |
| 4 | `abbrev` | [HashM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/declarations/hashm--76155d7089736fc4940db833.md) | 71 | `declaration-track:76155d7089736fc4940db833b642f29838899006d32bdc3ba7bf958101d5ee83` |
| 5 | `def` | [getFileImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/declarations/getfileimports--8a131f1f7510c8bb4e17f9fe.md) | 80 | `declaration-track:8a131f1f7510c8bb4e17f9feabba0c07ed20245fb347119d48069ececc75dbc9` |
| 6 | `def` | [hashFileContents](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/declarations/hashfilecontents--1ffa444dd4974675f364082f.md) | 91 | `declaration-track:1ffa444dd4974675f364082f3e683fede7639f6413df5dbe51e3a2b22bb060f3` |
| 7 | `def` | [getRootHash](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/declarations/getroothash--85bc33a9f9f59e1f91e43bc3.md) | 106 | `declaration-track:85bc33a9f9f59e1f91e43bc3b502a2ae4e89814955ccec714d8df75a47af0333` |
| 8 | `def` | [getHash](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/declarations/gethash--2cd14765e4854f14375287aa.md) | 125 | `declaration-track:2cd14765e4854f14375287aac3dfd93855f91191788e34dbcb3b42f788f72f33` |
| 9 | `def` | [roots](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/declarations/roots--ec85a6e46a6a3b537342a2d2.md) | 168 | `declaration-track:ec85a6e46a6a3b537342a2d2ecac8a6381418a181e856380776d881501c2861c` |
| 10 | `def` | [getHashMemo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant1bcccf120ac418915e2666a6203a05cdb907b3b70ceec0fa8f54085bcd757680.lean/declarations/gethashmemo--204a128545327b08a61e500c.md) | 173 | `declaration-track:204a128545327b08a61e500cb92bb63879dbdd768c76920b95c1849927cb8417` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
