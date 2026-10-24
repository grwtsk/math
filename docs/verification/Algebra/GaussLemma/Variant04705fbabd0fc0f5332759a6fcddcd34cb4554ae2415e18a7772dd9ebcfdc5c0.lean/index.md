# Verification target: GRWTSK.Algebra.GaussLemma.Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2d0fb579acaad2a9f9ca13a1ec38d477d798578",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2d0fb579acaad2a9f9ca13a1ec38d477d798578`.

Source path: `GRWTSK/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.SplittingField.Construction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegrallyClosed` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integralClosure.mem_lifts_of_monic_of_dvd_map](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/integralclosure-mem-lifts-of-monic-of-dvd-map--4448238028c381ad2a64c86e.md) | 62 | `result-track:4448238028c381ad2a64c86e9accc6785a28d593656352787daeb3c4d94b1819` |
| 2 | `theorem` | [IsIntegrallyClosed.eq_map_mul_C_of_dvd](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/isintegrallyclosed-eq-map-mul-c-of-dvd--0ca9c0032be610bd94cab97b.md) | 85 | `result-track:0ca9c0032be610bd94cab97b2f3b9d08502defe6f2e29a9b7c72d4368d607ac3` |
| 3 | `theorem` | [IsPrimitive.isUnit_iff_isUnit_map_of_injective](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/isprimitive-isunit-iff-isunit-map-of-injective--748dd984a5a8eafe81ff6e6e.md) | 124 | `result-track:748dd984a5a8eafe81ff6e6e05bf5c61726fe0ce6566d8d635ce0acb07e8ae25` |
| 4 | `theorem` | [IsPrimitive.irreducible_of_irreducible_map_of_injective](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/isprimitive-irreducible-of-irreducible-map-of-injective--d752920841247ac446617c7e.md) | 133 | `result-track:d752920841247ac446617c7e7f8d8620dda9c540866e0f2419d0fa2501597568` |
| 5 | `theorem` | [IsPrimitive.isUnit_iff_isUnit_map](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/isprimitive-isunit-iff-isunit-map--237d285bbd71d849b9d61dd8.md) | 148 | `result-track:237d285bbd71d849b9d61dd8b14e4b8e8d0de08b685ebc3c6bda55132f9669db` |
| 6 | `theorem` | [Monic.irreducible_iff_irreducible_map_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/monic-irreducible-iff-irreducible-map-fraction-map--3b123ad3bb589e811ae9b173.md) | 161 | `result-track:3b123ad3bb589e811ae9b17305ddd0aaaee06d5c1fef916f8c6e39005fc8dab4` |
| 7 | `theorem` | [isIntegrallyClosed_iff'](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/isintegrallyclosed-iff--f2620ce7b177997e3e7f2475.md) | 198 | `result-track:f2620ce7b177997e3e7f247500e5de151d29c037b9bae33ccfbb1795420b5303` |
| 8 | `theorem` | [Monic.dvd_of_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/monic-dvd-of-fraction-map-dvd-fraction-map--2e93c0498de1ebb99bda81cd.md) | 213 | `result-track:2e93c0498de1ebb99bda81cd30553d9ea656b17bf55d579e7e875585607f1b41` |
| 9 | `theorem` | [Monic.dvd_iff_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/monic-dvd-iff-fraction-map-dvd-fraction-map--49956c869173fa71b242407d.md) | 224 | `result-track:49956c869173fa71b242407dba559f7b09cb7a0cea6452b7c7242aa4a6bd2369` |
| 10 | `theorem` | [isUnit_or_eq_zero_of_isUnit_integerNormalization_primPart](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/isunit-or-eq-zero-of-isunit-integernormalization-primpart--a24572dee25348aa327d1ea0.md) | 238 | `result-track:a24572dee25348aa327d1ea0ca7bf92960583a0632ab6031429a710a03e7727f` |
| 11 | `theorem` | [IsPrimitive.irreducible_iff_irreducible_map_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/isprimitive-irreducible-iff-irreducible-map-fraction-map--5afd1434de77d8bd437dd5c8.md) | 258 | `result-track:5afd1434de77d8bd437dd5c84c58b94e7841c0c6f16ea81b626160a6366dd540` |
| 12 | `theorem` | [IsPrimitive.dvd_of_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/isprimitive-dvd-of-fraction-map-dvd-fraction-map--da4bb0bc81dc860a903f7a91.md) | 300 | `result-track:da4bb0bc81dc860a903f7a9100c2f3806569499a17d8749a79f61d8f9d03452b` |
| 13 | `theorem` | [IsPrimitive.dvd_iff_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/isprimitive-dvd-iff-fraction-map-dvd-fraction-map--a5a30b3ef08bd574a8064ac7.md) | 325 | `result-track:a5a30b3ef08bd574a8064ac70bbddee365e1741684f6ab385dd85af9629910ba` |
| 14 | `theorem` | [IsPrimitive.Int.irreducible_iff_irreducible_map_cast](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/isprimitive-int-irreducible-iff-irreducible-map-cast--cdc996bd44aeb566addf65cc.md) | 337 | `result-track:cdc996bd44aeb566addf65cc23dc620c37e6d9b1370b42601b79539f3980a402` |
| 15 | `theorem` | [IsPrimitive.Int.dvd_iff_map_cast_dvd_map_cast](../../../../mathematics/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/declarations/isprimitive-int-dvd-iff-map-cast-dvd-map-cast--c018b2c54551cb5f280c9921.md) | 342 | `result-track:c018b2c54551cb5f280c9921384538fc4fb7bbbfd363e2d203f73d9da1e117a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
