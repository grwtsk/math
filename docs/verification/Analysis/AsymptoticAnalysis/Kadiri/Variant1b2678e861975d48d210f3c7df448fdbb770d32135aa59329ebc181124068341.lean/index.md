# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Kadiri.Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caefc881fdabcfb3983ca23715e9283f54ac4f11",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caefc881fdabcfb3983ca23715e9283f54ac4f11`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.ZetaDefinitions` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [laplaceTransform](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/laplacetransform--703625af7dfc5c3b10ffa5e4.md) | 45 | `declaration-track:703625af7dfc5c3b10ffa5e4335ec5ffd1f456f514c5abe7ab30819585dfc216` |
| 2 | `lemma` | [f_log_support_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/f-log-support-finite--be27b7a4fece8a52e4849cc1.md) | 50 | `result-track:be27b7a4fece8a52e4849cc1a9691cc3f531a028dac8ec64ed5e22a423b6cb24` |
| 3 | `lemma` | [summable_f_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/summable-f-log--63e5f9584d60e93190ca9bc8.md) | 63 | `result-track:63e5f9584d60e93190ca9bc8d322e7fe868a95f63da63e7c5b640d6ba1fa2f64` |
| 4 | `def` | [hadamardB](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/hadamardb--870f374f1d67dbd79ccc3b84.md) | 93 | `declaration-track:870f374f1d67dbd79ccc3b8446dd917fec0076dc3a9d4fa7ad7995043511d231` |
| 5 | `theorem` | [hadamard_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/hadamard-identity--9be7d3f4bb82d0ab1c600cc8.md) | 111 | `result-track:9be7d3f4bb82d0ab1c600cc806b28c9fbd7c28f389221b02475a1b2f52ab4bea` |
| 6 | `theorem` | [identity_16](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/identity-16--c95e122e50511996dfbe4258.md) | 143 | `result-track:c95e122e50511996dfbe425817cb8e3d5b0d4e34ab140c89da917ee71d672ca4` |
| 7 | `theorem` | [re_eq_of_entire_agree_on_halfplane](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/re-eq-of-entire-agree-on-halfplane--528513e07e0b0632e8fe22c2.md) | 182 | `result-track:528513e07e0b0632e8fe22c24410f792fcd76e8704c0e64d9bd7178594acf29f` |
| 8 | `theorem` | [re_hadamardB_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/re-hadamardb-eq--f9d0699021c7342d094cc4e5.md) | 209 | `result-track:f9d0699021c7342d094cc4e54be9a7f2ee433db76449c68a68b716011548ef9a` |
| 9 | `theorem` | [summable_lap_re_at_zeros](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/summable-lap-re-at-zeros--1a977f0edb91649fa31d14f5.md) | 227 | `result-track:1a977f0edb91649fa31d14f52891770817f38e1233bddfca9e30148953396c29` |
| 10 | `theorem` | [re_inner_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/re-inner-eq--5ded9e8c87394dd030965c26.md) | 260 | `result-track:5ded9e8c87394dd030965c268b8a4b15bae8a64d1c374a00004f46dc83c5e88a` |
| 11 | `theorem` | [prop_2_1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/prop-2-1--1bd2ad2dcb54cb54224af6bf.md) | 296 | `result-track:1bd2ad2dcb54cb54224af6bf8e7f54252aad33e9207d5f2e4c9a44b4e9c95cb9` |
| 12 | `def` | [T1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/t1--fdcc33a15b9ab9509457db5c.md) | 333 | `declaration-track:fdcc33a15b9ab9509457db5c41f8fcbf0349a50ceb9228430bff1f9a1f57472d` |
| 13 | `def` | [T2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/t2--2c02224812ffac79ef80c414.md) | 338 | `declaration-track:2c02224812ffac79ef80c41413c77b553ac607863f032ba7df8d3825c040639b` |
| 14 | `def` | [D](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/d--e023d233ee8a12eeab069e67.md) | 348 | `declaration-track:e023d233ee8a12eeab069e67aa6f8a96e0d0eeac98901b6b6fe14a151d3d1073` |
| 15 | `def` | [Δ1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/1--bc6e6c3e939eb2c6c6818e8a.md) | 352 | `declaration-track:bc6e6c3e939eb2c6c6818e8af1874a82e5adcff26db90f4cc9d8a71ba7c9ee0a` |
| 16 | `def` | [Δ2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/2--c44e36d47d8aa12daf0e5209.md) | 356 | `declaration-track:c44e36d47d8aa12daf0e5209793b9dc3c51dae78293b573b35ec79035adbc579` |
| 17 | `theorem` | [eq_5](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variant1b2678e861975d48d210f3c7df448fdbb770d32135aa59329ebc181124068341.lean/declarations/eq-5--372b653640e92e71874f6d80.md) | 379 | `result-track:372b653640e92e71874f6d80b6195607dff470434e1ae9fcc99317d44bee3eda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
