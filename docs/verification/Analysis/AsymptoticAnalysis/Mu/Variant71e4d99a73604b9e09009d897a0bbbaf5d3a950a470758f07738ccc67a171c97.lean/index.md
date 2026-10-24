# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Mu.Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "744e30031e69bfe25e10559ca71b12a53ccc1c14",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `744e30031e69bfe25e10559ca71b12a53ccc1c14`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Analytic.Stirling` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [abscissa_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/abscissa-mem--df3fe88120c9706e65fba814.md) | 27 | `result-track:df3fe88120c9706e65fba81431ac3827e21eb846e2e9eaddbd982bf8eaf634de` |
| 2 | `lemma` | [re_term_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/re-term-eq--1e3ee9e79b7d3c0553c9c19d.md) | 41 | `result-track:1e3ee9e79b7d3c0553c9c19d702a84c8e01e23d832a26951deebfd141ae626b8` |
| 3 | `lemma` | [re_inv_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/re-inv-eq--6424b3f1ec24be2dfafd2406.md) | 60 | `result-track:6424b3f1ec24be2dfafd24067d8b51de8b10b1e5824a9c21250ca821bd2961cb` |
| 4 | `lemma` | [summable_re_terms](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/summable-re-terms--8f1677ac8504b2aac9fc8f1e.md) | 69 | `result-track:8f1677ac8504b2aac9fc8f1eb5a2abe2a54abffc494f0326c89e40fd8e26aacb` |
| 5 | `theorem` | [re_digamma_vertical](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/re-digamma-vertical--b418487fc339fee9912372d7.md) | 79 | `result-track:b418487fc339fee9912372d7c93c20a0295e711a8a0b8dc2fc159cda90229bdd` |
| 6 | `theorem` | [re_digamma_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/re-digamma-mono--c74462aee31e114cde8dc0bd.md) | 106 | `result-track:c74462aee31e114cde8dc0bda84fd54b80fa8dae257892cc4d2c692da96939e2` |
| 7 | `lemma` | [mu_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/mu-eq--9f74925d01e265ddcff60eeb.md) | 130 | `result-track:9f74925d01e265ddcff60eebe7501cc5f81b02400b86857152728bb3c713b3ab` |
| 8 | `theorem` | [mu_monotoneOn](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/mu-monotoneon--b7cc852dc073c78c9a684dcc.md) | 140 | `result-track:b7cc852dc073c78c9a684dccc23a14d89c310d8b32c010fbc6b4924100ee0644` |
| 9 | `theorem` | [mu_zero_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/mu-zero-le--7d4a99d72fa11095f065ef3d.md) | 153 | `result-track:7d4a99d72fa11095f065ef3dedf68adb6d5bd599c5e57ad6501adc0044131a22` |
| 10 | `theorem` | [neg_one_lt_mu_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/neg-one-lt-mu-zero--1390c27ec0f81266e034aa56.md) | 162 | `result-track:1390c27ec0f81266e034aa5619a91464d5756290bd940aed730d6afa28022878` |
| 11 | `lemma` | [trigamma_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/trigamma-tail-le--171bea85bf2d2bc9cafa967b.md) | 215 | `result-track:171bea85bf2d2bc9cafa967bf519b91d2fae20ced4436f2d633615a386612bdd` |
| 12 | `lemma` | [summable_quarter_line](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/summable-quarter-line--13bba545c9213fbd4d8460e7.md) | 341 | `result-track:13bba545c9213fbd4d8460e77e4f91d58cee545c892404c4661d0f07b837e2c8` |
| 13 | `theorem` | [mu_deriv_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/declarations/mu-deriv-bound--8814104c93e5ce8f5db22c01.md) | 359 | `result-track:8814104c93e5ce8f5db22c01af8c6a18bff3cb84de1fa4723866097e8c2c185f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
