# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Constructions.Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "940f86a200b28e080c4da25ed700be713adeda8f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `940f86a200b28e080c4da25ed700be713adeda8f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.W.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Natα](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/nat--58b989bdddc30ea558d0dc6e.md) | 32 | `declaration-track:58b989bdddc30ea558d0dc6e427768d81122ed0edd5aeecd3bf484bed3f8d808` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/instance--98c7de38168a8036edc16b5a.md) | 36 | `declaration-track:98c7de38168a8036edc16b5a0a2ce9e6bc25923591fb5c5802f5c4dcbf70e5c3` |
| 3 | `def` | [Natβ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/nat--f58dfd0781f2a9159d1599ff.md) | 40 | `declaration-track:f58dfd0781f2a9159d1599ffc585284f7c3ea24beb6e366f46a90e80ddd5f151` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/instance--a42151af2793b004242766f7.md) | 44 | `declaration-track:a42151af2793b004242766f77048c0c0f0c045f1956499d9f5cc7376b9a2d43f` |
| 5 | `def` | [ofNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/ofnat--82cc25fbf3dd0ad5feec1305.md) | 49 | `declaration-track:82cc25fbf3dd0ad5feec130555aac685dd6d09406836129a795f53a6d514a420` |
| 6 | `def` | [toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/tonat--c9f38bb54eade9ff9e05920f.md) | 55 | `declaration-track:c9f38bb54eade9ff9e05920f7057d6c433829ac140f6cc3b627ee0cea1de8669` |
| 7 | `theorem` | [leftInverse_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/leftinverse-nat--69ef770c036f4bd5958d047a.md) | 59 | `result-track:69ef770c036f4bd5958d047a57d05f7fb5893ab55f1f363bb6746b0cce1dc42a` |
| 8 | `theorem` | [rightInverse_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/rightinverse-nat--1aba9683c34e4b2343e6a456.md) | 69 | `result-track:1aba9683c34e4b2343e6a456a8bdd278c7fef589d2b038450febf877a791bb46` |
| 9 | `def` | [equivNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/equivnat--efb611e476b15b48f85ef059.md) | 74 | `declaration-track:efb611e476b15b48f85ef0599922fb674e739bca9d14cfc2cef2b8bdfda39c48` |
| 10 | `def` | [NatαEquivPUnitSumPUnit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/nat-equivpunitsumpunit--1ddbd8b47c6fc537a8a63d4c.md) | 86 | `declaration-track:1ddbd8b47c6fc537a8a63d4c936703089c273b51c54b67bc425ef0863ea87718` |
| 11 | `inductive` | [Listα](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/list--4761d417c924e2cb94a8cf05.md) | 120 | `declaration-track:4761d417c924e2cb94a8cf05a56a6c31c6e2eb38afc94aa26249f8e100771514` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/instance--7beddd3c2f624c40d516343a.md) | 124 | `declaration-track:7beddd3c2f624c40d516343a01faccf43d34685eab6092de24872da13dccf1d3` |
| 13 | `def` | [Listβ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/list--1cf40b40f81e62f46ee4b434.md) | 128 | `declaration-track:1cf40b40f81e62f46ee4b434e5611b566ff8ebd4695ea0c479de4560f7787539` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/instance--bd483f02315cf506638a829c.md) | 132 | `declaration-track:bd483f02315cf506638a829c68e514df01850eb17f91b8db90a23b243e7707d9` |
| 15 | `def` | [ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/oflist--78a348367c67e3fe0826f1f1.md) | 137 | `declaration-track:78a348367c67e3fe0826f1f14f9806aee0b05a397aa9d867b1cf383236cd9783` |
| 16 | `def` | [toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/tolist--9f97ceed0475c74a5b8b6355.md) | 143 | `declaration-track:9f97ceed0475c74a5b8b6355c71421f6afa5625d42dc6566f611d452ff05afb4` |
| 17 | `theorem` | [leftInverse_list](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/leftinverse-list--7f80b10473c0208b12a416ab.md) | 147 | `result-track:7f80b10473c0208b12a416aba971bf1dfd4947a61ceece2385feed5b3c5ad3d6` |
| 18 | `theorem` | [rightInverse_list](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/rightinverse-list--51e5e64a3cc88598a7d29800.md) | 156 | `result-track:51e5e64a3cc88598a7d298009c72c219f5702e82f038141bfe32a30b49b56065` |
| 19 | `def` | [equivList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/equivlist--93efa88a1b4b7747d3981ea8.md) | 161 | `declaration-track:93efa88a1b4b7747d3981ea841d875ec2fc72c3282c23455b6869853e9cd985e` |
| 20 | `def` | [ListαEquivPUnitSum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/declarations/list-equivpunitsum--912c7cba37fe42d6c7a9686d.md) | 170 | `declaration-track:912c7cba37fe42d6c7a9686d48421c350ea61acbc03df64d11b0c3807f1660d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
