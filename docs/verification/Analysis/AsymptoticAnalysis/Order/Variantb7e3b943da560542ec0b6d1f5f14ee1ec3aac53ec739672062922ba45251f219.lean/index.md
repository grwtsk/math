# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Order.Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98450a98c3bca1eb630117e4db0dc098672f738c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98450a98c3bca1eb630117e4db0dc098672f738c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.MonotoneConvergence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tsum_le_of_sum_range_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-le-of-sum-range-le--1e58dc2925b7a25465840705.md) | 30 | `result-track:1e58dc2925b7a254658407050e001c62302446bfd14b4673668cd086889d5567` |
| 2 | `theorem` | [hasSum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/hassum-le--255216ef32cdd6376a8313f4.md) | 43 | `result-track:255216ef32cdd6376a8313f433cb7b8c153eb54dfee5ff93e6d28dc5dbc8e762` |
| 3 | `theorem` | [hasSum_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/hassum-mono--5e1776ccd81b390aee14ac0a.md) | 48 | `result-track:5e1776ccd81b390aee14ac0af4d440f96262b7e6b4420cb3eb9a752d8f2aac28` |
| 4 | `theorem` | [hasSum_le_of_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/hassum-le-of-sum-le--ed110c6aa5182871d8cb6c3e.md) | 52 | `result-track:ed110c6aa5182871d8cb6c3ea2c92f63481d09c62ad2f51b2f7b47d286c15970` |
| 5 | `theorem` | [le_hasSum_of_le_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/le-hassum-of-le-sum--5023054fa48eaa465905206c.md) | 56 | `result-track:5023054fa48eaa465905206c4708398d6819c5ea656085589a4a7033b7b212a0` |
| 6 | `theorem` | [hasSum_le_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/hassum-le-inj--2b1fb8ec670fb86fcbd76e11.md) | 60 | `result-track:2b1fb8ec670fb86fcbd76e11974df4d144ff5452a0d8a88d49a5fe222a01e92e` |
| 7 | `theorem` | [tsum_le_tsum_of_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-le-tsum-of-inj--cf399e8fda8db16b0923da9d.md) | 72 | `result-track:cf399e8fda8db16b0923da9d430d53c948279156c6871d88eb437dce0ceaf0e6` |
| 8 | `theorem` | [sum_le_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/sum-le-hassum--0715a1aaaea6396e8b5279e6.md) | 78 | `result-track:0715a1aaaea6396e8b5279e6b11cf162ab3eed971f7dcd64f2a59f4d54d74f5f` |
| 9 | `theorem` | [isLUB_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/islub-hassum--d919f60a7a9f093d826a7800.md) | 84 | `result-track:d919f60a7a9f093d826a780084421c8ddbec8e247407db3fce782c655a1b8893` |
| 10 | `theorem` | [le_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/le-hassum--82bba0ced4c2d2d6e62f1364.md) | 89 | `result-track:82bba0ced4c2d2d6e62f1364aa831badd063fa58b64da943e3f96b86a63241fb` |
| 11 | `theorem` | [sum_le_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/sum-le-tsum--f5f0eab102102cf95dec5ae8.md) | 95 | `result-track:f5f0eab102102cf95dec5ae8c038e5d394faba5b5aeea66998817d2282edd136` |
| 12 | `theorem` | [le_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/le-tsum--ffb6a2d21d4237c78764927b.md) | 100 | `result-track:ffb6a2d21d4237c78764927b2889e22921d5cee1042c72c91792805d2949dc0c` |
| 13 | `theorem` | [tsum_le_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-le-tsum--85320a61136639a955b0037f.md) | 104 | `result-track:85320a61136639a955b0037fe2dbcb172114ea80b5b079f0eb9e01f926d25088` |
| 14 | `theorem` | [tsum_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-mono--70c01bc628619c952e1611cf.md) | 110 | `result-track:70c01bc628619c952e1611cfb4e2cb9ad4ed22a25fabdc22359fddaafb4451fd` |
| 15 | `theorem` | [tsum_le_of_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-le-of-sum-le--7a85949b055daae458ddbac9.md) | 114 | `result-track:7a85949b055daae458ddbac9428ab82203f4abe0ab5f9d7e63ee1301a92f54cf` |
| 16 | `theorem` | [tsum_le_of_sum_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-le-of-sum-le--a00cec78d7c4b7d1b116f901.md) | 118 | `result-track:a00cec78d7c4b7d1b116f90111c0c5befa6d3cc711bd00704b820723113f626a` |
| 17 | `theorem` | [HasSum.nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/hassum-nonneg--93b02c778c5e599dbee781e9.md) | 125 | `result-track:93b02c778c5e599dbee781e9f2bc8ad243440e2d75aa7421ff91a76371aaa65a` |
| 18 | `theorem` | [HasSum.nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/hassum-nonpos--3b80bbe56db9c6361b2d649f.md) | 129 | `result-track:3b80bbe56db9c6361b2d649f80016171f4d14f13a9c1d1e7cd6e79d83d00629c` |
| 19 | `theorem` | [tsum_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-nonneg--e6283ce3b528ee7391705cf6.md) | 133 | `result-track:e6283ce3b528ee7391705cf63875275ce23c3b18e713390a7fed978c34555b23` |
| 20 | `theorem` | [tsum_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-nonpos--96421e4cd955fbfdba2a1131.md) | 139 | `result-track:96421e4cd955fbfdba2a1131a8807e1118af34de4ca22c28adc858fd3dc50328` |
| 21 | `theorem` | [hasSum_zero_iff_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/hassum-zero-iff-of-nonneg--7fb2eb963e8ffa5a2d10659e.md) | 146 | `result-track:7fb2eb963e8ffa5a2d10659e0c87b97f55ea1bfd42ce786ebd3afc39a56e785c` |
| 22 | `theorem` | [hasSum_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/hassum-lt--f7edd7b7eb0108b0a85ccb4e.md) | 161 | `result-track:f7edd7b7eb0108b0a85ccb4e201e91c764d4b3350187f9300103007937322b80` |
| 23 | `theorem` | [hasSum_strict_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/hassum-strict-mono--051ecdbf2765fc89df64210d.md) | 168 | `result-track:051ecdbf2765fc89df64210d0845191341e95abf24b0aae2283a7135aa98aca9` |
| 24 | `theorem` | [tsum_lt_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-lt-tsum--2c5884e0f60f67025209184c.md) | 173 | `result-track:2c5884e0f60f67025209184cdd827505c762736ad53d8e86c08dda44239e651d` |
| 25 | `theorem` | [tsum_strict_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-strict-mono--76fb2b02b883261f8d5ad113.md) | 179 | `result-track:76fb2b02b883261f8d5ad113d1685b411c5e977492341cae9b8e5ef8b89244d4` |
| 26 | `theorem` | [tsum_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-pos--6701f1dd690e5cf6b3bc3e4b.md) | 185 | `result-track:6701f1dd690e5cf6b3bc3e4bc32019cb8333d2de476d68e7614526c01fb3a836` |
| 27 | `theorem` | [le_hasSum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/le-hassum--5149691297a430873b3186bb.md) | 198 | `result-track:5149691297a430873b3186bb17b0190b8dfab732bc32db475d9ab7a9ff1b87c2` |
| 28 | `theorem` | [le_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/le-tsum--ad1803966dea1274b2985e68.md) | 202 | `result-track:ad1803966dea1274b2985e686fbed9f6f22ca541b9661521d175a97ca3b772db` |
| 29 | `theorem` | [hasSum_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/hassum-zero-iff--e1578cf146d6ba3abcedd0ed.md) | 206 | `result-track:e1578cf146d6ba3abcedd0ed2b17d4f97488d839c8e318df5340bdedcc2a7c36` |
| 30 | `theorem` | [tsum_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-eq-zero-iff--f53e9ad4b80eb293bb52c41e.md) | 210 | `result-track:f53e9ad4b80eb293bb52c41e5b11f4a12ceced9e1253d8f232b1c43b3efbf24b` |
| 31 | `theorem` | [tsum_ne_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/tsum-ne-zero-iff--2067396284288aaa7f91d6cd.md) | 214 | `result-track:2067396284288aaa7f91d6cda768800c6ecc78518c0274622763135917c841bb` |
| 32 | `theorem` | [isLUB_hasSum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/islub-hassum--84f5f5513aff491a6ee15642.md) | 218 | `result-track:84f5f5513aff491a6ee15642fb26acb7716b705493466aafc068bb0cf644dbf4` |
| 33 | `theorem` | [hasSum_of_isLUB_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/hassum-of-islub-of-nonneg--41e9268d1bb23b163b077fa2.md) | 235 | `result-track:41e9268d1bb23b163b077fa2077bbc9e255b10435f3b72d4dd0ba262411dc0fa` |
| 34 | `theorem` | [hasSum_of_isLUB](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/hassum-of-islub--66b08071caa84dc6685568d7.md) | 241 | `result-track:66b08071caa84dc6685568d72b199cf24c20bd25a80927c60b081aabc2847917` |
| 35 | `theorem` | [summable_abs_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/summable-abs-iff--37cff7619d4b41c427689186.md) | 246 | `result-track:37cff7619d4b41c4276891867acfa164db2495ffadd5f0b95de1f443ec7a379d` |
| 36 | `theorem` | [Finite.of_summable_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/finite-of-summable-const--22f949ebabab741129226ee6.md) | 262 | `result-track:22f949ebabab741129226ee6b4670be13e71894ec216566ba65ded78d6a6cb66` |
| 37 | `theorem` | [Set.Finite.of_summable_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/set-finite-of-summable-const--75b66c057b26c7a00fb2bb82.md) | 273 | `result-track:75b66c057b26c7a00fb2bb820ec55e72ce392b7f2aa78553610093f80f0473b2` |
| 38 | `theorem` | [Summable.tendsto_atTop_of_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/declarations/summable-tendsto-attop-of-pos--afec893db8d2a3fb00da55aa.md) | 281 | `result-track:afec893db8d2a3fb00da55aa232a84c5cc79360a1fdf7dfb60fe25ef4517b073` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
