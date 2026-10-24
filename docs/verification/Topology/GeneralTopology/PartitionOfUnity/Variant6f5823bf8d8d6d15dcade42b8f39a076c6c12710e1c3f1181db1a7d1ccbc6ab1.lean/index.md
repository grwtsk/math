# Verification target: GRWTSK.Topology.GeneralTopology.PartitionOfUnity.Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6e5fd80f460446bcf1d4859bcbae0b052c2d564",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6e5fd80f460446bcf1d4859bcbae0b052c2d564`.

Source path: `GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finprod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Algebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Paracompact` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ShrinkingLemma` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartitionOfUnity](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/partitionofunity--43d3d6a1d9c6de512970cf13.md) | 99 | `declaration-track:43d3d6a1d9c6de512970cf137809f42f51a8607fd8aa64518b7b08fd7aa8657f` |
| 2 | `structure` | [BumpCovering](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/bumpcovering--31b53d69350ad0ab02f8ba68.md) | 122 | `declaration-track:31b53d69350ad0ab02f8ba68977efe4b0c4afd9c2242d24ab821799de7e70729` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/instance--685253db9db0077943478082.md) | 137 | `declaration-track:685253db9db00779434780828bbf1406bb155f94d7daa076b2ad5512c76740e2` |
| 4 | `theorem` | [locallyFinite](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/locallyfinite--e311c82b28f823b5f3506fec.md) | 141 | `result-track:e311c82b28f823b5f3506fec582c183207b43ab7845615415300be1b99998b51` |
| 5 | `theorem` | [locallyFinite_tsupport](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/locallyfinite-tsupport--a880379d024d2e342b37d7d8.md) | 145 | `result-track:a880379d024d2e342b37d7d80139590644cce8f4bc2113d82a82ed4e88c53292` |
| 6 | `theorem` | [nonneg](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/nonneg--ed748b1484621324d5451b85.md) | 149 | `result-track:ed748b1484621324d5451b85aeabcf493e9d3c640adc5384faab69983f31a5bc` |
| 7 | `theorem` | [sum_eq_one](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/sum-eq-one--7da2a8eb41e9882943088db3.md) | 153 | `result-track:7da2a8eb41e9882943088db346c1e66a38b3fa0d7f927b787fb2ead1715453b6` |
| 8 | `theorem` | [exists_pos](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/exists-pos--724dbf561b8e20b0ca6eb168.md) | 159 | `result-track:724dbf561b8e20b0ca6eb168e8af49738796af1eaf55f44235f200b11f402db9` |
| 9 | `theorem` | [sum_le_one](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/sum-le-one--46fb5066fe8a9ef442b5b867.md) | 165 | `result-track:46fb5066fe8a9ef442b5b867894f7973babc532be9df71257673e72baa68a629` |
| 10 | `theorem` | [sum_nonneg](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/sum-nonneg--d9ff8ba021628740c40cecd2.md) | 169 | `result-track:d9ff8ba021628740c40cecd2ba181d12be42a6690d1cb8cac8b4ab52af4b77ac` |
| 11 | `theorem` | [le_one](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/le-one--609afd4866b8c515ca2f5354.md) | 173 | `result-track:609afd4866b8c515ca2f5354e318bab76c0467dcfda35e2f831af7ad6369a88c` |
| 12 | `theorem` | [continuous_smul](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/continuous-smul--58bc98539f1469e9d4fb2bd5.md) | 180 | `result-track:58bc98539f1469e9d4fb2bd539a4bd1ae5466bc3d21fa86a5decfaca17843c99` |
| 13 | `theorem` | [continuous_finsum_smul](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/continuous-finsum-smul--87e6f35f27aa05a993058ca2.md) | 189 | `result-track:87e6f35f27aa05a993058ca2dcba90b43581dc00cb9e961f191de9993a3c381c` |
| 14 | `def` | [IsSubordinate](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/issubordinate--8dba978c0d2121715cb2fb13.md) | 198 | `declaration-track:8dba978c0d2121715cb2fb1334c98a63c35ccb0a175c1c0abb7ecfd218cd37bf` |
| 15 | `theorem` | [exists_finset_nhd_support_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/exists-finset-nhd-support-subset--d85ac825b3d835158711a6f9.md) | 204 | `result-track:d85ac825b3d835158711a6f9beb6f55c391fe69a214489643cd71162454f7e39` |
| 16 | `theorem` | [IsSubordinate.continuous_finsum_smul](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/issubordinate-continuous-finsum-smul--74e8503935588816ec4cd08b.md) | 217 | `result-track:74e8503935588816ec4cd08bb634d1b68706ea8c221bb513235b71b986dc6232` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/instance--1913adc12fdc89c2d5804801.md) | 229 | `declaration-track:1913adc12fdc89c2d58048011db6cbd20fe027981f0cca1a1d57a161b43a4789` |
| 18 | `theorem` | [locallyFinite](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/locallyfinite--714314eb0f9deb13d7171130.md) | 233 | `result-track:714314eb0f9deb13d7171130e3c53fd56223386f2603a59d9b8b95f5715a5a57` |
| 19 | `theorem` | [locallyFinite_tsupport](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/locallyfinite-tsupport--5904fb9c2f4dde92285ab20d.md) | 237 | `result-track:5904fb9c2f4dde92285ab20dc15834bac3781dfb637b62c942def4b71b381d54` |
| 20 | `theorem` | [point_finite](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/point-finite--cd4426a85dc146c7a1471613.md) | 241 | `result-track:cd4426a85dc146c7a1471613a588412d0ad066c993bcc30410c032c7803716f4` |
| 21 | `theorem` | [nonneg](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/nonneg--91493522e5256587ad293217.md) | 245 | `result-track:91493522e5256587ad2932170f5cf379930d404082955491be19bff4eb2bbdd5` |
| 22 | `theorem` | [le_one](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/le-one--9bb839aa04e69b5ea01a11e6.md) | 249 | `result-track:9bb839aa04e69b5ea01a11e6d908686e88b5aa57efd5ee5894f5a50b9e932ad3` |
| 23 | `def` | [single](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/single--22598c7a42c72fee595e30bb.md) | 255 | `declaration-track:22598c7a42c72fee595e30bb722feaa8c3f8487f8886655421fcf46e8cb57411` |
| 24 | `theorem` | [coe_single](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/coe-single--b633457a281894f1b4a66faf.md) | 269 | `result-track:b633457a281894f1b4a66faf83cedd29a0d1e7f2e3d122ffd46d56e935456aac` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/instance--90d281eee6d1f6a0b042c770.md) | 272 | `declaration-track:90d281eee6d1f6a0b042c7703df30e10759fbcb8ae4aea68f3d8bdac738ea0d9` |
| 26 | `def` | [IsSubordinate](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/issubordinate--45da6b9528155c1454b0bfd5.md) | 277 | `declaration-track:45da6b9528155c1454b0bfd586cc9438e3daf5e6b95bcc32dca302ad419adf7e` |
| 27 | `theorem` | [IsSubordinate.mono](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/issubordinate-mono--9f2f29e0d035709d24ad0187.md) | 281 | `result-track:9f2f29e0d035709d24ad018796b304c3c6e30dcf7f0a77f2d8efd7f4c0ba54f4` |
| 28 | `theorem` | [exists_isSubordinate_of_locallyFinite_of_prop](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/exists-issubordinate-of-locallyfinite-of-prop--7eaf1ef731ec8af58273c7e9.md) | 292 | `result-track:7eaf1ef731ec8af58273c7e9f3e2ddbb77b2b953ac3b96558aa5442b2b70dab5` |
| 29 | `theorem` | [exists_isSubordinate_of_locallyFinite](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/exists-issubordinate-of-locallyfinite--fc2774e1762e54141c343997.md) | 318 | `result-track:fc2774e1762e54141c343997692ebf7c879876a71cad9ae39fc9b07819c88da4` |
| 30 | `theorem` | [exists_isSubordinate_of_prop](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/exists-issubordinate-of-prop--5034244f41ff8e891a878c8b.md) | 333 | `result-track:5034244f41ff8e891a878c8b6a618e619647c4e1dd73d2b131897ab6a7637b0a` |
| 31 | `theorem` | [exists_isSubordinate](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/exists-issubordinate--befe6b58ce383f54d8cacfed.md) | 345 | `result-track:befe6b58ce383f54d8cacfeddc5b4718662c998ca6e56807b22a3d10ae0032cf` |
| 32 | `def` | [ind](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/ind--dbac758e7c158f75b8cbaa40.md) | 353 | `declaration-track:dbac758e7c158f75b8cbaa4069f1541d22b5d71d501b8342c37d4d5a261085cf` |
| 33 | `theorem` | [eventuallyEq_one](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/eventuallyeq-one--d8b64e82c48d4563e729899c.md) | 357 | `result-track:d8b64e82c48d4563e729899c353a5d7102f873a39364682e8a10ac75caa80cb3` |
| 34 | `theorem` | [ind_apply](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/ind-apply--a3da9c66c31a035288bcbec4.md) | 361 | `result-track:a3da9c66c31a035288bcbec4556322f39dfefa458dd304083c85fb77ebd01a31` |
| 35 | `def` | [toPOUFun](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/topoufun--62a87284f93d4544fccc8329.md) | 375 | `declaration-track:62a87284f93d4544fccc8329e1136d3a2ffc6d4634b23a75ab2d8dc53a4d130e` |
| 36 | `theorem` | [toPOUFun_zero_of_zero](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/topoufun-zero-of-zero--107a317519cea937d5aa2044.md) | 379 | `result-track:107a317519cea937d5aa20449825055391bdfd5f2bb52ec3cf1d5d5964d0c83a` |
| 37 | `theorem` | [support_toPOUFun_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/support-topoufun-subset--8f664ba0e8ee69e6c0d578ea.md) | 383 | `result-track:8f664ba0e8ee69e6c0d578eaffab9b1dce6731275a3c453cc7b4b89b737a2472` |
| 38 | `theorem` | [toPOUFun_eq_mul_prod](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/topoufun-eq-mul-prod--e768bb3af8c2b8bc6310d80b.md) | 387 | `result-track:e768bb3af8c2b8bc6310d80bd146d0125ef1ea910bcdd1881973100c8097e75b` |
| 39 | `theorem` | [sum_toPOUFun_eq](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/sum-topoufun-eq--96ad6178d3c6c58ed54670f0.md) | 396 | `result-track:96ad6178d3c6c58ed54670f04131db9f0c1b1cc8a425819e090129edc0b5341a` |
| 40 | `theorem` | [exists_finset_toPOUFun_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/exists-finset-topoufun-eventuallyeq--255564c353378562c77dfc87.md) | 413 | `result-track:255564c353378562c77dfc871bda57a08fa3bc98c5b33cd7f2635901ed92da37` |
| 41 | `theorem` | [continuous_toPOUFun](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/continuous-topoufun--eee834209004e4f69f6361c3.md) | 424 | `result-track:eee834209004e4f69f6361c343ae2d5fff5ae1aeca1745090abda944eaedd09c` |
| 42 | `def` | [toPartitionOfUnity](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/topartitionofunity--05861ed87962d6f2c42c46fb.md) | 439 | `declaration-track:05861ed87962d6f2c42c46fb42e4c5b6bd727502e21934c8e8fc69a94afa8a69` |
| 43 | `theorem` | [toPartitionOfUnity_apply](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/topartitionofunity-apply--57ee6ecc2f4acb7d93b053f5.md) | 455 | `result-track:57ee6ecc2f4acb7d93b053f5458dcc9e7e768446650c5f762725f61fee3b2a62` |
| 44 | `theorem` | [toPartitionOfUnity_eq_mul_prod](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/topartitionofunity-eq-mul-prod--9c6666a00ee37c106c4259b2.md) | 459 | `result-track:9c6666a00ee37c106c4259b2173d49c6b42d19993b0dd4ba7278023fcbf593a6` |
| 45 | `theorem` | [exists_finset_toPartitionOfUnity_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/exists-finset-topartitionofunity-eventuallyeq--9265dbc5661e6eb8c4865949.md) | 465 | `result-track:9265dbc5661e6eb8c486594968155088a1ef225efcf18a6465f4527acc939a91` |
| 46 | `theorem` | [toPartitionOfUnity_zero_of_zero](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/topartitionofunity-zero-of-zero--d202fdaee657724cbff25352.md) | 470 | `result-track:d202fdaee657724cbff25352ed83f9a906a9f52a2b62be39873b9e44b2cd38df` |
| 47 | `theorem` | [support_toPartitionOfUnity_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/support-topartitionofunity-subset--d4bf1635fee65f9b263573e6.md) | 475 | `result-track:d4bf1635fee65f9b263573e685e6172e520efa8a88185667c8a019afc1b0da39` |
| 48 | `theorem` | [sum_toPartitionOfUnity_eq](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/sum-topartitionofunity-eq--ff00c6d238381c52f5abc2b5.md) | 480 | `result-track:ff00c6d238381c52f5abc2b5579ac9158133efe2654a0797ceaed25d38e3275c` |
| 49 | `theorem` | [IsSubordinate.toPartitionOfUnity](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/issubordinate-topartitionofunity--1ff6fc1699d5ebd14306a15c.md) | 485 | `result-track:1ff6fc1699d5ebd14306a15c2a206b7f104bf77f87234d3ee83542bd5d1aa90b` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/instance--3bb3020c8895e0c7da0ccbd7.md) | 496 | `declaration-track:3bb3020c8895e0c7da0ccbd76e3a4bd9e45233966260a3fd33786cc82d0c7e34` |
| 51 | `theorem` | [exists_isSubordinate_of_locallyFinite](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/exists-issubordinate-of-locallyfinite--66ed219d58e67c58014a5bd2.md) | 503 | `result-track:66ed219d58e67c58014a5bd27a933c794d8c0088027f15656e6b873ff3b8c6e9` |
| 52 | `theorem` | [exists_isSubordinate](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/declarations/exists-issubordinate--08140b714173de701f00da29.md) | 512 | `result-track:08140b714173de701f00da296b934d96e1bf7b0d55ecb653a5f5adbd42b789b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
