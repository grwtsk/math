# Verification target: GRWTSK.Algebra.KummerDedekind.Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b4a5a2bc169271918ea64d64998dffcff659417",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/index.md) · [Full source](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b4a5a2bc169271918ea64d64998dffcff659417`.

Source path: `GRWTSK/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsAdjoinRoot` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductor](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/conductor--a5592a6b02ec0e869e39873a.md) | 64 | `declaration-track:a5592a6b02ec0e869e39873a70db8f79919b0c29d88364a1711eaf9443a6ca21` |
| 2 | `theorem` | [conductor_eq_of_eq](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/conductor-eq-of-eq--cba86b87b5e79385446e0390.md) | 73 | `result-track:cba86b87b5e79385446e03903c092ba6feadabb41a424bbd25ae00c7322d7553` |
| 3 | `theorem` | [conductor_subset_adjoin](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/conductor-subset-adjoin--73899ff51b6d0e0b229679ad.md) | 77 | `result-track:73899ff51b6d0e0b229679ad0ce32707e7be5ca464f9ea42fdb37b5544e6a0f8` |
| 4 | `theorem` | [mem_conductor_iff](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/mem-conductor-iff--49edb1e7907d7196aa7bc5ee.md) | 81 | `result-track:49edb1e7907d7196aa7bc5ee7571abc24632b310d3eb9eecdc0207ccdfb91332` |
| 5 | `theorem` | [conductor_eq_top_of_adjoin_eq_top](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/conductor-eq-top-of-adjoin-eq-top--1870ca650877f387af87e419.md) | 85 | `result-track:1870ca650877f387af87e4191212f60fa288a18d1dc878e641318f83474bf50b` |
| 6 | `theorem` | [conductor_eq_top_of_powerBasis](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/conductor-eq-top-of-powerbasis--cb0794eff3010baf0a2af74d.md) | 89 | `result-track:cb0794eff3010baf0a2af74da7867f479d5491022a9dae51f6a53ee69e11c5ad` |
| 7 | `theorem` | [prod_mem_ideal_map_of_mem_conductor](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/prod-mem-ideal-map-of-mem-conductor--a45bc04c6a29ba3f5e6428dc.md) | 97 | `result-track:a45bc04c6a29ba3f5e6428dc3bd4b152fd7753312c8cfdbde62e29e8137ad267` |
| 8 | `theorem` | [comap_map_eq_map_adjoin_of_coprime_conductor](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/comap-map-eq-map-adjoin-of-coprime-conductor--a3add42d48655a7cdccb889f.md) | 129 | `result-track:a3add42d48655a7cdccb889f7cc9bc995e7886458af0cdce8888c51ebdadd6cc` |
| 9 | `def` | [quotAdjoinEquivQuotMap](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/quotadjoinequivquotmap--fd489539fd6d4a2edf64f34a.md) | 168 | `declaration-track:fd489539fd6d4a2edf64f34aab5127eab9eecd2e118f92bbb15691ffba07e8d0` |
| 10 | `theorem` | [quotAdjoinEquivQuotMap_apply_mk](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/quotadjoinequivquotmap-apply-mk--dcc03593653c0c4a2ec61dc3.md) | 207 | `result-track:dcc03593653c0c4a2ec61dc3e25c36ac6a0eb661d9f2ddaa4f6d0f2017a202e8` |
| 11 | `def` | [normalizedFactorsMapEquivNormalizedFactorsMinPolyMk](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/normalizedfactorsmapequivnormalizedfactorsminpolymk--d5bc19a276ae879d210996d6.md) | 228 | `declaration-track:d5bc19a276ae879d210996d627d9eae862e9440c9dd68ad2439ebf36ccdaabcd` |
| 12 | `theorem` | [multiplicity_factors_map_eq_multiplicity](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/multiplicity-factors-map-eq-multiplicity--d75c51697a93c2b01aaad410.md) | 254 | `result-track:d75c51697a93c2b01aaad410041900faa0de50d6ecee48cf42acc953c24da592` |
| 13 | `theorem` | [normalizedFactors_ideal_map_eq_normalizedFactors_min_poly_mk_map](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/normalizedfactors-ideal-map-eq-normalizedfactors-min-poly-mk-map--0eeeb39c8d8e2bc183bb0462.md) | 266 | `result-track:0eeeb39c8d8e2bc183bb046256669dc7a1684190c210327c249a6ba45f10a1a5` |
| 14 | `theorem` | [Ideal.irreducible_map_of_irreducible_minpoly](../../../../mathematics/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/declarations/ideal-irreducible-map-of-irreducible-minpoly--b6715c7daa7fda219d62d77b.md) | 310 | `result-track:b6715c7daa7fda219d62d77bd01a60406baf32ef11d33619c9293c6138359fc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
