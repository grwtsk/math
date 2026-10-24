# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e2dcc8878d4887351dca311199f68dcad6708d9",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e2dcc8878d4887351dca311199f68dcad6708d9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/sumlift--c1cfe203a5d9525112cda382.md) | 40 | `declaration-track:c1cfe203a5d9525112cda3826ee6230db4fad2641bb84ac4deb630d798e5e72e` |
| 2 | `theorem` | [mem_sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/mem-sumlift--8d96d3154c5832fb30c15475.md) | 48 | `result-track:8d96d3154c5832fb30c15475280a7e23c47e2b3945d94820c1a08bb001b8ac15` |
| 3 | `theorem` | [inl_mem_sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/inl-mem-sumlift--594f1843c6886a7f136a6731.md) | 64 | `result-track:594f1843c6886a7f136a67312650c985f4d5253a633ee0869481c033eba7102d` |
| 4 | `theorem` | [inr_mem_sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/inr-mem-sumlift--5baf6a80cc6049c4074c767d.md) | 71 | `result-track:5baf6a80cc6049c4074c767d478b0f0e4ac42cd8935f23fe97a757caacf1411d` |
| 5 | `theorem` | [sumLift₂_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/sumlift-eq-empty--aff8a21a9daa9717cb581166.md) | 78 | `result-track:aff8a21a9daa9717cb58116676fd235e2aa6113f7b2992f0b1268a860618a69e` |
| 6 | `theorem` | [sumLift₂_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/sumlift-nonempty--0cdcee1c4be653d714d71c49.md) | 92 | `result-track:0cdcee1c4be653d714d71c49d1fd77eb03789004cbe786b4d3c04801b40b7506` |
| 7 | `theorem` | [sumLift₂_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/sumlift-mono--aaa83f59d5b93ba9406afb17.md) | 98 | `result-track:aaa83f59d5b93ba9406afb17749d964365a465c489dcfedffb8f4d3dd1712769` |
| 8 | `def` | [sumLexLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/sumlexlift--92819ca5f2ea34f9fc2dc033.md) | 114 | `declaration-track:92819ca5f2ea34f9fc2dc033333fb8eb356cf12c00a2c1ac44f786197a34d565` |
| 9 | `lemma` | [sumLexLift_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/sumlexlift-inl-inl--821d967e344fcbc28a0bd4c7.md) | 121 | `result-track:821d967e344fcbc28a0bd4c76066494f62bdd1ee1f48c9261865c6e17f0bee33` |
| 10 | `lemma` | [sumLexLift_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/sumlexlift-inl-inr--12901910a491513ceabbfe36.md) | 125 | `result-track:12901910a491513ceabbfe3699ba2aee96e68cbf114b86dde9cf17a70def505b` |
| 11 | `lemma` | [sumLexLift_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/sumlexlift-inr-inl--7954595767311e9513c845cc.md) | 129 | `result-track:7954595767311e9513c845ccbf9e1c8b928fd93847f053a6ea41b5469791fbe0` |
| 12 | `lemma` | [sumLexLift_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/sumlexlift-inr-inr--896581d238ba87f47752b7d9.md) | 132 | `result-track:896581d238ba87f47752b7d91af18d509d15a66bb3645835734cf3a99f230aaf` |
| 13 | `lemma` | [mem_sumLexLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/mem-sumlexlift--198ec85b717dab932faea7be.md) | 137 | `result-track:198ec85b717dab932faea7be2cfc97f8058bfdf52bc43155e47f1f813dcb8061` |
| 14 | `lemma` | [inl_mem_sumLexLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/inl-mem-sumlexlift--069bac1cd15dcb901a8915f4.md) | 164 | `result-track:069bac1cd15dcb901a8915f4291911d2143c87a95385fa7d77d1109e42b755d1` |
| 15 | `lemma` | [inr_mem_sumLexLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/inr-mem-sumlexlift--b2a2586565b0b1640e8faa97.md) | 170 | `result-track:b2a2586565b0b1640e8faa97551c831755b9ad06c8121c0c5c656c65ff7cc900` |
| 16 | `lemma` | [sumLexLift_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/sumlexlift-mono--e5e9a98f825eab8ed96e5376.md) | 176 | `result-track:e5e9a98f825eab8ed96e53764145f47cf9062a8682723aff47c776a9897ee70d` |
| 17 | `lemma` | [sumLexLift_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/sumlexlift-eq-empty--72ee661d1a37c6a575cfe5d2.md) | 183 | `result-track:72ee661d1a37c6a575cfe5d2abdcf8d7c9f91c9a458fbd14845639bbe022e86e` |
| 18 | `lemma` | [sumLexLift_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/sumlexlift-nonempty--eee8d197523b080707691a3a.md) | 197 | `result-track:eee8d197523b080707691a3a077bbbc396caae1bdf44664b41c6ccd1d0393c0c` |
| 19 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/instlocallyfiniteorder--86e6edb18ea8c2768708de0c.md) | 220 | `declaration-track:86e6edb18ea8c2768708de0c1ce27237db9e0e721b9955a60fbfc64acac0a302` |
| 20 | `theorem` | [Icc_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/icc-inl-inl--7c8ff4a8487c6e7564f049b6.md) | 232 | `result-track:7c8ff4a8487c6e7564f049b67dc7b0b108d622da5c0625dd09f860b62a46dd9f` |
| 21 | `theorem` | [Ico_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ico-inl-inl--9e1549092ec549a46639e531.md) | 235 | `result-track:9e1549092ec549a46639e53191174b0d35f4aac240887a624a349a3c99be85d4` |
| 22 | `theorem` | [Ioc_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioc-inl-inl--225e6db813f8a48c11633842.md) | 238 | `result-track:225e6db813f8a48c1163384272c0af39d194e2fa1e734a78a7a1d826b9e8c64c` |
| 23 | `theorem` | [Ioo_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioo-inl-inl--cccf00dbfc3dae403db7fba5.md) | 241 | `result-track:cccf00dbfc3dae403db7fba57363d468f9734eb0c7556b43029a988c55e36d81` |
| 24 | `theorem` | [Icc_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/icc-inl-inr--47c98438e8fab7531aea4fa0.md) | 245 | `result-track:47c98438e8fab7531aea4fa06e3afd5d6097e670ccd1e5cd432f11f37dde2eea` |
| 25 | `theorem` | [Ico_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ico-inl-inr--a2179d485f1829d56afb5504.md) | 249 | `result-track:a2179d485f1829d56afb55045b535cf9a77d782e5ff720787c3866e585543cc8` |
| 26 | `theorem` | [Ioc_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioc-inl-inr--c0a993288a8cdbc213817baa.md) | 253 | `result-track:c0a993288a8cdbc213817baa0e2fa9ff14a80cec4bf7fe1d170d84c71f749dba` |
| 27 | `theorem` | [Ioo_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioo-inl-inr--70eed6c52a107e29be8ac558.md) | 257 | `result-track:70eed6c52a107e29be8ac5585ba42f7de7cc5ce0cf421eb3cac025f9c8e8c638` |
| 28 | `theorem` | [Icc_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/icc-inr-inl--b9120ba4bda3436a5c2d141b.md) | 261 | `result-track:b9120ba4bda3436a5c2d141b58958b5b5d09246c48e0a0a6ef0202f19fba3141` |
| 29 | `theorem` | [Ico_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ico-inr-inl--2e668fb6fa6da0458e15e408.md) | 265 | `result-track:2e668fb6fa6da0458e15e4085dc30e916998254314382cdc9a8e352799badd10` |
| 30 | `theorem` | [Ioc_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioc-inr-inl--8989403fe8ca8eaac9d9fb9e.md) | 269 | `result-track:8989403fe8ca8eaac9d9fb9ecc8a9c0529fcb23c7f44bbba518d2aac05646c2c` |
| 31 | `theorem` | [Ioo_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioo-inr-inl--8679e1f76b03c47543dd687f.md) | 273 | `result-track:8679e1f76b03c47543dd687f47b043dc6c9620efd615a638be89adbb79d394cf` |
| 32 | `theorem` | [Icc_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/icc-inr-inr--bfea12052adab6247bd681d0.md) | 276 | `result-track:bfea12052adab6247bd681d0eb8cfdf14cf4530094e31dcdbde994ad936ea45d` |
| 33 | `theorem` | [Ico_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ico-inr-inr--8c34e50cef72a313ecc9209c.md) | 279 | `result-track:8c34e50cef72a313ecc9209c3638d5c6fd99b0d976a5f52f08764c1cc2c4b6a1` |
| 34 | `theorem` | [Ioc_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioc-inr-inr--9774db07b8073dadef5fb1ed.md) | 282 | `result-track:9774db07b8073dadef5fb1ed0fd7fc3adb27d88b1d5297bac35685b6942a77f5` |
| 35 | `theorem` | [Ioo_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioo-inr-inr--c20a2fa646a34eceff13730c.md) | 285 | `result-track:c20a2fa646a34eceff13730cb72b46ae789f7fcec3c67d1cba9b01f2dc19c2d0` |
| 36 | `elab` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/elab--12dcf7b86b40d13ffb3167b6.md) | 297 | `declaration-track:12dcf7b86b40d13ffb3167b660c0825f9ce364f0b95873eecefce163be91bbfd` |
| 37 | `instance` | [locallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/locallyfiniteorder--75636c58375579db8b97112e.md) | 302 | `declaration-track:75636c58375579db8b97112e20aa55746409e30558432a25f44687fdbd5f4efb` |
| 38 | `lemma` | [Icc_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/icc-inl-inl--06e64cdb91e6bdab4906390c.md) | 318 | `result-track:06e64cdb91e6bdab4906390c414f4c38e7aded848cd65bafb9ba296de74559ff` |
| 39 | `lemma` | [Ico_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ico-inl-inl--b2092cabbdb5a47b8c38a923.md) | 322 | `result-track:b2092cabbdb5a47b8c38a9230891e0c7b99cb24e6309542cd21549153cfbaa58` |
| 40 | `lemma` | [Ioc_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioc-inl-inl--d5ad26c8750d36c23d0f21b8.md) | 326 | `result-track:d5ad26c8750d36c23d0f21b86d297413487e679f5b79ab6c3e8c574bae4656f8` |
| 41 | `lemma` | [Ioo_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioo-inl-inl--782e16ec90492f44fefc0667.md) | 330 | `result-track:782e16ec90492f44fefc06675527cca5a41bc37ae5b1f631f02176ebedb944a3` |
| 42 | `lemma` | [Icc_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/icc-inl-inr--7788f336b702641d41061f05.md) | 335 | `result-track:7788f336b702641d41061f05e16b57a524e8ac1656a947c7d582799274f2f514` |
| 43 | `lemma` | [Ico_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ico-inl-inr--acc10f46768c9314a00a1dda.md) | 338 | `result-track:acc10f46768c9314a00a1dda5e1bcb5cbb048c251269c2cdfa1496b4592076e5` |
| 44 | `lemma` | [Ioc_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioc-inl-inr--49582e19bf98b4f899fdb8fd.md) | 341 | `result-track:49582e19bf98b4f899fdb8fdaf2bd8b874a6b7fa20d80263b570bea6ba0908bf` |
| 45 | `lemma` | [Ioo_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioo-inl-inr--dfdccbf91cffad3f64843f8a.md) | 344 | `result-track:dfdccbf91cffad3f64843f8ab7527c3e832718416f192a2e1c64060b877fd757` |
| 46 | `lemma` | [Icc_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/icc-inr-inl--ea802aefb2d862c2ba432e61.md) | 347 | `result-track:ea802aefb2d862c2ba432e618d3142181fbddaafb53306da0e5250a174b66047` |
| 47 | `lemma` | [Ico_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ico-inr-inl--8955cd9063b3fce88f5312be.md) | 350 | `result-track:8955cd9063b3fce88f5312be609d6356b79df59ceece4de031abb78bb390cbd4` |
| 48 | `lemma` | [Ioc_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioc-inr-inl--a113744c491bee258d912fbd.md) | 353 | `result-track:a113744c491bee258d912fbd5cda5ca1b254a5bc4b55eb5faa5079cd561d72f5` |
| 49 | `lemma` | [Ioo_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioo-inr-inl--cbefb2167e80f266e8d24254.md) | 356 | `result-track:cbefb2167e80f266e8d24254bdaa58c3f943a5f6f049c107d97674ca378eb1dc` |
| 50 | `lemma` | [Icc_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/icc-inr-inr--2fd4dd75c6ad4c46cda9e6ba.md) | 358 | `result-track:2fd4dd75c6ad4c46cda9e6ba684d22e32f4deace841f6784a30db59f28968e15` |
| 51 | `lemma` | [Ico_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ico-inr-inr--0d5ee8bd02e0537688edcd3c.md) | 362 | `result-track:0d5ee8bd02e0537688edcd3c9f55591fa5b246da66987f7ea43075f309c23987` |
| 52 | `lemma` | [Ioc_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioc-inr-inr--8e0a1a7d5ac78c5a1bc1ef2b.md) | 366 | `result-track:8e0a1a7d5ac78c5a1bc1ef2b23cc5c60d15ed69377683ea439c68be73b40645d` |
| 53 | `lemma` | [Ioo_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/declarations/ioo-inr-inr--ed55682d60e18dfe79350822.md) | 370 | `result-track:ed55682d60e18dfe79350822f6cc8dcff103f363e93c737993f93c57ffa5516c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
