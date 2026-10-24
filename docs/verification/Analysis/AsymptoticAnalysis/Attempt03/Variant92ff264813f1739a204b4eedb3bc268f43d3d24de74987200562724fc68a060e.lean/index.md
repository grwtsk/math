# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt03.Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15aac324ce3937f8308351674c9a4bcb1c904879",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15aac324ce3937f8308351674c9a4bcb1c904879`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/outerweight--9f890a43e42ec74bca3723fb.md) | 26 | `declaration-track:9f890a43e42ec74bca3723fbd147e55e0505ea46471f9f975f403268cbf926c8` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/exponentweight--8a8fe15c369fd0da8293e73d.md) | 28 | `declaration-track:8a8fe15c369fd0da8293e73dfb71cac5b468a50ecc5a796a4f711c7085a39b67` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/momentatom--c6175476db47b102a355121f.md) | 30 | `declaration-track:c6175476db47b102a355121ff707fb99e2340ee08e5c09124e19dcbbc09107a6` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/primemomentatom--43c2acea8bc46639c060bece.md) | 33 | `declaration-track:43c2acea8bc46639c060bece0a82445a439e781f531647a5699937886c354e2e` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/properpowermoment--8c468288210389d008e4ca96.md) | 35 | `declaration-track:8c468288210389d008e4ca96b4cd8e5007f665d78d4e8fd3acbe599bf5eeec32` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/properpowerb1--dddc24ac93a67a64a0225077.md) | 37 | `declaration-track:dddc24ac93a67a64a02250770017e29d04466dc79f8f5a10cbb3a2429510175a` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/properpowerb2--ffbfd78176fffb89d5f50948.md) | 39 | `declaration-track:ffbfd78176fffb89d5f509482527580f03b5d7ead96b410eeea34dff3aff9907` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/outerweight-nonneg--8f8a4e9ac94a91014eb097ed.md) | 41 | `result-track:8f8a4e9ac94a91014eb097edd63441cff021cdeaac96b4dff4e3bb3e3def745f` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/exponentweight-nonneg--45aaccce14e3bc4f1a95a8e4.md) | 49 | `result-track:45aaccce14e3bc4f1a95a8e42e8e26dc6e02bdd16d5b3c146bb4cd634a47167e` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/momentatom-nonneg--b03d1130812e6c71c36a89a8.md) | 53 | `result-track:b03d1130812e6c71c36a89a8e3abaf4bc04a8614c46e61ddb0c5de7902e4fd2b` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/outerweight-summable--1f81892167f8aea65961683e.md) | 61 | `result-track:1f81892167f8aea65961683e3aee63b29989808d02acfef87025b7dde6c54118` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/exponentweight-summable--2a1dcd2c9efbfd12c87ad819.md) | 91 | `result-track:2a1dcd2c9efbfd12c87ad819be76fed3129622d7eccb9070b135bc303ea01a8e` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/momentatom-le-product--8302d4c7d5c4d64bc93ad7c8.md) | 100 | `result-track:8302d4c7d5c4d64bc93ad7c8bdb6e4cae7cd22e088f483f2b13dc25cd3a31168` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/prime-outerweight-summable--5292faf6e33c26b91933ce1d.md) | 121 | `result-track:5292faf6e33c26b91933ce1d04cffd68940134283ea3caf9e235bffe9c7ff92a` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/primemomentatom-summable--ef1e12719a9849e3b916e60a.md) | 125 | `result-track:ef1e12719a9849e3b916e60aac8c66d4cb2d4102248144cebdd4ac8b8880156f` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/primemomentatom-inner-summable--46911c5c3ca3fe4a79e9b0a7.md) | 132 | `result-track:46911c5c3ca3fe4a79e9b0a79cee49377f6132d70fc290df0051e253d2c7b81a` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variant92ff264813f1739a204b4eedb3bc268f43d3d24de74987200562724fc68a060e.lean/declarations/primemomentatom-outer-summable--21a0aa84bffc2fe36c2f8289.md) | 137 | `result-track:21a0aa84bffc2fe36c2f828994f50851c02ddf35e6f4ba7b0d2cec76100a98ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
