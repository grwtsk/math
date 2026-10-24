# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Countable.Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1519b055d08db8b5eb81d1ed023720362ef03ff8",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1519b055d08db8b5eb81d1ed023720362ef03ff8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Map` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Markov` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Count` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [setLIntegral_const_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/setlintegral-const-lt-top--2441605249cd121c0ffa02d8.md) | 27 | `result-track:2441605249cd121c0ffa02d880fb2540082acfefa2df432674ab6163853823d1` |
| 2 | `theorem` | [lintegral_const_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-const-lt-top--6118b12fab5a64655de9c189.md) | 32 | `result-track:6118b12fab5a64655de9c1891ded5950e25ad6c705cb14457b209471fea85ffe` |
| 3 | `lemma` | [lintegral_eq_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-eq-const--0f025bcdfeadf0d73a3e90d7.md) | 35 | `result-track:0f025bcdfeadf0d73a3e90d7933ef0bef0a2369926e56f023a37a9b0d1fdcdab` |
| 4 | `lemma` | [lintegral_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-le-const--b7de5b7ba20e9a4d65b36e9a.md) | 38 | `result-track:b7de5b7ba20e9a4d65b36e9a792ed8d05bc594f4adb022fe4b945402a2d57e8b` |
| 5 | `theorem` | [_root_.IsFiniteMeasure.lintegral_lt_top_of_bounded_to_ennreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/root-isfinitemeasure-lintegral-lt-top-of-bounded-to-ennreal--0334f2a9fef8d57d62f97613.md) | 43 | `result-track:0334f2a9fef8d57d62f97613da3f41a576945c9ec38493db335296d54a50dfdb` |
| 6 | `theorem` | [lintegral_dirac'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-dirac--a02da47542a730afd09a98ab.md) | 53 | `result-track:a02da47542a730afd09a98ab221ddfb3ffd6faecb700b548ec5e878fe01694f8` |
| 7 | `theorem` | [lintegral_dirac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-dirac--aca25863900b44b973fd12a8.md) | 57 | `result-track:aca25863900b44b973fd12a802a4eaa6e82798c367310ce60c1f058e17b5bc50` |
| 8 | `theorem` | [setLIntegral_dirac'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/setlintegral-dirac--0d94bef8fdd56840c99ac519.md) | 60 | `result-track:0d94bef8fdd56840c99ac5194e2e509d3eb73b19c3ff02646141462c54bb65be` |
| 9 | `theorem` | [setLIntegral_dirac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/setlintegral-dirac--651d389730a3569f9316494f.md) | 68 | `result-track:651d389730a3569f9316494f5303aa6d3ca56487c8f87dfa5cbe61e211d72ba7` |
| 10 | `theorem` | [lintegral_count'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-count--4b361e899cf6c8eab225bc4a.md) | 75 | `result-track:4b361e899cf6c8eab225bc4ae2f66d4d49a0c947aac901011092c0e83c091ce9` |
| 11 | `theorem` | [lintegral_count](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-count--fe204b212fd4a9d434841448.md) | 80 | `result-track:fe204b212fd4a9d43484144861b8062ec264dee27bc43d0c8e5bb9e55ac3986e` |
| 12 | `lemma` | [_root_.ENNReal.tsum_const_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/root-ennreal-tsum-const-eq--bbc6e7ce351896a347827cf2.md) | 87 | `result-track:bbc6e7ce351896a347827cf20f8b22ba71cfa4ef7fa9b14d3a74e2b8c152a7dd` |
| 13 | `theorem` | [_root_.ENNReal.count_const_le_le_of_tsum_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/root-ennreal-count-const-le-le-of-tsum-le--f5750a1c713321dbdaaee4e2.md) | 91 | `result-track:f5750a1c713321dbdaaee4e211bb523dcb9edbd5be70c0d1d3d3b59a4cdac5a2` |
| 14 | `theorem` | [_root_.NNReal.count_const_le_le_of_tsum_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/root-nnreal-count-const-le-le-of-tsum-le--605c3bb2d2950b6277cf0d5f.md) | 99 | `result-track:605c3bb2d2950b6277cf0d5f560b127b4eb165627e99bd1ad51ba09b60bbc41f` |
| 15 | `theorem` | [lintegral_countable'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-countable--15dff88568dd8eb55e21c041.md) | 116 | `result-track:15dff88568dd8eb55e21c041aace1e38a536ea22eaafc0f647889ca524ba6d4d` |
| 16 | `theorem` | [lintegral_singleton'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-singleton--145024d42039ef204b66e4ea.md) | 122 | `result-track:145024d42039ef204b66e4eab9e9455822de704531af292bf2f60f326cf3d7f7` |
| 17 | `theorem` | [lintegral_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-singleton--625037f5564f736bd9f1b3bc.md) | 126 | `result-track:625037f5564f736bd9f1b3bcf01a53689a75dc8ddd04689ad1521147524d0dde` |
| 18 | `theorem` | [lintegral_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-countable--df259a815069e5bfaab55805.md) | 130 | `result-track:df259a815069e5bfaab55805cd1dc675f95eb289304a19376afe03d49687b933` |
| 19 | `theorem` | [lintegral_insert](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-insert--f0bc4232af5b62da37e4e32e.md) | 138 | `result-track:f0bc4232af5b62da37e4e32e526f41b4eefedb96266e3c5c94f4628b5563977d` |
| 20 | `theorem` | [lintegral_finset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-finset--1b90f891bbb14dfa66074afd.md) | 144 | `result-track:1b90f891bbb14dfa66074afdc4be36ee7e2a567c517ab214e950e3eb7aac6b86` |
| 21 | `theorem` | [lintegral_fintype](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-fintype--4d8e7d9bf888355483e6d584.md) | 148 | `result-track:4d8e7d9bf888355483e6d584328ea24b6980a156b8e12b137c0ac94679b1983c` |
| 22 | `theorem` | [lintegral_unique](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-unique--142af461d8abfb8b17fc0d78.md) | 152 | `result-track:142af461d8abfb8b17fc0d78538e8636f6a30793e0f83ab2b48072e1fb23d80f` |
| 23 | `theorem` | [exists_measurable_le_forall_setLIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/exists-measurable-le-forall-setlintegral-eq--0972c12faffd47f7330febc2.md) | 169 | `result-track:0972c12faffd47f7330febc29f2aa0bbdc8d7823eb1e79eda73774940220458e` |
| 24 | `theorem` | [exists_pos_lintegral_lt_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/exists-pos-lintegral-lt-of-sigmafinite--442a32ca2276aaa115f47510.md) | 222 | `result-track:442a32ca2276aaa115f4751027a81fe8da6f6b0077930845b50d14727ae94fb7` |
| 25 | `theorem` | [univ_le_of_forall_fin_meas_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/univ-le-of-forall-fin-meas-le--47df3d784e202dd731ac401d.md) | 245 | `result-track:47df3d784e202dd731ac401d2fbce4fe0883d78b2d1f25233b45a2b27ba0e08f` |
| 26 | `theorem` | [lintegral_le_of_forall_fin_meas_trim_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-le-of-forall-fin-meas-trim-le--fdd34bbafd4d75016205abc4.md) | 261 | `result-track:fdd34bbafd4d75016205abc437c2e234747a6619bb16ed2055382f92d0491ea6` |
| 27 | `theorem` | [lintegral_le_of_forall_fin_meas_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/lintegral-le-of-forall-fin-meas-le--28d078db452bed79c65f343a.md) | 275 | `result-track:28d078db452bed79c65f343af8328633c6c5f9b2047368b22468aecc21820cb5` |
| 28 | `theorem` | [SimpleFunc.exists_lt_lintegral_simpleFunc_of_lt_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/simplefunc-exists-lt-lintegral-simplefunc-of-lt-lintegral--79e68960bca8715484f21c8c.md) | 281 | `result-track:79e68960bca8715484f21c8cca583f0cbbac229fe7dcdf79b8b9d923f502ca73` |
| 29 | `theorem` | [exists_lt_lintegral_simpleFunc_of_lt_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/declarations/exists-lt-lintegral-simplefunc-of-lt-lintegral--c709c6d398e6b874a9836a69.md) | 336 | `result-track:c709c6d398e6b874a9836a69fc22b2567707ebc99836132b68411940ad08b748` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
