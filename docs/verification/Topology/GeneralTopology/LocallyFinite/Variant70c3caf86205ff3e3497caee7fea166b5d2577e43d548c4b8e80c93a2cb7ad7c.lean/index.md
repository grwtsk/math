# Verification target: GRWTSK.Topology.GeneralTopology.LocallyFinite.Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "573732189552e9aef7fb9c78b281dcb2b0d9ded2",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `573732189552e9aef7fb9c78b281dcb2b0d9ded2`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.SmallSets` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocallyFinite](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/locallyfinite--4430a5378eef34c0be740c14.md) | 25 | `declaration-track:4430a5378eef34c0be740c14bfdff57bfc6daf128e26fde6c04d3967561ae2df` |
| 2 | `theorem` | [locallyFinite_of_finite](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/locallyfinite-of-finite--2828edf9d59b6e2f50ad1d04.md) | 28 | `result-track:2828edf9d59b6e2f50ad1d04cd4080fb98a3bfaf7552749d32b8fdf49956f358` |
| 3 | `theorem` | [point_finite](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/point-finite--48cdc221902d1f08149ed235.md) | 33 | `result-track:48cdc221902d1f08149ed23562bdad5254c5254a2543de31e0806c91944afc32` |
| 4 | `theorem` | [subset](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/subset--dd79962bf0df31343c54b1f2.md) | 37 | `result-track:dd79962bf0df31343c54b1f2815bc4f381b60cff9812baeac9253face313299a` |
| 5 | `theorem` | [comp_injOn](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/comp-injon--3599c1a6b2fd33fd7169043f.md) | 41 | `result-track:3599c1a6b2fd33fd7169043ff9666295c8658c40c0a55c4a999850ddc31e2c65` |
| 6 | `theorem` | [comp_injective](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/comp-injective--5c25c8dfda34a992c2ad3d83.md) | 47 | `result-track:5c25c8dfda34a992c2ad3d83b2fc9f4aa097b73e0f41f58cf0bcf94e2bbd5f1f` |
| 7 | `theorem` | [_root_.locallyFinite_iff_smallSets](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/root-locallyfinite-iff-smallsets--716b4df7f69cb72946f3ad31.md) | 51 | `result-track:716b4df7f69cb72946f3ad31c64209b514c8f5288b0f8a15f2a3785f0a625e33` |
| 8 | `theorem` | [eventually_smallSets](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/eventually-smallsets--5f5cbc78db63c385299a91c8.md) | 57 | `result-track:5f5cbc78db63c385299a91c8e8ffb4192f0edf21accc17fca28a8a9d06d19309` |
| 9 | `theorem` | [exists_mem_basis](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/exists-mem-basis--c06392177b1899506fd100c3.md) | 61 | `result-track:c06392177b1899506fd100c3592e530bdec5621cd6547a5b06944ac7e8ffe87f` |
| 10 | `theorem` | [nhdsWithin_iUnion](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/nhdswithin-iunion--eab07ea69b8fe8dc5a245265.md) | 66 | `result-track:eab07ea69b8fe8dc5a245265518744a381e11a3e993ae14c81554227555c98b5` |
| 11 | `theorem` | [continuousOn_iUnion'](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/continuouson-iunion--d3a234a4012c19e7fe64da7d.md) | 79 | `result-track:d3a234a4012c19e7fe64da7dcf5f4066392aa3d2cee2cc258eb14b58d1857c13` |
| 12 | `theorem` | [continuousOn_iUnion](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/continuouson-iunion--e7b0f31f2e954eded8cd726e.md) | 91 | `result-track:e7b0f31f2e954eded8cd726e9dadf4d49f222c09035e58f44fa8d60ce5364449` |
| 13 | `theorem` | [continuous'](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/continuous--2438e2e928ba3170dfd9f33d.md) | 95 | `result-track:2438e2e928ba3170dfd9f33db3e164622825e32b1b3c6637e2d750e9c2fa3187` |
| 14 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/continuous--9a2cb110224736b67d97aedd.md) | 100 | `result-track:9a2cb110224736b67d97aedd1c1364b548851fbecb54edfee49e7cd4ee6b77bb` |
| 15 | `theorem` | [closure](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/closure--1d6e95fcb208dd4b0ae7278d.md) | 105 | `result-track:1d6e95fcb208dd4b0ae7278d9ac654fe8114311515713ca672d42e74077c8ee0` |
| 16 | `theorem` | [closure_iUnion](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/closure-iunion--df4883efaa4710e4b20bd388.md) | 112 | `result-track:df4883efaa4710e4b20bd3885897dd159b61ad8896b35c1beb936e8634a5f9ae` |
| 17 | `theorem` | [isClosed_iUnion](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/isclosed-iunion--9aca0579115a15c10716b4e5.md) | 116 | `result-track:9aca0579115a15c10716b4e504e9ab06124856d7b7285cbebe742aedfc3d18c4` |
| 18 | `theorem` | [iInter_compl_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/iinter-compl-mem-nhds--d07894f3306b9ecb6f449ac5.md) | 122 | `result-track:d07894f3306b9ecb6f449ac5cd8246e2c706fbbfd3f0d2beaf2a11690192631b` |
| 19 | `theorem` | [exists_forall_eventually_eq_prod](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/exists-forall-eventually-eq-prod--9d0ec9ecb911d79eaf8cc4dc.md) | 135 | `result-track:9d0ec9ecb911d79eaf8cc4dc702d5770f6b962508fc8214a07fc001635fa5e6d` |
| 20 | `theorem` | [exists_forall_eventually_atTop_eventually_eq'](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/exists-forall-eventually-attop-eventually-eq--3d25a0ea503261a9ba7ec18a.md) | 156 | `result-track:3d25a0ea503261a9ba7ec18aa30a30b1eb548a693b1b27a8e381152e03d22f42` |
| 21 | `theorem` | [exists_forall_eventually_atTop_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/exists-forall-eventually-attop-eventuallyeq--17b2371d9d0cd51c1b2309dd.md) | 165 | `result-track:17b2371d9d0cd51c1b2309dd5db8cec4a2b0d119b35c478969784bf33c77eb1f` |
| 22 | `theorem` | [preimage_continuous](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/preimage-continuous--d691de04065fe45b179bb4f7.md) | 170 | `result-track:d691de04065fe45b179bb4f710a6f11d6f91cbe00afdd13f2a990b9d73e7e10c` |
| 23 | `theorem` | [prod_right](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/prod-right--955815b5c8967fd297b0c6ba.md) | 175 | `result-track:955815b5c8967fd297b0c6ba5eb58291a318baa85b19556f47394ee106a2786f` |
| 24 | `theorem` | [prod_left](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/prod-left--ffde25f8e6c44139232ec3cc.md) | 178 | `result-track:ffde25f8e6c44139232ec3cc3b7f0ca68a5a02959c0cafbec55c60f586745c63` |
| 25 | `theorem` | [Equiv.locallyFinite_comp_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/equiv-locallyfinite-comp-iff--69737cffd5d974e774e108e1.md) | 185 | `result-track:69737cffd5d974e774e108e1d88bb16a6e0a393e7b957ad4067324b325fc4489` |
| 26 | `theorem` | [locallyFinite_sum](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/locallyfinite-sum--a3f8e4abe5515d633452ec50.md) | 189 | `result-track:a3f8e4abe5515d633452ec50ac364b6212c8d5b582f55e5d91b57d405468537b` |
| 27 | `theorem` | [LocallyFinite.sumElim](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/locallyfinite-sumelim--b4a41584e3664336721c5d20.md) | 194 | `result-track:b4a41584e3664336721c5d209e6d7735f8d6d1d831425153886bcc23c55b6164` |
| 28 | `theorem` | [locallyFinite_option](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/locallyfinite-option--ab43f4e3e4f591297a7dbc90.md) | 200 | `result-track:ab43f4e3e4f591297a7dbc9010b82a22e9ad88de4feb905cf98bb2ab2d113aab` |
| 29 | `theorem` | [LocallyFinite.option_elim'](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/locallyfinite-option-elim--d36390a7171201517b333d29.md) | 206 | `result-track:d36390a7171201517b333d2950142e40dba11dfc6d1e9e7ad4c28b997f4a2b07` |
| 30 | `theorem` | [LocallyFinite.eventually_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/declarations/locallyfinite-eventually-subset--dc59a259990e9ad2a0fa9a64.md) | 210 | `result-track:dc59a259990e9ad2a0fa9a644019eaa60a83bd6217efbb91569b319fd2b271b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
