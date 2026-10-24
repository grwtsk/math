# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Gronwall.Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7073b1f7ee031aca4bd7cd89977fdfb7bb28270b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7073b1f7ee031aca4bd7cd89977fdfb7bb28270b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gronwallBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/gronwallbound--7d5692d2f81b333f57fc977c.md) | 51 | `declaration-track:7d5692d2f81b333f57fc977cdc1a1960f16e334380d729bdf158e202479d02b7` |
| 2 | `theorem` | [gronwallBound_K0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/gronwallbound-k0--eeb39caafc5acb480627a2f3.md) | 54 | `result-track:eeb39caafc5acb480627a2f3359cce170bdbcc7072f19675f79008fa1c66aa23` |
| 3 | `theorem` | [gronwallBound_of_K_ne_0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/gronwallbound-of-k-ne-0--9610eddfe87560073d915091.md) | 57 | `result-track:9610eddfe87560073d915091e856170e77f6871c6723dbcc3b5caaf099d594bd` |
| 4 | `theorem` | [hasDerivAt_gronwallBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/hasderivat-gronwallbound--42d5864e0a4c0f04581b0100.md) | 61 | `result-track:42d5864e0a4c0f04581b01009ce0043badc498fd3908564dd8b34b564585b90a` |
| 5 | `theorem` | [hasDerivAt_gronwallBound_shift](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/hasderivat-gronwallbound-shift--a575d8904a296943ff48288d.md) | 75 | `result-track:a575d8904a296943ff48288de7de44031b40c50dd7286b497fdf69dd543d4130` |
| 6 | `theorem` | [gronwallBound_x0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/gronwallbound-x0--fe87fd37638ba3681d9ee19c.md) | 80 | `result-track:fe87fd37638ba3681d9ee19c4d060c27348d794f1a24da7ac5a1ed9bb413595a` |
| 7 | `theorem` | [gronwallBound_ε0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/gronwallbound-0--aeebd0d137e1642a88abe635.md) | 86 | `result-track:aeebd0d137e1642a88abe6350891b620dd101332b803cc4ded025a656bc5538a` |
| 8 | `theorem` | [gronwallBound_ε0_δ0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/gronwallbound-0-0--62341307fab12a1965a78984.md) | 91 | `result-track:62341307fab12a1965a789848a28306850e25dd1c8ef9208f761902dfdacde3d` |
| 9 | `theorem` | [gronwallBound_continuous_ε](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/gronwallbound-continuous--a12165e1dd2bf1b987f91030.md) | 94 | `result-track:a12165e1dd2bf1b987f91030fd3c1bc799619b4bab7e53d3281d734ca70fc267` |
| 10 | `lemma` | [gronwallBound_mono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/gronwallbound-mono--7c3139fd53abebb586dd5a59.md) | 102 | `result-track:7c3139fd53abebb586dd5a593c5d2b71cc3e2ba254bec5e56d693383ba317b24` |
| 11 | `theorem` | [le_gronwallBound_of_liminf_deriv_right_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/le-gronwallbound-of-liminf-deriv-right-le--31a159977d3ea215c6da7914.md) | 120 | `result-track:31a159977d3ea215c6da79149386b6f7d0f4cf694bdfd95b1ffb2f9b636cee3f` |
| 12 | `theorem` | [norm_le_gronwallBound_of_norm_deriv_right_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/norm-le-gronwallbound-of-norm-deriv-right-le--58ec8e1a528a5ecb8895c484.md) | 142 | `result-track:58ec8e1a528a5ecb8895c4847cfb60cad751f124326fb3bacdb8ec98d0671fd2` |
| 13 | `theorem` | [eq_zero_of_abs_deriv_le_mul_abs_self_of_eq_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/eq-zero-of-abs-deriv-le-mul-abs-self-of-eq-zero-right--53fae9e6d99d02a3823ccc7f.md) | 151 | `result-track:53fae9e6d99d02a3823ccc7f6f296f8377f8c1b024b336571844b7e890e62910` |
| 14 | `theorem` | [dist_le_of_approx_trajectories_ODE_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/dist-le-of-approx-trajectories-ode-of-mem--8ff23761ae568f34effcf28f.md) | 170 | `result-track:8ff23761ae568f34effcf28fff9c5bbd3c212bcdae2cc7ff5522f9a9b4d603d9` |
| 15 | `theorem` | [dist_le_of_approx_trajectories_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/dist-le-of-approx-trajectories-ode--3c33461be39acfdebe771937.md) | 196 | `result-track:3c33461be39acfdebe771937ce4fe5dd752829aeb0f2088f1b010a4fe2feae64` |
| 16 | `theorem` | [dist_le_of_trajectories_ODE_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/dist-le-of-trajectories-ode-of-mem--1f9ff9c9ca60eb0b8a8ab737.md) | 216 | `result-track:1f9ff9c9ca60eb0b8a8ab737b0f116cec2ef8407f86302b24dbca2376d359970` |
| 17 | `theorem` | [dist_le_of_trajectories_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/declarations/dist-le-of-trajectories-ode--b02309530605086693b1fdb8.md) | 236 | `result-track:b02309530605086693b1fdb8f341f156dccd3aef50524c8f14061ce683adeec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
