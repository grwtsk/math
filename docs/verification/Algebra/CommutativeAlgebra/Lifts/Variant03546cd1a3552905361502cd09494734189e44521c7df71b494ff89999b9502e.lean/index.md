# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Lifts.Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69420df05dc2f4d7d2cbee803a00df027945efa9",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69420df05dc2f4d7d2cbee803a00df027945efa9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Subring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Monic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/lifts--52fc2f95374491608e4a0b6f.md) | 56 | `declaration-track:52fc2f95374491608e4a0b6f7b0c37570f4f547c2540c2d22c24f5a0dec7162e` |
| 2 | `theorem` | [mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/mem-lifts--3e43474c611e763448c6a9d1.md) | 59 | `result-track:3e43474c611e763448c6a9d1096845f9f630b0250392e52dcac24c23caa424aa` |
| 3 | `theorem` | [lifts_iff_set_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/lifts-iff-set-range--f71a55b50d893b13b83b42cf.md) | 62 | `result-track:f71a55b50d893b13b83b42cf9b9bf76827dfe24340b87c9189f0f61aadcd7162` |
| 4 | `theorem` | [lifts_iff_ringHom_rangeS](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/lifts-iff-ringhom-ranges--26247edc46a7e7f0ad18ca97.md) | 65 | `result-track:26247edc46a7e7f0ad18ca97d28ccdc0d7b09cd440e18a82ce573edaa5c8e04b` |
| 5 | `theorem` | [lifts_iff_coeff_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/lifts-iff-coeff-lifts--3d8888b1912284fd4e950fbf.md) | 68 | `result-track:3d8888b1912284fd4e950fbfa780dd4ea3155aaf11d4d3f797d7ea364933c017` |
| 6 | `theorem` | [lifts_iff_coeffs_subset_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/lifts-iff-coeffs-subset-range--b923d4f708f798b15796c58d.md) | 72 | `result-track:b923d4f708f798b15796c58da028ad6f74ca77b93554e29b3ebd5dcbab1ade6a` |
| 7 | `theorem` | [C_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/c-mem-lifts--0e09017cacac147368fe03eb.md) | 85 | `result-track:0e09017cacac147368fe03eba9c08ef51d09f98db684507b78c98b525b9c86ac` |
| 8 | `theorem` | [C'_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/c-mem-lifts--3b5d2303a2e08b7a1338c61d.md) | 91 | `result-track:3b5d2303a2e08b7a1338c61d17e20643cbfdb9dd806ddc5b42669f5c50c46c6c` |
| 9 | `theorem` | [X_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/x-mem-lifts--fabcadaa3fa755c59bc1d05a.md) | 98 | `result-track:fabcadaa3fa755c59bc1d05a26699760845a74e4ca067c3a867b690bb5751808` |
| 10 | `theorem` | [X_pow_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/x-pow-mem-lifts--765ea668c08597f093ae6ee2.md) | 104 | `result-track:765ea668c08597f093ae6ee238c757853df66d86365adbd0574f3facf2dc96fa` |
| 11 | `theorem` | [base_mul_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/base-mul-mem-lifts--323b41eb2bbdd5c25cdeb4bf.md) | 110 | `result-track:323b41eb2bbdd5c25cdeb4bf76904a6947b1b5f067fd28116871a0571ab97722` |
| 12 | `theorem` | [monomial_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/monomial-mem-lifts--875f42acf19c1029cb2534e6.md) | 117 | `result-track:875f42acf19c1029cb2534e619245e0b914a51b3c5460744f27ca48a94bfb6e4` |
| 13 | `theorem` | [erase_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/erase-mem-lifts--d57f7ba719e0a87559527103.md) | 124 | `result-track:d57f7ba719e0a87559527103cc8a3bd3f4f8ba01b55d020d836265bdd7485a5c` |
| 14 | `theorem` | [monomial_mem_lifts_and_degree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/monomial-mem-lifts-and-degree-eq--c785dd0e5306470d5b098390.md) | 136 | `result-track:c785dd0e5306470d5b09839046a0ed2944c7cbf20ff5d0729326d78aa454ab63` |
| 15 | `theorem` | [mem_lifts_and_degree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/mem-lifts-and-degree-eq--fe203653be031ef41d835ed0.md) | 146 | `result-track:fe203653be031ef41d835ed0a17e03943a686572e7f1e5f30df3f6c3ae5ebaae` |
| 16 | `theorem` | [lifts_and_degree_eq_and_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/lifts-and-degree-eq-and-monic--6257840bbdd01879ef9f25f7.md) | 165 | `result-track:6257840bbdd01879ef9f25f7e07da6fcfe3ed9b1a938f62af6ae7ba38fa7d4f6` |
| 17 | `theorem` | [lifts_and_natDegree_eq_and_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/lifts-and-natdegree-eq-and-monic--23fe1598914f4947f4e823ec.md) | 177 | `result-track:23fe1598914f4947f4e823ecd89e68c16a26e73543b28745ce19ddb654dea76f` |
| 18 | `def` | [liftsRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/liftsring--4fabce1aff55cce78f36e8cd.md) | 194 | `declaration-track:4fabce1aff55cce78f36e8cd4d0544030a9b57ea108e516c839502a1a438a1ad` |
| 19 | `theorem` | [lifts_iff_liftsRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/lifts-iff-liftsring--766aae6bc9c14598813415b2.md) | 199 | `result-track:766aae6bc9c14598813415b29945ddbd5bdd1507e62ed7e54a7cb185461ecdc3` |
| 20 | `def` | [mapAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/mapalg--4ed04d0d6244fa54760322de.md) | 209 | `declaration-track:4ed04d0d6244fa54760322de2392f6ec4002751409700208a367fa90c10ae6b0` |
| 21 | `theorem` | [mapAlg_eq_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/mapalg-eq-map--952a0982a53fb1e0caac9d4f.md) | 214 | `result-track:952a0982a53fb1e0caac9d4f5ebe424f72506123080db48d845de12b6d5ff2f8` |
| 22 | `theorem` | [mem_lifts_iff_mem_alg](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/mem-lifts-iff-mem-alg--a3addc9af3149eea0728905b.md) | 219 | `result-track:a3addc9af3149eea0728905b7162b9821f6798aea0f4bac56397ce5f35c4821b` |
| 23 | `theorem` | [smul_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/smul-mem-lifts--4d88d7ff218337fe220ca0b8.md) | 224 | `result-track:4d88d7ff218337fe220ca0b87e7767a3cb77723b46fb13a2aedeebd988399287` |
| 24 | `theorem` | [monic_of_monic_mapAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant03546cd1a3552905361502cd09494734189e44521c7df71b494ff89999b9502e.lean/declarations/monic-of-monic-mapalg--1f79f01c7f5e4f38cbffd110.md) | 229 | `result-track:1f79f01c7f5e4f38cbffd1105bd09f0ae2ea14ddf2a8d6189d0ec52b81b5ca6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
