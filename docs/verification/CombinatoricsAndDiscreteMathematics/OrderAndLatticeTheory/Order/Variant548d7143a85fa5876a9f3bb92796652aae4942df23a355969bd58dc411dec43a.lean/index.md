# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80335006ee12ce9ef24e4767a5b12b7c5989920d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80335006ee12ce9ef24e4767a5b12b7c5989920d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.UpperLower.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClopenUpperSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/clopenupperset--543e88d5d2ab3be9994b46ff.md) | 26 | `declaration-track:543e88d5d2ab3be9994b46ff73c84346a44bf6ca32599657a2509947bcf4dbae` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/instance--30cbe60b5a710de0a53b1295.md) | 32 | `declaration-track:30cbe60b5a710de0a53b1295f2a6d356c2cdd9e19820258b49264ae162cd2c45` |
| 3 | `def` | [Simps.coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/simps-coe--fc1e16e38cf15cb4f280cf6a.md) | 40 | `declaration-track:fc1e16e38cf15cb4f280cf6ae286c61cdfe61033445f9ee6c4d17629bbe342d3` |
| 4 | `theorem` | [upper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/upper--d98bbff6db2cfa7d7437a26a.md) | 44 | `result-track:d98bbff6db2cfa7d7437a26a704a87fa1a7f28ba52005f89888cb03101eb4ad9` |
| 5 | `theorem` | [clopen](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/clopen--c6cbbe4f126624248afa1685.md) | 48 | `result-track:c6cbbe4f126624248afa16853ede574101f30134aafc9146e8f0512a70d8287b` |
| 6 | `def` | [toUpperSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/toupperset--108444c520070610fa7a4fcf.md) | 54 | `declaration-track:108444c520070610fa7a4fcff7c5f65d691f797e505eaaafb243059a19e12264` |
| 7 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/ext--5d85e88afd937b6fb04303f4.md) | 59 | `result-track:5d85e88afd937b6fb04303f4cda89a063d16efc8a70b56a72452d5834019daf1` |
| 8 | `theorem` | [coe_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/coe-mk--2b62781d693844a0b2d2b452.md) | 64 | `result-track:2b62781d693844a0b2d2b45245eae78e4ba3f1bce7a41c8c78a000ededbb1fe9` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/instance--6dafb55e39c180a6a69ccb1f.md) | 68 | `declaration-track:6dafb55e39c180a6a69ccb1f07983f1d7d771a4d97c8da4f10b8617e3f80bace` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/instance--ec2307f9b08de0631f8c2181.md) | 71 | `declaration-track:ec2307f9b08de0631f8c21818a34b3ca16b2f2b70f621c71053bb17ddf751f70` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/instance--203925e25e4f0c18c932cd54.md) | 74 | `declaration-track:203925e25e4f0c18c932cd54db8ac6296261544320e6cca22aebdb659a4e4de6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/instance--38c92e13e196c9a126726fb4.md) | 77 | `declaration-track:38c92e13e196c9a126726fb4357e1a61224344df8defefa21dbd547f0fcbb7d6` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/instance--9a0d85aff88adb3bd808416e.md) | 80 | `declaration-track:9a0d85aff88adb3bd808416e6f82c2cb23b3ba608195952d4e2e2ae1946b8274` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/instance--6a28ea3c93468170fb5bbd97.md) | 83 | `declaration-track:6a28ea3c93468170fb5bbd972d3e884208f09d494378e6b797c86d5e06f2f9a3` |
| 15 | `theorem` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/coe-sup--3a1e29e7e31a6b7daf2c0453.md) | 87 | `result-track:3a1e29e7e31a6b7daf2c04530abc771813f4d1891317068c868daaf913ac5d62` |
| 16 | `theorem` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/coe-inf--1f935143474e7fe2bc457be5.md) | 92 | `result-track:1f935143474e7fe2bc457be500b227e0e7fd89a47ab3168cdb57a8d4ccfa852b` |
| 17 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/coe-top--52c219e5844c30481b705721.md) | 97 | `result-track:52c219e5844c30481b7057218e02507351790295bfbd9a9b225f194148292cf7` |
| 18 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/coe-bot--12e72c1bca3f76f85f566a51.md) | 102 | `result-track:12e72c1bca3f76f85f566a51f407640b4d8cb9824fba2e123a7fe074e8d0e077` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant548d7143a85fa5876a9f3bb92796652aae4942df23a355969bd58dc411dec43a.lean/declarations/instance--513210c06824b05a1adf6c12.md) | 106 | `declaration-track:513210c06824b05a1adf6c129c1341c8f3fcd8de586345c99136a5328bf4ec08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
