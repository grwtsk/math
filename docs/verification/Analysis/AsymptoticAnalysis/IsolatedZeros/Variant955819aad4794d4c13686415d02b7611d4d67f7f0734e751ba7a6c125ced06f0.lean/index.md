# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.IsolatedZeros.Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d16050821aedfcb0aae8d954d325f0233bd19f99",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d16050821aedfcb0aae8d954d325f0233bd19f99`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.DSlope` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.EventuallyConst` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Perfect` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/hassum-at-zero--ab98679cdcd1a914ee900110.md) | 58 | `result-track:ab98679cdcd1a914ee9001107fdb46650c3e4ace16524590c2f2f622b2108ef6` |
| 2 | `theorem` | [exists_hasSum_smul_of_apply_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/exists-hassum-smul-of-apply-eq-zero--e42fde838bb963ec7a35c5a4.md) | 61 | `result-track:e42fde838bb963ec7a35c5a417f7ac35a39699e29139734e9cdda48e0878936e` |
| 3 | `theorem` | [has_fpower_series_dslope_fslope](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/has-fpower-series-dslope-fslope--b6afa1704168fcd93f66c578.md) | 81 | `result-track:b6afa1704168fcd93f66c5783321a1e9acf1a1c9d8050ae5cc388c63c42b0ca9` |
| 4 | `theorem` | [has_fpower_series_iterate_dslope_fslope](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/has-fpower-series-iterate-dslope-fslope--49a75844ef2d0f0e81cdcf6e.md) | 94 | `result-track:49a75844ef2d0f0e81cdcf6e38ae15bf7952eb55f49eb4033dc1f6b4688d5465` |
| 5 | `theorem` | [iterate_dslope_fslope_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/iterate-dslope-fslope-ne-zero--b7c4a264d699c46fca3d246c.md) | 100 | `result-track:b7c4a264d699c46fca3d246cef2c14f509f5bf1984c4b3c9d332a26d429d1d61` |
| 6 | `theorem` | [eq_pow_order_mul_iterate_dslope](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/eq-pow-order-mul-iterate-dslope--91e8f32bcd8ed8dfa91835bf.md) | 105 | `result-track:91e8f32bcd8ed8dfa91835bf611bb73888b50f3ff6f57fac5f171cbd853e1e11` |
| 7 | `theorem` | [locally_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/locally-ne-zero--ea8ccef19ea6cfe6bca09f6f.md) | 116 | `result-track:ea8ccef19ea6cfe6bca09f6fbd717e0250194ae46273b4699d6539cbc76484b2` |
| 8 | `theorem` | [locally_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/locally-zero-iff--4c23b43e1b2af0dc7b52e88d.md) | 123 | `result-track:4c23b43e1b2af0dc7b52e88d2252e5d9426997a0ff3b2b9953bebea38bb9563c` |
| 9 | `theorem` | [eventually_eq_zero_or_eventually_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/eventually-eq-zero-or-eventually-ne-zero--cc578685e38a97eb876c6b00.md) | 133 | `result-track:cc578685e38a97eb876c6b006e0fa584b915e66e4f2da5725a84d81c6ccaf44d` |
| 10 | `theorem` | [eventually_eq_or_eventually_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/eventually-eq-or-eventually-ne--4060a4e9e0983ba3d08c2687.md) | 140 | `result-track:4060a4e9e0983ba3d08c268729c7ea996f690da46e3b4bfc488babb81acb43ee` |
| 11 | `theorem` | [frequently_zero_iff_eventually_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/frequently-zero-iff-eventually-zero--1eb5b5f6bd8481b9f51fe17a.md) | 144 | `result-track:1eb5b5f6bd8481b9f51fe17a7a7e7ce924088ffac61fb947ba9bd9acd0db978b` |
| 12 | `theorem` | [frequently_eq_iff_eventually_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/frequently-eq-iff-eventually-eq--0c4898334177905ad1b5d398.md) | 149 | `result-track:0c4898334177905ad1b5d398072c8f53e3c70458f5f363279a45386969930438` |
| 13 | `lemma` | [unique_eventuallyEq_zpow_smul_nonzero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/unique-eventuallyeq-zpow-smul-nonzero--f6fb10fd71aa8e3d39147aaa.md) | 157 | `result-track:f6fb10fd71aa8e3d39147aaaf9aa31f776a140465eb49d78667c38e2472ece7d` |
| 14 | `lemma` | [unique_eventuallyEq_pow_smul_nonzero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/unique-eventuallyeq-pow-smul-nonzero--57e842d0d4a151524914eb43.md) | 181 | `result-track:57e842d0d4a151524914eb43028c91f3cbc22d59f555259de772aa265004c070` |
| 15 | `theorem` | [exists_eventuallyEq_pow_smul_nonzero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/exists-eventuallyeq-pow-smul-nonzero-iff--3e3dc0972aec49ac27136c62.md) | 193 | `result-track:3e3dc0972aec49ac27136c62739d4c627845bca61ce6ba9ae022b790651c144c` |
| 16 | `theorem` | [eqOn_zero_of_preconnected_of_frequently_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/eqon-zero-of-preconnected-of-frequently-eq-zero--2f9a8b378e8e69555f3830d6.md) | 222 | `result-track:2f9a8b378e8e69555f3830d6a60486262d614e394272602ea789a956e49ef8e3` |
| 17 | `theorem` | [eqOn_zero_or_eventually_ne_zero_of_preconnected](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/eqon-zero-or-eventually-ne-zero-of-preconnected--c44263fd4641cbee23799673.md) | 227 | `result-track:c44263fd4641cbee23799673c7bbfdb51eb65508495821c7322d3a7a0474eb84` |
| 18 | `theorem` | [eqOn_zero_of_preconnected_of_mem_closure](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/eqon-zero-of-preconnected-of-mem-closure--e8ac1e216d469a640ec0c17a.md) | 236 | `result-track:e8ac1e216d469a640ec0c17a14afa5b9e06d714438e58db9b48ac1873a0f6a60` |
| 19 | `theorem` | [eqOn_of_preconnected_of_frequently_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/eqon-of-preconnected-of-frequently-eq--9150eb9b87a009676485d743.md) | 246 | `result-track:9150eb9b87a009676485d743da160152992a4e6c9a32390ccdb7cd6beb7c611d` |
| 20 | `theorem` | [eqOn_or_eventually_ne_of_preconnected](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/eqon-or-eventually-ne-of-preconnected--6636460e20e3d2a10e71230b.md) | 253 | `result-track:6636460e20e3d2a10e71230b91951ed976d4cc3b3f6fc7bf040b6c3f2b0c0c4c` |
| 21 | `theorem` | [eqOn_of_preconnected_of_mem_closure](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/eqon-of-preconnected-of-mem-closure--b972a9de4308fc55207dcc70.md) | 259 | `result-track:b972a9de4308fc55207dcc70678a20781b37dc558cd784138b671c9fa8ba7287` |
| 22 | `theorem` | [eq_of_frequently_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/eq-of-frequently-eq--2f38329ca1bab1038bdbfa33.md) | 269 | `result-track:2f38329ca1bab1038bdbfa33930ad11b6d2f1fc9fcd878752586c12eadd25c96` |
| 23 | `lemma` | [eq_zero_or_eq_zero_of_smul_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/eq-zero-or-eq-zero-of-smul-eq-zero--f201d17387141e9c6912fcfa.md) | 284 | `result-track:f201d17387141e9c6912fcfadb44dea700097d2fe78eeb74f9d89f9cb4332b00` |
| 24 | `lemma` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero--ca334fcf0318e697baf6a83a.md) | 308 | `result-track:ca334fcf0318e697baf6a83a7da3c53b616e300ecb2b8c061ae9c38b31222e96` |
| 25 | `theorem` | [AnalyticAt.preimage_of_nhdsNE](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/analyticat-preimage-of-nhdsne--607490502589eddf3bb36560.md) | 325 | `result-track:607490502589eddf3bb365604fd617c411faee3b8357f962363cfc0375436442` |
| 26 | `theorem` | [AnalyticAt.map_nhdsNE](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/analyticat-map-nhdsne--1860d6889f5108545214c850.md) | 344 | `result-track:1860d6889f5108545214c850becb0268242b91f2c777308cd4cd025ef2888c77` |
| 27 | `theorem` | [AnalyticOnNhd.preimage_mem_codiscreteWithin](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/analyticonnhd-preimage-mem-codiscretewithin--1de11a5cfe3b0efdd62d6569.md) | 353 | `result-track:1de11a5cfe3b0efdd62d65691f70e9cb4bd5f66cf014778e151d8d50ab13c9b7` |
| 28 | `theorem` | [AnalyticOnNhd.map_codiscreteWithin](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/declarations/analyticonnhd-map-codiscretewithin--17338aad53fc302a948514d1.md) | 372 | `result-track:17338aad53fc302a948514d1c9a446d083e52af94979bec0faadf87349442ca8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
