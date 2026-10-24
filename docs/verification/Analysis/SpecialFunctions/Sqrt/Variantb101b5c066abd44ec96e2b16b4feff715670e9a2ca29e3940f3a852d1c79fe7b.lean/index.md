# Verification target: GRWTSK.Analysis.SpecialFunctions.Sqrt.Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f401a831f76d9f059accec22c55da83dbbb1383",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f401a831f76d9f059accec22c55da83dbbb1383`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Complex.sqrt](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/complex-sqrt--ff604d8109c1c61cd8b859d1.md) | 26 | `declaration-track:ff604d8109c1c61cd8b859d1d66021a448a992fc023f9703b71a023843efb104` |
| 2 | `theorem` | [Complex.sqrt_zero](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/complex-sqrt-zero--40053936797ae6024865bdd9.md) | 28 | `result-track:40053936797ae6024865bdd92fcf7fc05df8bc6a584e385a6f961cd5d0815ec6` |
| 3 | `theorem` | [Complex.sqrt_one](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/complex-sqrt-one--33b44f854cdd3a9ca61a843c.md) | 29 | `result-track:33b44f854cdd3a9ca61a843c405e5b726ff92ac214611c2abdb522b2bc537a47` |
| 4 | `theorem` | [Complex.sqrt_eq_real_add_ite](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/complex-sqrt-eq-real-add-ite--833d055f5c76565dcca7bf7d.md) | 31 | `result-track:833d055f5c76565dcca7bf7dad8f6be059ad18fcd5967e58ec1c1d70503f2a32` |
| 5 | `lemma` | [sqrt_eq_exp](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/sqrt-eq-exp--1ba283dbbb9baf617b743a11.md) | 40 | `result-track:1ba283dbbb9baf617b743a11a33539d4790440da4d13cc9822d4240d9a978a7c` |
| 6 | `def` | [RCLike.sqrt](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt--7faa3af6432ae25551b61439.md) | 44 | `declaration-track:7faa3af6432ae25551b61439ff411f415dd9bd1a6c7dc3c8161b57752e9c92c7` |
| 7 | `theorem` | [RCLike.sqrt_eq_ite](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt-eq-ite--4acff55e93b4a72a010e6707.md) | 46 | `result-track:4acff55e93b4a72a010e6707ee427fc5b1422a33267e8ec7e4cd00e4c19d12d7` |
| 8 | `theorem` | [RCLike.sqrt_eq_real_add_ite](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt-eq-real-add-ite--71ea7ca67434c06d7d831594.md) | 59 | `result-track:71ea7ca67434c06d7d8315947a48d3af01523e823aafeffbffa60ee8e1687e3e` |
| 9 | `theorem` | [RCLike.sqrt_zero](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt-zero--e3ac6579f59942748ba61599.md) | 67 | `result-track:e3ac6579f59942748ba61599e420be2625c317dd20ad8905efb7a7db676026ac` |
| 10 | `theorem` | [RCLike.sqrt_one](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt-one--4cd5f3ca76ca480d70740580.md) | 68 | `result-track:4cd5f3ca76ca480d70740580396b9eb55b4f474c636772e07ba47631c00040cf` |
| 11 | `theorem` | [Complex.re_sqrt_ofReal](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/complex-re-sqrt-ofreal--af92a86b1c02af4eda160647.md) | 70 | `result-track:af92a86b1c02af4eda160647245d1404747e543f58b0e7d6d75ecbe4ca954eb2` |
| 12 | `theorem` | [RCLike.re_sqrt_ofReal](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-re-sqrt-ofreal--d3ca1b54501c14b7f8b3c2ff.md) | 75 | `result-track:d3ca1b54501c14b7f8b3c2ff4ff16ce18dc8db0cf81e8dc350af802ff4eee043` |
| 13 | `theorem` | [RCLike.sqrt_real](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt-real--2f9d0f071eba881918e2d5ec.md) | 79 | `result-track:2f9d0f071eba881918e2d5ec5d65c28ff355979d0a52fe694aa7358fc253c964` |
| 14 | `theorem` | [RCLike.sqrt_complex](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt-complex--eeb39b0d7ef96b320f202810.md) | 82 | `result-track:eeb39b0d7ef96b320f2028108ae53f33cb654cfdb739212ea176be3b0bef7790` |
| 15 | `theorem` | [Complex.sqrt_of_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/complex-sqrt-of-nonneg--acfef509502c0ed282e93106.md) | 85 | `result-track:acfef509502c0ed282e93106aa84dc86348918f5fde9ec1fb91b524fdb507846` |
| 16 | `theorem` | [RCLike.sqrt_map](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt-map--f478f6d1830c9668f6304e8e.md) | 92 | `result-track:f478f6d1830c9668f6304e8e9071613ecd481fbf9f79226c4f9b23b10c9265c9` |
| 17 | `theorem` | [Complex.sqrt_map](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/complex-sqrt-map--4153d5e2e24b4d10fea0f9a5.md) | 98 | `result-track:4153d5e2e24b4d10fea0f9a57564ce342309ec7e62ea14943b3b4781d091335b` |
| 18 | `theorem` | [RCLike.sqrt_of_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt-of-nonneg--f235275f0443720af949d975.md) | 102 | `result-track:f235275f0443720af949d975709a3f12d01a3114eb905e9e9bf1f17ada427846` |
| 19 | `theorem` | [Complex.sqrt_neg_of_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/complex-sqrt-neg-of-nonneg--865c9f3d5c2b11ae25459806.md) | 109 | `result-track:865c9f3d5c2b11ae254598060826bbe03aa609f0b33af09ca608a603977c4acb` |
| 20 | `theorem` | [RCLike.sqrt_neg_of_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt-neg-of-nonneg--b41b5aeb90242c334a1a70a7.md) | 117 | `result-track:b41b5aeb90242c334a1a70a795d7636939ef7147d1e27550ca662212395f7122` |
| 21 | `theorem` | [Complex.sqrt_neg_one](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/complex-sqrt-neg-one--5b325457ec36291deb1c9e53.md) | 125 | `result-track:5b325457ec36291deb1c9e53e7552c77d71f9303ad54a336b841e5de90c9e989` |
| 22 | `theorem` | [RCLike.sqrt_neg_one](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt-neg-one--cf2d44437ec2bd84182aa0e0.md) | 128 | `result-track:cf2d44437ec2bd84182aa0e039daa1e3b383a549476a4400416939df086aec1d` |
| 23 | `theorem` | [Complex.sqrt_I](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/complex-sqrt-i--f635d173330948670f65c64a.md) | 131 | `result-track:f635d173330948670f65c64acb92fb97a050706f606a2849e0768fa145e49b58` |
| 24 | `theorem` | [Complex.sqrt_neg_I](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/complex-sqrt-neg-i--2ad934bde78d2cd51bb3df48.md) | 135 | `result-track:2ad934bde78d2cd51bb3df481c3e4ae061c3c7dd7089b84b45c2b2d3eda06f14` |
| 25 | `theorem` | [RCLike.sqrt_I](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt-i--e9e247c796a027bca7c2a37d.md) | 139 | `result-track:e9e247c796a027bca7c2a37d8a157f093dd61772d371dfe81a0a5cf639e955d9` |
| 26 | `theorem` | [RCLike.sqrt_neg_I](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/declarations/rclike-sqrt-neg-i--9e13c87207a875d159a7169c.md) | 146 | `result-track:9e13c87207a875d159a7169c995aa20844adb69631bf68f27643fbb40678a0d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
