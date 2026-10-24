# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.QExpansion.Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "378aa1c30d950b8a351a0506f8f82b94eef84765",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `378aa1c30d950b8a351a0506f8f82b94eef84765`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.TaylorSeries` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Exp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.Identities` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [periodic_comp_ofComplex](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/periodic-comp-ofcomplex--12ec2524c321def4ad67abc1.md) | 61 | `result-track:12ec2524c321def4ad67abc1a7055e1ee7f4b75ebe24e51deeeddc7de006f27b` |
| 2 | `def` | [cuspFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/cuspfunction--148a809572837d45924aebef.md) | 78 | `declaration-track:148a809572837d45924aebef8d88e0f0cd200bee40b56a715995b981acdd3eb9` |
| 3 | `theorem` | [eq_cuspFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/eq-cuspfunction--1453e09e77374c892968c3b1.md) | 80 | `result-track:1453e09e77374c892968c3b1e0ff7fc215128bcedd3d47ae746d82aee1c2bce3` |
| 4 | `theorem` | [differentiableAt_comp_ofComplex](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/differentiableat-comp-ofcomplex--1a00c21c60a44178543e98f5.md) | 91 | `result-track:1a00c21c60a44178543e98f50851cfa0d21a8d0cbfe1acf2e3b6bc9de87b6ffa` |
| 5 | `theorem` | [bounded_at_infty_comp_ofComplex](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/bounded-at-infty-comp-ofcomplex--5061503b81e82cfcd1eb0ec8.md) | 95 | `result-track:5061503b81e82cfcd1eb0ec8ce6d2234ec38ca019499cd7038c331bbdc22bfbb` |
| 6 | `theorem` | [differentiableAt_cuspFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/differentiableat-cuspfunction--1fb7e1976cfc6cc6347cbaef.md) | 100 | `result-track:1fb7e1976cfc6cc6347cbaef7590751946a918afb49e5f36d8c222d4362a4de0` |
| 7 | `lemma` | [analyticAt_cuspFunction_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/analyticat-cuspfunction-zero--87e9002069395d62ae75d1cd.md) | 113 | `result-track:87e9002069395d62ae75d1cd8d55aab73569f525de414e4faac17027cd04a51c` |
| 8 | `def` | [qExpansion](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/qexpansion--079f7ea93211dc6d3ee809f0.md) | 120 | `declaration-track:079f7ea93211dc6d3ee809f02a7baaf9f34efa2259d3e7476e4c73b931b431e6` |
| 9 | `lemma` | [qExpansion_coeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/qexpansion-coeff--233ed5cba40db2253918bc3f.md) | 123 | `result-track:233ed5cba40db2253918bc3f341180924a6910085f0c38f0e076975ce4329f5a` |
| 10 | `lemma` | [hasSum_qExpansion_of_abs_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/hassum-qexpansion-of-abs-lt--3a8636ae07b36ef1341af28a.md) | 127 | `result-track:3a8636ae07b36ef1341af28ac674e0e1391e16bac0e2ce4a82ffa5284cbee355` |
| 11 | `lemma` | [hasSum_qExpansion](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/hassum-qexpansion--9d9469f6e04860c39b0c8075.md) | 138 | `result-track:9d9469f6e04860c39b0c8075e1fadd8ba2e2e30debc127f26cc03771939eab7b` |
| 12 | `def` | [qExpansionFormalMultilinearSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/qexpansionformalmultilinearseries--2c2b28b8e42dcb474ae2a2d5.md) | 149 | `declaration-track:2c2b28b8e42dcb474ae2a2d5fe329aa46cd3b76d8f2a0ece828e8e5597c4f6e4` |
| 13 | `lemma` | [qExpansionFormalMultilinearSeries_apply_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/qexpansionformalmultilinearseries-apply-norm--4fb21b2a0c63527ef2808a76.md) | 152 | `result-track:4fb21b2a0c63527ef2808a762656d4735c0b47e5129a1f833622060985c7b7f8` |
| 14 | `lemma` | [qExpansionFormalMultilinearSeries_radius](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/qexpansionformalmultilinearseries-radius--9c6cf89f6436aef19db32982.md) | 158 | `result-track:9c6cf89f6436aef19db32982c662c55b98c50d40cd8409e8a02c0bd0ba2c3be0` |
| 15 | `lemma` | [hasFPowerSeries_cuspFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/hasfpowerseries-cuspfunction--c67c2770e177d9d6997e28e8.md) | 169 | `result-track:c67c2770e177d9d6997e28e88ae94c35462cc7bb971d5d901627364dd8ef9a29` |
| 16 | `theorem` | [zero_at_infty_comp_ofComplex](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/zero-at-infty-comp-ofcomplex--d365b1ebf9b791169a1692de.md) | 182 | `result-track:d365b1ebf9b791169a1692de6656d4da6aa69b21e8cf257c4144abd2e45f7b6e` |
| 17 | `theorem` | [cuspFunction_apply_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/cuspfunction-apply-zero--85246c9dd571a8af07f60654.md) | 186 | `result-track:85246c9dd571a8af07f606541449f316eafd4ffcf7a882e0301f0ebad9ab9d3e` |
| 18 | `theorem` | [exp_decay_atImInfty](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean/declarations/exp-decay-atiminfty--8d1080a6d2965df2519b3be7.md) | 191 | `result-track:8d1080a6d2965df2519b3be74a2a1f71db3eb522d119b6ed3f2748a9dcfc6729` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
