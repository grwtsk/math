# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Disjoint.Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58f6914f26bfe5557aff93a9d68c4be1f18c6106",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58f6914f26bfe5557aff93a9d68c4be1f18c6106`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iic_disjoint_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iic-disjoint-ioi--ab37c40d0dd2b4cea6edf7bb.md) | 42 | `result-track:ab37c40d0dd2b4cea6edf7bbeb355d79dc7c317cdf6dedb4cba2ddd1fb8addd8` |
| 2 | `theorem` | [Iic_disjoint_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iic-disjoint-ioc--122b2a60cbb11e37e4b7b3af.md) | 47 | `result-track:122b2a60cbb11e37e4b7b3afacc344558e8b4a200d86ac1402fdbb78d4613403` |
| 3 | `theorem` | [Ioc_disjoint_Ioc_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/ioc-disjoint-ioc-same--746e32ca3f640554eb52d2b9.md) | 52 | `result-track:746e32ca3f640554eb52d2b94e71a2101cd9c8a071c53516ef7ded0c85235c06` |
| 4 | `theorem` | [Ico_disjoint_Ico_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/ico-disjoint-ico-same--0ae4a70e8a2ffc244d490b2b.md) | 57 | `result-track:0ae4a70e8a2ffc244d490b2b1281c259060a6d75ecb2103de5f007bdbfbf7060` |
| 5 | `theorem` | [Ici_disjoint_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/ici-disjoint-iic--1318f973800b1ac284995186.md) | 62 | `result-track:1318f973800b1ac2849951863278c2c7c574f1c71ad08526ee7937ca58ff626d` |
| 6 | `theorem` | [Iic_disjoint_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iic-disjoint-ici--6dcafac7c6e4656460a4a15b.md) | 67 | `result-track:6dcafac7c6e4656460a4a15b6c2a08877fb01ca3c3e9721f52c8c81f0a27969e` |
| 7 | `theorem` | [iUnion_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-iic--5163cb2b20260b91dee1f1d9.md) | 72 | `result-track:5163cb2b20260b91dee1f1d936f1bf9a94456077927d3c585e571576e1d74e96` |
| 8 | `theorem` | [iUnion_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-ici--ba1c4e477380efff543bce1e.md) | 77 | `result-track:ba1c4e477380efff543bce1e9a693103ff378e6bb2dee816fb52b802c839655a` |
| 9 | `theorem` | [iUnion_Icc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-icc-right--b1cd497f8981b126a671f81a.md) | 82 | `result-track:b1cd497f8981b126a671f81afb6dcb0d58b2a6f23e9dc34f42d7d39efbf31109` |
| 10 | `theorem` | [iUnion_Ioc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-ioc-right--e1c640fa04313deb4cae61b7.md) | 87 | `result-track:e1c640fa04313deb4cae61b777716d77388910ead7cac4c93e7c7d2971abac3f` |
| 11 | `theorem` | [iUnion_Icc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-icc-left--dfb0dfe89fa6968515141c2c.md) | 92 | `result-track:dfb0dfe89fa6968515141c2c9844af74d0eb0b2275da3b8d616155610ca7cf96` |
| 12 | `theorem` | [iUnion_Ico_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-ico-left--8c21888db0ad5aa093b6f13e.md) | 97 | `result-track:8c21888db0ad5aa093b6f13efad63be0faa1817de9d88f640bb0deade7320f6a` |
| 13 | `theorem` | [iUnion_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-iio--71afedcbdcb983eb40e18b50.md) | 102 | `result-track:71afedcbdcb983eb40e18b507cc50d732b3ba3704dce50728dbd6e3a4d740300` |
| 14 | `theorem` | [iUnion_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-ioi--f52b56a674cc5f7ff9a858b7.md) | 107 | `result-track:f52b56a674cc5f7ff9a858b7a2da9ec747f4ac15b07e83397abb26fd804a0f31` |
| 15 | `theorem` | [iUnion_Ico_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-ico-right--d569fd838bb520d482d0d8b1.md) | 112 | `result-track:d569fd838bb520d482d0d8b137b67046a7f65ca0cf25e8986d07b2b0ed9ce753` |
| 16 | `theorem` | [iUnion_Ioo_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-ioo-right--e606e7c6b787fb8f7c74cc01.md) | 117 | `result-track:e606e7c6b787fb8f7c74cc01d22e6494c8dffb3131386bc8fa769e721c133192` |
| 17 | `theorem` | [iUnion_Ioc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-ioc-left--141e501cd7937803bb49e619.md) | 122 | `result-track:141e501cd7937803bb49e619b7836b415149432bc3f189f6047a2d7fd3e8f788` |
| 18 | `theorem` | [iUnion_Ioo_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-ioo-left--11c52787b1b243a8710e3559.md) | 127 | `result-track:11c52787b1b243a8710e355980167ef1a3095748f663d68ceda490dd9bd8ab66` |
| 19 | `theorem` | [Ico_disjoint_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/ico-disjoint-ico--0aa49f0b5956506f43d50d0e.md) | 138 | `result-track:0aa49f0b5956506f43d50d0ee42cdecaf5ccd0d3608ad42d818a640847eee6c8` |
| 20 | `theorem` | [Ioc_disjoint_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/ioc-disjoint-ioc--9bea92a7aea299ef7ac925f8.md) | 144 | `result-track:9bea92a7aea299ef7ac925f86f83c89bf0520e4597e39cacde0e3dce0c371166` |
| 21 | `theorem` | [eq_of_Ico_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/eq-of-ico-disjoint--3f405859aff438054d55459b.md) | 151 | `result-track:3f405859aff438054d55459b7deff91e9d76b97dd1b2c177db0b463bdcaf98e7` |
| 22 | `theorem` | [iUnion_Ico_eq_Iio_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-ico-eq-iio-self-iff--cd905d7538965b2a7dd72460.md) | 159 | `result-track:cd905d7538965b2a7dd724608c1d852f1a749be0e1a641ff180bd0bfafa9a0af` |
| 23 | `theorem` | [iUnion_Ioc_eq_Ioi_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-ioc-eq-ioi-self-iff--8030030148f5e713e573c42e.md) | 165 | `result-track:8030030148f5e713e573c42e83e970f0b150fbb3a7c0010ce80627137ab5fb0b` |
| 24 | `theorem` | [biUnion_Ico_eq_Iio_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/biunion-ico-eq-iio-self-iff--b5b700c2016c1f63aa97fe91.md) | 171 | `result-track:b5b700c2016c1f63aa97fe91e4f461012f2576fb463da11bacca2cacafa6234f` |
| 25 | `theorem` | [biUnion_Ioc_eq_Ioi_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/biunion-ioc-eq-ioi-self-iff--ff40669e218cb03b9d194462.md) | 177 | `result-track:ff40669e218cb03b9d194462571bc829d3e2fdd5d3b582f39fc6b1945453acae` |
| 26 | `theorem` | [IsGLB.biUnion_Ioi_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/isglb-biunion-ioi-eq--544847e9f4b8b191636d195f.md) | 190 | `result-track:544847e9f4b8b191636d195f6516c57d3cb7f5899fd6b3d52911f0922112c5c8` |
| 27 | `theorem` | [IsGLB.iUnion_Ioi_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/isglb-iunion-ioi-eq--c809ebdf1361703c34874ee6.md) | 197 | `result-track:c809ebdf1361703c34874ee6cd051e268819c3d570bf39bf128ce0492df1cc80` |
| 28 | `theorem` | [IsLUB.biUnion_Iio_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/islub-biunion-iio-eq--03b1543820e72c16cf3c8476.md) | 201 | `result-track:03b1543820e72c16cf3c8476639028e28d49f4110324c578080ea535bec434b9` |
| 29 | `theorem` | [IsLUB.iUnion_Iio_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/islub-iunion-iio-eq--d1d96c3eec8e58054509ce14.md) | 205 | `result-track:d1d96c3eec8e58054509ce1489273f54022a62811d7acd59d561e581b20e0e0b` |
| 30 | `theorem` | [IsGLB.biUnion_Ici_eq_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/isglb-biunion-ici-eq-ioi--a70c9edb8a99164d47039d50.md) | 209 | `result-track:a70c9edb8a99164d47039d50437e735be1fe3bc56bb11e67547cb5a6a7b76466` |
| 31 | `theorem` | [IsGLB.biUnion_Ici_eq_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/isglb-biunion-ici-eq-ici--eb21a0367f1108a4191414c3.md) | 218 | `result-track:eb21a0367f1108a4191414c37d9b1d4258f4f66255cceb18c88bbc8dd827c6b1` |
| 32 | `theorem` | [IsLUB.biUnion_Iic_eq_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/islub-biunion-iic-eq-iio--d10e4e314642798ce73635f7.md) | 226 | `result-track:d10e4e314642798ce73635f738c985bc010a9d8800cfe4ffe89e0dffbd009fac` |
| 33 | `theorem` | [IsLUB.biUnion_Iic_eq_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/islub-biunion-iic-eq-iic--3a94ef96e8df78ba1c9e0233.md) | 231 | `result-track:3a94ef96e8df78ba1c9e0233d03fba569774abccc1ee315504afeb11205bb983` |
| 34 | `theorem` | [iUnion_Ici_eq_Ioi_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-ici-eq-ioi-iinf--80a4fa8f89075aeaaf6b92de.md) | 235 | `result-track:80a4fa8f89075aeaaf6b92de7ca807cabc0fdd1ac3613b84c5b6f081e6461202` |
| 35 | `theorem` | [iUnion_Iic_eq_Iio_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-iic-eq-iio-isup--cedeb35175aa4dfe5cf8464b.md) | 241 | `result-track:cedeb35175aa4dfe5cf8464bf15a8cb19bcc9760baefda6b6625a8694e332a10` |
| 36 | `theorem` | [iUnion_Ici_eq_Ici_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-ici-eq-ici-iinf--c19b92914eb9001f59e39afc.md) | 246 | `result-track:c19b92914eb9001f59e39afc9095a8e2eef145f87cdde82312547f7757f93bdd` |
| 37 | `theorem` | [iUnion_Iic_eq_Iic_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant8314de0b97e473dc49158c74d4e1daf44cbe2491f348f8f25cb72a264b3a8747.lean/declarations/iunion-iic-eq-iic-isup--f35567218b3d726d0325f0fd.md) | 252 | `result-track:f35567218b3d726d0325f0fd9ce33c615b1a08e5261b14a822a3e94a1a6ab8ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
