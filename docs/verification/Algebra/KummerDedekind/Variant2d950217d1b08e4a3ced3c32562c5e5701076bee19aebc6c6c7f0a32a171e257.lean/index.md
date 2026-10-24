# Verification target: GRWTSK.Algebra.KummerDedekind.Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12577f8b7e47b53b0c01c02c003ea6e02db78377",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/index.md) · [Full source](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12577f8b7e47b53b0c01c02c003ea6e02db78377`.

Source path: `GRWTSK/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean.json)

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
| 1 | `def` | [conductor](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/conductor--fd3b11fa1e7e8f15469a4cb9.md) | 63 | `declaration-track:fd3b11fa1e7e8f15469a4cb96084c17845cbeb4b9e707f294c0ba7f1f0db52da` |
| 2 | `theorem` | [conductor_eq_of_eq](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/conductor-eq-of-eq--0aee27cb2aba232d5b7d1691.md) | 71 | `result-track:0aee27cb2aba232d5b7d1691c1d516f7e150a0f31a83a7dc91f86ce8c214923b` |
| 3 | `theorem` | [conductor_subset_adjoin](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/conductor-subset-adjoin--8a75bad0cf100645f57962b4.md) | 74 | `result-track:8a75bad0cf100645f57962b423c02e228db02e0cd80ce97dfbbe362a9c027b13` |
| 4 | `theorem` | [mem_conductor_iff](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/mem-conductor-iff--156af13f3477afbc48743ee8.md) | 77 | `result-track:156af13f3477afbc48743ee8c860d6eb8e02459a34eca8373e1a94fb5513be0f` |
| 5 | `theorem` | [conductor_eq_top_of_adjoin_eq_top](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/conductor-eq-top-of-adjoin-eq-top--fce0427bfddcb6f4803b0008.md) | 80 | `result-track:fce0427bfddcb6f4803b0008288775d843bfbc7c7b28e25e67c5862c1eacd1e3` |
| 6 | `theorem` | [conductor_eq_top_of_powerBasis](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/conductor-eq-top-of-powerbasis--fcc94b6cd55b641d2be5286a.md) | 83 | `result-track:fcc94b6cd55b641d2be5286a8dc80d8a5f60a753c76a799bd5a66d8d3e63d9cb` |
| 7 | `lemma` | [mem_coeSubmodule_conductor](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/mem-coesubmodule-conductor--d467d993052953afa5e62c5b.md) | 87 | `result-track:d467d993052953afa5e62c5bf1f362122996822b5eb22180a73e54ffae102dac` |
| 8 | `theorem` | [prod_mem_ideal_map_of_mem_conductor](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/prod-mem-ideal-map-of-mem-conductor--7ba09ad8d6ebcf8b23111c9d.md) | 112 | `result-track:7ba09ad8d6ebcf8b23111c9dd881a70997edb289a739f90b24fa9de414b73872` |
| 9 | `theorem` | [comap_map_eq_map_adjoin_of_coprime_conductor](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/comap-map-eq-map-adjoin-of-coprime-conductor--c9abad66f3b717689c97e4db.md) | 144 | `result-track:c9abad66f3b717689c97e4db8d8f07077e3af778424ce459f05588d8cd60cfe6` |
| 10 | `def` | [quotAdjoinEquivQuotMap](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/quotadjoinequivquotmap--4b0c2c050213b71bd2ccc761.md) | 182 | `declaration-track:4b0c2c050213b71bd2ccc7616b71a9367ff797d9d3a6f386648db00447b1b111` |
| 11 | `theorem` | [quotAdjoinEquivQuotMap_apply_mk](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/quotadjoinequivquotmap-apply-mk--b8d0452b05740b78e0c4e491.md) | 218 | `result-track:b8d0452b05740b78e0c4e49188dbb121ef96c6ff290760f4a906542ea45c73fb` |
| 12 | `def` | [f](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/f--f4b0bb41709db6513134c3e9.md) | 233 | `declaration-track:f4b0bb41709db6513134c3e9238ba82d9b50894786d8c4889c2beaa79856734c` |
| 13 | `lemma` | [f_symm_aux](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/f-symm-aux--d2991bf6e32d4b9843b1daf7.md) | 241 | `result-track:d2991bf6e32d4b9843b1daf7be1079763107b415c7e7181f5b3702fcdcc5d803` |
| 14 | `def` | [normalizedFactorsMapEquivNormalizedFactorsMinPolyMk](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/normalizedfactorsmapequivnormalizedfactorsminpolymk--a2f88aaa8170d6eeab511690.md) | 259 | `declaration-track:a2f88aaa8170d6eeab51169046459e07ae486959266a00c204c685bb1301a05f` |
| 15 | `theorem` | [emultiplicity_factors_map_eq_emultiplicity](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/emultiplicity-factors-map-eq-emultiplicity--14b371b43c0cac75d0bb75fc.md) | 275 | `result-track:14b371b43c0cac75d0bb75fce90b6b3c3b480293f7ec49775c4f8efecda42725` |
| 16 | `theorem` | [normalizedFactors_ideal_map_eq_normalizedFactors_min_poly_mk_map](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/normalizedfactors-ideal-map-eq-normalizedfactors-min-poly-mk-map--db6645c61660415a72400a3f.md) | 288 | `result-track:db6645c61660415a72400a3f80927970f94fbe9779695519eb7fb9f3052f2338` |
| 17 | `theorem` | [Ideal.irreducible_map_of_irreducible_minpoly](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/ideal-irreducible-map-of-irreducible-minpoly--7f2e2e042824dcd4d38a0374.md) | 331 | `result-track:7f2e2e042824dcd4d38a037431c9731574bc5b9ff9bf0397eae508166250baa9` |
| 18 | `theorem` | [normalizedFactorsMapEquivNormalizedFactorsMinPolyMk_symm_apply_eq_span](../../../../mathematics/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/declarations/normalizedfactorsmapequivnormalizedfactorsminpolymk-symm-apply-eq-span--78f7525089ce11ba986034a0.md) | 365 | `result-track:78f7525089ce11ba986034a0220dfd2a098c4c5fd757318a4fe7104e5d199241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
