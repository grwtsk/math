# Verification target: GRWTSK.Algebra.GaussLemma.Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e6222858f485c235128d98d33ba0c84aa80c7b2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e6222858f485c235128d98d33ba0c84aa80c7b2`.

Source path: `GRWTSK/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.SplittingField.Construction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integralClosure.mem_lifts_of_monic_of_dvd_map](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/integralclosure-mem-lifts-of-monic-of-dvd-map--119a9485e0794ff24e0203b2.md) | 53 | `result-track:119a9485e0794ff24e0203b28a89ea5206be45a049cb7915d2de712257886479` |
| 2 | `theorem` | [IsIntegrallyClosed.eq_map_mul_C_of_dvd](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/isintegrallyclosed-eq-map-mul-c-of-dvd--d1f6cfb4a52ddec715c078b5.md) | 75 | `result-track:d1f6cfb4a52ddec715c078b583c36239dcf64cd051f5addc58e7591895e71591` |
| 3 | `theorem` | [IsPrimitive.isUnit_iff_isUnit_map_of_injective](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/isprimitive-isunit-iff-isunit-map-of-injective--3b256eb9cc52c7ab621d7ab4.md) | 112 | `result-track:3b256eb9cc52c7ab621d7ab4ebee48261685cf89db733ad791e66c58b756e37d` |
| 4 | `theorem` | [IsPrimitive.irreducible_of_irreducible_map_of_injective](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/isprimitive-irreducible-of-irreducible-map-of-injective--f21a3a02d6e60bd3593479d7.md) | 120 | `result-track:f21a3a02d6e60bd3593479d7a0f05287cf6ff722b7833d1ab4cc946b7ae049ca` |
| 5 | `theorem` | [IsPrimitive.isUnit_iff_isUnit_map](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/isprimitive-isunit-iff-isunit-map--74b2d077f99a4e391fe9a572.md) | 134 | `result-track:74b2d077f99a4e391fe9a572568984fd43bb88b933714869bcf4ee20c73874c4` |
| 6 | `theorem` | [Monic.irreducible_iff_irreducible_map_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/monic-irreducible-iff-irreducible-map-fraction-map--60756953327686fa700d0da0.md) | 144 | `result-track:60756953327686fa700d0da0795e5c497bd5723500180c822efa886c0825dd08` |
| 7 | `theorem` | [isIntegrallyClosed_iff'](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/isintegrallyclosed-iff--4d08046fe548a7fa7f88d3c6.md) | 180 | `result-track:4d08046fe548a7fa7f88d3c60ed5105575983422b1b92eb56202e3fea9e7ffd8` |
| 8 | `theorem` | [Monic.dvd_of_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/monic-dvd-of-fraction-map-dvd-fraction-map--ae286971c6bee44e93029f21.md) | 194 | `result-track:ae286971c6bee44e93029f21f172a062082bd250bcf71963a6d6f024729159ad` |
| 9 | `theorem` | [Monic.dvd_iff_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/monic-dvd-iff-fraction-map-dvd-fraction-map--7deabab6a75e630337f9d861.md) | 204 | `result-track:7deabab6a75e630337f9d8610750b3e0931a540c581a8c153f6a2dbb0d1ded83` |
| 10 | `theorem` | [isUnit_or_eq_zero_of_isUnit_integerNormalization_primPart](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/isunit-or-eq-zero-of-isunit-integernormalization-primpart--dcac65f1be2070434c25ef49.md) | 217 | `result-track:dcac65f1be2070434c25ef49df62be3f32414630bdbe96cb1f5496ee77fbbbc9` |
| 11 | `theorem` | [IsPrimitive.irreducible_iff_irreducible_map_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/isprimitive-irreducible-iff-irreducible-map-fraction-map--24b07b5cbcf157dc2f1a27cf.md) | 236 | `result-track:24b07b5cbcf157dc2f1a27cfb13df872ce4c300904e175f1da6bd45838b085a3` |
| 12 | `theorem` | [IsPrimitive.dvd_of_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/isprimitive-dvd-of-fraction-map-dvd-fraction-map--a85a75701814681b516204a5.md) | 277 | `result-track:a85a75701814681b516204a507b5734071d76b6913da8fc5422fcf841a824ef8` |
| 13 | `theorem` | [IsPrimitive.dvd_iff_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/isprimitive-dvd-iff-fraction-map-dvd-fraction-map--a76636f89b11b890a8aed05a.md) | 301 | `result-track:a76636f89b11b890a8aed05a8b7dec98abf8c20926f8e5ec9fb24305868c34bc` |
| 14 | `theorem` | [IsPrimitive.Int.irreducible_iff_irreducible_map_cast](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/isprimitive-int-irreducible-iff-irreducible-map-cast--a1217c64e3bf8d18f64e9dc5.md) | 312 | `result-track:a1217c64e3bf8d18f64e9dc51e3e2534a71448ec0ef6ac8486f1f18303401554` |
| 15 | `theorem` | [IsPrimitive.Int.dvd_iff_map_cast_dvd_map_cast](../../../../mathematics/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/declarations/isprimitive-int-dvd-iff-map-cast-dvd-map-cast--3c031c774aa341b428e10638.md) | 316 | `result-track:3c031c774aa341b428e106383e053cb415bf200c5f930f23113f8f63845cf43f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
