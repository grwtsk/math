# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZeroSummability.Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ab0b11a0748a008a6d932ee0de2cfc6c7f48ffb",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ab0b11a0748a008a6d932ee0de2cfc6c7f48ffb`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Tail` — import line 11; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.LocalCount` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.ExplicitFormula` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson.PaperFT` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [gammaOf_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/gammaof-re--d91c9dcc7f2e3966ece2342a.md) | 28 | `result-track:d91c9dcc7f2e3966ece2342a95eefbc299d97ab08059894963af0ba327fd29ef` |
| 2 | `lemma` | [gammaOf_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/gammaof-im--4f55a31f92a2ef2d55bde28e.md) | 31 | `result-track:4f55a31f92a2ef2d55bde28e771a406cf74dee5b917e8d0480a679c5bbaaf7dd` |
| 3 | `lemma` | [abs_im_le_norm_gammaOf](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/abs-im-le-norm-gammaof--8d6e8fca6589045183983e59.md) | 34 | `result-track:8d6e8fca6589045183983e590f4e561f72e0abd877cfb2aea25248372fdb56bf` |
| 4 | `lemma` | [abs_gammaOf_im_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/abs-gammaof-im-lt--19919be7bbe3b73839f51a7b.md) | 38 | `result-track:19919be7bbe3b73839f51a7b438618fc36105935d74dc37a09e0cfa87cf902a8` |
| 5 | `lemma` | [abs_gammaOf_im_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/abs-gammaof-im-le--49f3d4bc52d72348bdf2afc1.md) | 42 | `result-track:49f3d4bc52d72348bdf2afc1baa5957f2915e00d328d8e881546128026ac900d` |
| 6 | `lemma` | [weight_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/weight-le--268249142597f2669d0cd902.md) | 48 | `result-track:268249142597f2669d0cd9026404a448f95bf6be7cb610f064d1eb4939e045d7` |
| 7 | `lemma` | [summable_weight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/summable-weight--d05412c347b554183f2873b1.md) | 74 | `result-track:d05412c347b554183f2873b1d08e69db38affad912220bcaa5a3f33f2f172973` |
| 8 | `def` | [totalWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/totalweight--f5b396a3edc5c557739a58d8.md) | 85 | `declaration-track:f5b396a3edc5c557739a58d8a2218fbcb3aafb1142e0e9623dad33065f0a72fa` |
| 9 | `def` | [key](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/key--dde9cf59df1d878c63d7adaa.md) | 90 | `declaration-track:dde9cf59df1d878c63d7adaadbec608dfabbbaf4433cbc608e5ebe234b6f12b9` |
| 10 | `lemma` | [key_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/key-lt--b711c4b9adccca55e52acb97.md) | 92 | `result-track:b711c4b9adccca55e52acb97becd4ce1e3233bcad2ee55e2f2e419ad8fd5f7e2` |
| 11 | `lemma` | [le_key_add_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/le-key-add-one--8bc57143b9e98a694dfc6ffd.md) | 95 | `result-track:8bc57143b9e98a694dfc6ffd64fb7273e8104d5b7ab6c4dde660b12a39de105c` |
| 12 | `lemma` | [one_add_sq_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/one-add-sq-ge--ea7806a7334cea83fc530875.md) | 99 | `result-track:ea7806a7334cea83fc530875853445a1bf43838658e27d887f5f5f9ec1b5740e` |
| 13 | `theorem` | [zero_sum_inv_sq_gen](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/zero-sum-inv-sq-gen--b4ccb3fbc5f685fc58ee9a6f.md) | 113 | `result-track:b4ccb3fbc5f685fc58ee9a6fbfe6b37e82635ea91b41c7da6fdfff724055b996` |
| 14 | `theorem` | [EF_zero_sum_summable_gen](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/ef-zero-sum-summable-gen--61dd93500f07992c5fd44b2c.md) | 171 | `result-track:61dd93500f07992c5fd44b2c1a33b5302d4794f7da08c737bdb6239e919c01b9` |
| 15 | `theorem` | [zero_sum_inv_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/zero-sum-inv-sq--3603d56ece64d0372ddbe0e3.md) | 239 | `result-track:3603d56ece64d0372ddbe0e35833ae0c0c93c257b6e64e5fa42d9b3ec3be9d67` |
| 16 | `theorem` | [EF_zero_sum_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant95fcebe5ddd2cc4f194b8d63f74a890306d6bdf1d971d99905275e23de458ecf.lean/declarations/ef-zero-sum-summable--c488d855eebd56aae3d69a23.md) | 249 | `result-track:c488d855eebd56aae3d69a23ae16fa345caa11fef44df8eafb83cac5a5a4ed7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
