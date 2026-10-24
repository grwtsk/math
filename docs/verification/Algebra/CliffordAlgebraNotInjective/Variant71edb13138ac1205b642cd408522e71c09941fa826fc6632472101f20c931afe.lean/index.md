# Verification target: GRWTSK.Algebra.CliffordAlgebraNotInjective.Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d083965574a54bc6ef22624f5f3f81c7860a5c77",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/index.md) · [Full source](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d083965574a54bc6ef22624f5f3f81c7860a5c77`.

Source path: `GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Contraction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Ideal` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kIdeal](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/kideal--fc5c0a931243b63b725f8067.md) | 42 | `declaration-track:fc5c0a931243b63b725f8067d3aa33662171a640675f572eec9c607fe1f05c33` |
| 2 | `theorem` | [mem_kIdeal_iff](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/mem-kideal-iff--c18083d0c9cdce2310fe92f5.md) | 45 | `result-track:c18083d0c9cdce2310fe92f5dd5afaa909282e65ee039905f720c0cb49facf32` |
| 3 | `theorem` | [X0_X1_X2_notMem_kIdeal](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/x0-x1-x2-notmem-kideal--9f14c700e8fa896578c38663.md) | 54 | `result-track:9f14c700e8fa896578c386632c390baa1ee31a8d7baa28ac3fa1f1ac48fda857` |
| 4 | `theorem` | [mul_self_mem_kIdeal_of_X0_X1_X2_mul_mem](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/mul-self-mem-kideal-of-x0-x1-x2-mul-mem--11cc325e0916461050f9c349.md) | 63 | `result-track:11cc325e0916461050f9c349ea0bc27c2ff5d2c7767133163bb944f45220c4df` |
| 5 | `def` | [K](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/k--47df70686d7dd0e723ed0962.md) | 89 | `declaration-track:47df70686d7dd0e723ed09621c261dd326266fb29b91d7ffb82904f0fd55ad03` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/instance--1bc5d76f9ffb660f854aec28.md) | 91 | `declaration-track:1bc5d76f9ffb660f854aec28a902655b5f772bb2144e8090750ea56afb065ab6` |
| 7 | `theorem` | [comap_C_kIdeal](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/comap-c-kideal--1a017f5ff801844725d714dd.md) | 93 | `result-track:1a017f5ff801844725d714dd59e08203952af5b8e486f52e696466c851051141` |
| 8 | `instance` | [K.charP](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/k-charp--5a960943f4575dc2827bff02.md) | 103 | `declaration-track:5a960943f4575dc2827bff0260ada48986512bb76dc8616fd23481a51d8e88cd` |
| 9 | `def` | [K.gen](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/k-gen--8441d0c3bed5355d32ab31de.md) | 112 | `declaration-track:8441d0c3bed5355d32ab31de46d82c2e39f97d28f80e226ea32cb25b43859ef9` |
| 10 | `theorem` | [X_sq](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/x-sq--7d573ce2ec40bbb0cafa24a9.md) | 120 | `result-track:7d573ce2ec40bbb0cafa24a9ef1d23e5e21e79f326a438adf5b7cf70fe1fce5d` |
| 11 | `theorem` | [sq_zero_of_αβγ_mul](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/sq-zero-of-mul--f7c9d2a5851d3b92257a475e.md) | 126 | `result-track:f7c9d2a5851d3b92257a475e0ecdc005e36723a1484bd2713dcfbc6c592e6a16` |
| 12 | `theorem` | [αβγ_ne_zero](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/ne-zero--76b53818598c85e498c3dd8b.md) | 133 | `result-track:76b53818598c85e498c3dd8b2297653e4dbd97b7f5c987c18fadfd3ad5547091` |
| 13 | `def` | [lFunc](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/lfunc--d5c23d045199a77971b5d504.md) | 141 | `declaration-track:d5c23d045199a77971b5d5043b8f8bb2cd20823e17bd48f47b26f5789da69aef` |
| 14 | `abbrev` | [L](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/l--0da498649ef6b718894f6c7a.md) | 146 | `declaration-track:0da498649ef6b718894f6c7aacc2a17922e4dd28d78d181378ae0f62b92ffb47` |
| 15 | `def` | [sq](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/sq--d12b5a0be4c5fe467b135da0.md) | 149 | `declaration-track:d12b5a0be4c5fe467b135da03485f3167aa2cd20f1af7467d8125ee84518008c` |
| 16 | `theorem` | [sq_map_add_char_two](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/sq-map-add-char-two--66e366b90fcda60a48c0ac48.md) | 152 | `result-track:66e366b90fcda60a48c0ac48517ef0837fdac96bf6c1b36f365eb5bf3201459d` |
| 17 | `theorem` | [sq_map_sub_char_two](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/sq-map-sub-char-two--d278dc8b460d45e18b7c3f0e.md) | 156 | `result-track:d278dc8b460d45e18b7c3f0e92fe298ba515bfbdb2daac575366d137b8a378cb` |
| 18 | `def` | [Q'](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/q--d110f8cf32079eaabf82bfc4.md) | 162 | `declaration-track:d110f8cf32079eaabf82bfc48672a81234d50835c1d117eb1285428cccadbe06` |
| 19 | `theorem` | [Q'_add](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/q-add--18ffaba30ef206deb2d15113.md) | 165 | `result-track:18ffaba30ef206deb2d1511324e63ccba783a604f22f92a38cea17ebfa1976f8` |
| 20 | `theorem` | [Q'_sub](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/q-sub--921782d0bb18e5f98e7c550b.md) | 168 | `result-track:921782d0bb18e5f98e7c550b49140df8df0190099144f5be086e947d234ec957` |
| 21 | `theorem` | [Q'_apply](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/q-apply--562db36c1da5d1d4ee8ce8cc.md) | 171 | `result-track:562db36c1da5d1d4ee8ce8cc0e7fb5b470a92d26dc08000fd5e795048c93ad30` |
| 22 | `theorem` | [Q'_apply_single](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/q-apply-single--ece6f5db2863bffb782d881b.md) | 176 | `result-track:ece6f5db2863bffb782d881b6a2be5fa9ad294245506b39eac0fe1432af663df` |
| 23 | `theorem` | [Q'_zero_under_ideal](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/q-zero-under-ideal--8722b917c26266bac9b7699b.md) | 182 | `result-track:8722b917c26266bac9b7699b545bb83ec19d94a81f9611cee9ef7e58145a8243` |
| 24 | `def` | [Q](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/q--635b519a5c1cdcc3051e19b4.md) | 204 | `declaration-track:635b519a5c1cdcc3051e19b467ca1c785487f8a44e689c9e2ad7369bd9b59160` |
| 25 | `def` | [gen](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/gen--fbb193d84c437b7627222f27.md) | 220 | `declaration-track:fbb193d84c437b7627222f276d0a1cb9600a8e2e811b2a24931f90630b909450` |
| 26 | `theorem` | [gen_mul_gen](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/gen-mul-gen--829742b26c159154782f571f.md) | 228 | `result-track:829742b26c159154782f571f95761e35fc0e6995bc7fb7937c5b2f3833bcc306` |
| 27 | `theorem` | [quot_obv](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/quot-obv--797b30845e18757adff2812f.md) | 234 | `result-track:797b30845e18757adff2812f88b95f54cf54eb43a62693a1b46e1757c572d07e` |
| 28 | `theorem` | [αβγ_smul_eq_zero](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/smul-eq-zero--2616708beb500ace32e26d45.md) | 243 | `result-track:2616708beb500ace32e26d458479e786379ce75fb7e35232aa443142a799e919` |
| 29 | `theorem` | [algebraMap_αβγ_eq_zero](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/algebramap-eq-zero--0ef6c69a797946f1448910db.md) | 255 | `result-track:0ef6c69a797946f1448910db411a3774767cb9ee9cfd0a55403911c541696032` |
| 30 | `theorem` | [algebraMap_not_injective](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/algebramap-not-injective--581f83c148f418eef0e0ecb3.md) | 260 | `result-track:581f83c148f418eef0e0ecb327d6e295551966cf06fad3401beba8d160f9acf6` |
| 31 | `theorem` | [Q_not_in_range_toQuadraticForm](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/q-not-in-range-toquadraticform--1ed1ac285ca68e0e936a1210.md) | 264 | `result-track:1ed1ac285ca68e0e936a12105d5c3fc0b0eb8c0e4e0982b47682aafcf260dc0e` |
| 32 | `theorem` | [CliffordAlgebra.not_forall_algebraMap_injective.](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/cliffordalgebra-not-forall-algebramap-injective--45a8caeb16cf8c166a9a16f5.md) | 277 | `result-track:45a8caeb16cf8c166a9a16f54024404e47bb7a27cbe68e6c7b9086403965943d` |
| 33 | `theorem` | [BilinMap.not_forall_toQuadraticMap_surjective.](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean/declarations/bilinmap-not-forall-toquadraticmap-surjective--3ec52a8f6552e190916e89af.md) | 292 | `result-track:3ec52a8f6552e190916e89af9ef874184d769da3a5d617479e67d65c6b287b63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
