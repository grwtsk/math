# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalCases.Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d72d6abb19fb2523e4b5bef8a61e3cb91a221b6a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d72d6abb19fb2523e4b5bef8a61e3cb91a221b6a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalCasesSubgoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/intervalcasessubgoal--49b75bac9e21551c4b5e6bfc.md) | 34 | `declaration-track:49b75bac9e21551c4b5e6bfcb5e9f15f3e348b15af0dac91540308ab8a9072a1` |
| 2 | `inductive` | [Bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/bound--a99ab632215e7c7b57843ef0.md) | 48 | `declaration-track:a99ab632215e7c7b57843ef0a1246ac9494355b563b5877c056839ea1cef296d` |
| 3 | `def` | [Bound.asLower](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/bound-aslower--df68030c79b738b2acc7a769.md) | 61 | `declaration-track:df68030c79b738b2acc7a769f3312dd8090be3ed08752c031cdf71609a52c50f` |
| 4 | `def` | [Bound.asUpper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/bound-asupper--64307109ba537493f128d62d.md) | 73 | `declaration-track:64307109ba537493f128d62df63d782d71d4178b56024c3bf38ed60a30be353b` |
| 5 | `def` | [parseBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/parsebound--57a8e4d0ad9dbd785ee4633e.md) | 83 | `declaration-track:57a8e4d0ad9dbd785ee4633e01b940a05cd17d7869ba35ec173ad48c179aa2ca` |
| 6 | `structure` | [Methods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/methods--a3319b960fa4e34aee4280b6.md) | 101 | `declaration-track:a3319b960fa4e34aee4280b6d52a06f4c23cdebcb1e83ceef87509f9fbb868fc` |
| 7 | `theorem` | [of_not_lt_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/of-not-lt-left--3c7bf6505487691c088f33da.md) | 124 | `result-track:3c7bf6505487691c088f33da2fbfce6ba2b884c2cc2498dae5baeaa56ea8e27a` |
| 8 | `theorem` | [of_not_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/of-not-lt-right--dc67d22f7b63f0b53a2475db.md) | 125 | `result-track:dc67d22f7b63f0b53a2475dbfec4d96f07da60c9873cee4aa8124be98cfb3125` |
| 9 | `theorem` | [of_not_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/of-not-le-left--134bd9d316cd7321877df8cf.md) | 126 | `result-track:134bd9d316cd7321877df8cf2e150b9f8b9036585e6a001a363d875e322fd04c` |
| 10 | `theorem` | [of_not_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/of-not-le-right--0d900fc8239d264342e2949b.md) | 127 | `result-track:0d900fc8239d264342e2949b09651f479488ff42a598da65a225a0e10156b382` |
| 11 | `theorem` | [of_lt_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/of-lt-left--956e2d74be767225347a29f7.md) | 128 | `result-track:956e2d74be767225347a29f7f40350e49c16ff13a7092807365498e40fa95aaf` |
| 12 | `theorem` | [of_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/of-lt-right--4769416e62ed3302eeada893.md) | 129 | `result-track:4769416e62ed3302eeada8938b69e0b4377e2abf2433e70ba3730b1110cac523` |
| 13 | `theorem` | [of_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/of-le-left--660b281edf80bd994a3ad0af.md) | 130 | `result-track:660b281edf80bd994a3ad0af57bd6e8ffb659b5acb80c3fca3514c45a1de4b44` |
| 14 | `theorem` | [of_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/of-le-right--70ec42a81bdb49d98f14ce27.md) | 131 | `result-track:70ec42a81bdb49d98f14ce2789c60ec0ad9d09d6fb46e4c5963d4fd840c866d0` |
| 15 | `def` | [Methods.getBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/methods-getbound--4d26cf52ce304122485bac23.md) | 138 | `declaration-track:4d26cf52ce304122485bac2344afc90296580599b1b08595becf72fc655cafbd` |
| 16 | `theorem` | [le_of_not_le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/le-of-not-le-of-le--7c5c2b189f72ea850ac8cb65.md) | 160 | `result-track:7c5c2b189f72ea850ac8cb659feecbbb3ffede51e14c059f6565341a539c7b1e` |
| 17 | `def` | [Methods.inconsistentBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/methods-inconsistentbounds--62f4048fdcc22ef2d444fc34.md) | 168 | `declaration-track:62f4048fdcc22ef2d444fc3428b947ddc4aaf2a89f27e835bfbc8ca45dcf9ba8` |
| 18 | `def` | [Methods.bisect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/methods-bisect--f466f950a52d7130d8b0de93.md) | 191 | `declaration-track:f466f950a52d7130d8b0de93e34eb5bdaea82a827bb83893b1b60d872823b19a` |
| 19 | `def` | [natMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/natmethods--75e55ecac0ed0b34ba801468.md) | 215 | `declaration-track:75e55ecac0ed0b34ba80146828f6060bd02411fa6117c6779304975bb70afd5f` |
| 20 | `theorem` | [_root_.Int.add_one_le_of_not_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/root-int-add-one-le-of-not-le--4f45bbf69aeb0fbf07c7dbcc.md) | 229 | `result-track:4f45bbf69aeb0fbf07c7dbcc6f0238ea53e23d204aacddd93eef563d5967d3dd` |
| 21 | `theorem` | [_root_.Int.le_sub_one_of_not_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/root-int-le-sub-one-of-not-le--becc37901f40a6dd86192091.md) | 231 | `result-track:becc37901f40a6dd8619209159482496caf01bfa0047f34ed61d3006894394d4` |
| 22 | `def` | [intMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/intmethods--645826e169dc31a20e63c26e.md) | 236 | `declaration-track:645826e169dc31a20e63c26e3d6e9843bc690074ab0a776d0c356fa7d59157d1` |
| 23 | `def` | [intervalCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/intervalcases--80deca8ba9f9a3f517f8befc.md) | 274 | `declaration-track:80deca8ba9f9a3f517f8befcc4bb792ce6722d6c7a912ad30515f39c4837f703` |
| 24 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/syntax--61399dc328a01473a4323db8.md) | 343 | `declaration-track:61399dc328a01473a4323db8488a35691d9ea9434f33dcc0acab54e631cc828b` |
| 25 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/declarations/elab-rules--5fe7efbc7a70fc08dadb537a.md) | 346 | `declaration-track:5fe7efbc7a70fc08dadb537a4c6c64bc2f06b5423d32b749c668d5e1578ecfdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
