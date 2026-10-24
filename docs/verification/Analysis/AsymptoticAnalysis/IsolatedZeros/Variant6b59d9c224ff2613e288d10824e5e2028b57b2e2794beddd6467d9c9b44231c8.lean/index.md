# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.IsolatedZeros.Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79baade6672c185b61b1fd1c74115860fa37b5f5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79baade6672c185b61b1fd1c74115860fa37b5f5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Dslope` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FormalMultilinearSeries` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/hassum-at-zero--6088bec1eb4191d8a901cf49.md) | 47 | `result-track:6088bec1eb4191d8a901cf49ffae2ada6c9acab680f66a7fac7bbafbe42a30d5` |
| 2 | `theorem` | [exists_hasSum_smul_of_apply_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/exists-hassum-smul-of-apply-eq-zero--335ee35bd9e113ebc3c717be.md) | 54 | `result-track:335ee35bd9e113ebc3c717bee6e7aacbd6267347b94224ab671cf84d57322bf9` |
| 3 | `theorem` | [has_fpower_series_dslope_fslope](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/has-fpower-series-dslope-fslope--547867f59a025f6abdeeedf1.md) | 75 | `result-track:547867f59a025f6abdeeedf1cb0ad4c4a3778c1b662199a0e4170fea78111114` |
| 4 | `theorem` | [has_fpower_series_iterate_dslope_fslope](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/has-fpower-series-iterate-dslope-fslope--8c3fc8eb7b88d19687bfad99.md) | 89 | `result-track:8c3fc8eb7b88d19687bfad99ed7e861fafc2995500c715d2acddc16dd0d285ac` |
| 5 | `theorem` | [iterate_dslope_fslope_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/iterate-dslope-fslope-ne-zero--b7f98eea187d2ba1d801debb.md) | 96 | `result-track:b7f98eea187d2ba1d801debb8b7dbd14665c44e84625d468d83f5cd4bb471202` |
| 6 | `theorem` | [eq_pow_order_mul_iterate_dslope](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/eq-pow-order-mul-iterate-dslope--7be28324ed956fe9998f530f.md) | 102 | `result-track:7be28324ed956fe9998f530f8148bc0495ab0103e3b11787aeea5c5edd00d915` |
| 7 | `theorem` | [locally_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/locally-ne-zero--5ac0057977483a7eb190eea1.md) | 114 | `result-track:5ac0057977483a7eb190eea1a3ee8eecc68faaa08626b27a05e43c9bac962b38` |
| 8 | `theorem` | [locally_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/locally-zero-iff--ee41691b649e4ecc0304be7a.md) | 122 | `result-track:ee41691b649e4ecc0304be7a428a133d234d1e482c012e133236189046c780eb` |
| 9 | `theorem` | [eventually_eq_zero_or_eventually_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/eventually-eq-zero-or-eventually-ne-zero--465695639e56daf4a722df27.md) | 133 | `result-track:465695639e56daf4a722df271c1139146294a2b2281c03d2dd71de493a3872c3` |
| 10 | `theorem` | [eventually_eq_or_eventually_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/eventually-eq-or-eventually-ne--cd95d02f4446348d5d160ff2.md) | 141 | `result-track:cd95d02f4446348d5d160ff288486d1d82128e0cf184d8409d3b5fb7f0f5ecab` |
| 11 | `theorem` | [frequently_zero_iff_eventually_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/frequently-zero-iff-eventually-zero--cbd48ac3a9c48340007ed427.md) | 146 | `result-track:cbd48ac3a9c48340007ed42748db99568f73f452bb453cc00f249e07ae8b0ae1` |
| 12 | `theorem` | [frequently_eq_iff_eventually_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/frequently-eq-iff-eventually-eq--a6b8c4a993472bcea770c490.md) | 152 | `result-track:a6b8c4a993472bcea770c490d233c8525ef3477b947bc9855c6555a48737e455` |
| 13 | `theorem` | [eqOn_zero_of_preconnected_of_frequently_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/eqon-zero-of-preconnected-of-frequently-eq-zero--cba2faf30d4c1e9c0c061020.md) | 168 | `result-track:cba2faf30d4c1e9c0c061020c9a6716c1e65a17d22f763905e82bece963434b3` |
| 14 | `theorem` | [eqOn_zero_of_preconnected_of_mem_closure](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/eqon-zero-of-preconnected-of-mem-closure--d881979627ced904b5c211a3.md) | 174 | `result-track:d881979627ced904b5c211a3ca49e599829ef70e299cd71451eacc4548d5c091` |
| 15 | `theorem` | [eqOn_of_preconnected_of_frequently_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/eqon-of-preconnected-of-frequently-eq--0f708fdb7328d85935a68fb1.md) | 185 | `result-track:0f708fdb7328d85935a68fb1c1b173d55e5d6d2deb4b120bcc036ad2ec75d363` |
| 16 | `theorem` | [eqOn_of_preconnected_of_mem_closure](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/eqon-of-preconnected-of-mem-closure--8a818013b2eac95621ac2e2a.md) | 193 | `result-track:8a818013b2eac95621ac2e2afbbeb2e0f52b10f5f35a35e3943238d58f821f92` |
| 17 | `theorem` | [eq_of_frequently_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant6b59d9c224ff2613e288d10824e5e2028b57b2e2794beddd6467d9c9b44231c8.lean/declarations/eq-of-frequently-eq--728782ee52420b1b964c23f4.md) | 204 | `result-track:728782ee52420b1b964c23f492604e4629757a2cfb29140bbf9ced35b05c5ea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
