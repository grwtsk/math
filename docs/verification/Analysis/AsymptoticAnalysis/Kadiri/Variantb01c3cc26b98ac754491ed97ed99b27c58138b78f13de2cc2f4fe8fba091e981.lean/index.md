# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Kadiri.Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5097a000f84401155f4f06bd32e60018848d6b57",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5097a000f84401155f4f06bd32e60018848d6b57`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.ZetaDefinitions` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.HadamardLogDerivative` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [laplaceTransform](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/laplacetransform--0a76a31b6e557747307e7462.md) | 38 | `declaration-track:0a76a31b6e557747307e746216492a5d706375100b806c6db6ee9d7ff589e9b4` |
| 2 | `lemma` | [f_log_support_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/f-log-support-finite--ce89815aad51bd35ef3d1660.md) | 43 | `result-track:ce89815aad51bd35ef3d166006eb990d2b659ebbff87909623d9584b4e18155a` |
| 3 | `lemma` | [summable_f_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/summable-f-log--609633f88d3299baef044c42.md) | 56 | `result-track:609633f88d3299baef044c42a8d9df0aacbadf5b03f269787ac039644c13b0dd` |
| 4 | `def` | [hadamardB](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/hadamardb--e1f438518c8deeec1c5fbf35.md) | 89 | `declaration-track:e1f438518c8deeec1c5fbf35033d9c68d6f05a596f0fe699240f83767549f210` |
| 5 | `theorem` | [hadamard_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/hadamard-identity--cd36202d92462d74c8a38833.md) | 108 | `result-track:cd36202d92462d74c8a388332820078604649ab052194444ea9293387b901d92` |
| 6 | `theorem` | [kadiri_thm_3_1_q1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/kadiri-thm-3-1-q1--6059282fa7838d9a6614f60a.md) | 152 | `result-track:6059282fa7838d9a6614f60a3af6b20ea845f492c6309799781b40cb8484d540` |
| 7 | `theorem` | [laplaceTransform_ibp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/laplacetransform-ibp--eba8dc48cbd8e8d933a49859.md) | 198 | `result-track:eba8dc48cbd8e8d933a49859a076adc1f0ba9ea4300126a7040857b18ea71f73` |
| 8 | `def` | [kadiriTestFn](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/kadiritestfn--a067f0661fc2a2bce4319e51.md) | 216 | `declaration-track:a067f0661fc2a2bce4319e51be5a54f7c09c75aee62bcb1aac03eab238295324` |
| 9 | `theorem` | [kadiriTestFn_contDiff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/kadiritestfn-contdiff--1806decbef804177be8f95ed.md) | 237 | `result-track:1806decbef804177be8f95ededb3bf709dd21c82f8814aae12526e002a4d83b3` |
| 10 | `theorem` | [kadiriTestFn_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/kadiritestfn-decay--cca916e0353561b4202d9c31.md) | 265 | `result-track:cca916e0353561b4202d9c313acba1e155b3622da3933cd03de54559abe1bccd` |
| 11 | `theorem` | [kadiriTestFn_laplaceTransform](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/kadiritestfn-laplacetransform--0f713a2f939fc5eea78cf22f.md) | 290 | `result-track:0f713a2f939fc5eea78cf22f19732df2a60213d5ac3478ad6b6992eddc1aa48d` |
| 12 | `theorem` | [kadiriTestFn_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/kadiritestfn-zero--4f0f2a33a2f5b15632909dd0.md) | 306 | `result-track:4f0f2a33a2f5b15632909dd015e348080627f9b983937be81f6a21260f75e088` |
| 13 | `theorem` | [kadiriTestFn_neg_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/kadiritestfn-neg-log--d8e965adfb89a44117f369e6.md) | 309 | `result-track:d8e965adfb89a44117f369e65e9667197503fd01f3da2309618f5999b73f2e2b` |
| 14 | `theorem` | [kadiriTestFn_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/kadiritestfn-log--07c5665eee511bfc5603a99d.md) | 318 | `result-track:07c5665eee511bfc5603a99d96e1d03d06df0818a6dc430516374c25e6b57237` |
| 15 | `theorem` | [identity_16_complex](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/identity-16-complex--978ffba9e61c5da156f5f820.md) | 360 | `result-track:978ffba9e61c5da156f5f820a1379ddf80b91e59c246c1b32c77b328ec23b0db` |
| 16 | `theorem` | [identity_16](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/identity-16--abccb2fe2efc243547d801ef.md) | 414 | `result-track:abccb2fe2efc243547d801ef5ef6f2665402ac4228c5424da14f7a64ba6f4098` |
| 17 | `theorem` | [re_hadamardB_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/re-hadamardb-eq--7dddf47148519f71a920ae27.md) | 489 | `result-track:7dddf47148519f71a920ae275262571640cc7cf3a08e69ae351185b5a4a1403a` |
| 18 | `theorem` | [backlund_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/backlund-bound--ab5e461672d47803a1670d2d.md) | 515 | `result-track:ab5e461672d47803a1670d2d01a3d9d85792626be69ae99333599cd3053c1b10` |
| 19 | `theorem` | [laplaceTransform_re_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/laplacetransform-re-decay--2d4ba2d134b5ebd4091614e0.md) | 540 | `result-track:2d4ba2d134b5ebd4091614e05ac5200034f42240f3cfe39e654725788aa1eba4` |
| 20 | `theorem` | [summable_lap_re_at_zeros](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/summable-lap-re-at-zeros--9da4f36cdd22079235bb86e1.md) | 567 | `result-track:9da4f36cdd22079235bb86e1a27d4656d01c23154f9666dd497ead6576324ffe` |
| 21 | `theorem` | [re_inner_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/re-inner-eq--2ed08cdca1e882f5b5ac6730.md) | 599 | `result-track:2ed08cdca1e882f5b5ac6730eeb3a31fd88c4f21f7ba2aa1c9f8ce2bdd707258` |
| 22 | `theorem` | [prop_2_1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/prop-2-1--606ce3eba8fc9b9fe2e0185f.md) | 638 | `result-track:606ce3eba8fc9b9fe2e0185fb95eedbd301d1ef3fbca0a37fb29af1115867e9e` |
| 23 | `def` | [T1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/t1--87dba9396dfdfcd62c7615bd.md) | 675 | `declaration-track:87dba9396dfdfcd62c7615bdd15944bee51d7a3e9c2093bdc0013cd54ee7bdee` |
| 24 | `def` | [T2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/t2--2696fe6e45428bfa7271165e.md) | 680 | `declaration-track:2696fe6e45428bfa7271165e909d6947c364744684af68a8d34dc774c852879b` |
| 25 | `def` | [D](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/d--30ba7a0eb12b506852d7b6ea.md) | 690 | `declaration-track:30ba7a0eb12b506852d7b6eaabb8e2c9bf314ea04b2de7a3935a3d28b1fee83e` |
| 26 | `def` | [Δ1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/1--5b52cbbe7855ee70a0bc3729.md) | 694 | `declaration-track:5b52cbbe7855ee70a0bc37296e255e79eaa0a6f54d4bb4034af8abb32e81055d` |
| 27 | `def` | [Δ2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/2--1cbe67d85f765b2bafc2e5f1.md) | 698 | `declaration-track:1cbe67d85f765b2bafc2e5f1cb99756f8cbe471492b82c8004f7b01ac0831b79` |
| 28 | `theorem` | [eq_5](../../../../../mathematics/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/declarations/eq-5--3ef539d826cad6d3bbbcea1b.md) | 721 | `result-track:3ef539d826cad6d3bbbcea1b153d3937cbdda7f932f3373250b0cce39b8fd27f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
