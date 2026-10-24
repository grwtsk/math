# Verification target: GRWTSK.Algebra.RingHom.Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89179e24dfabde7e7f61bfa729c48d2413eec9fd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89179e24dfabde7e7f61bfa729c48d2413eec9fd`.

Source path: `GRWTSK/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Prime.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RingHom.specComap](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/ringhom-speccomap--81647a7db9ce9e0d68356c6d.md) | 36 | `declaration-track:81647a7db9ce9e0d68356c6d758f0fe003d733447dc3931cbf7a391ff374735d` |
| 2 | `theorem` | [preimage_specComap_zeroLocus_aux](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/preimage-speccomap-zerolocus-aux--bf425e11e21183655bf400bb.md) | 46 | `result-track:bf425e11e21183655bf400bb476ce0ef92f6ce4f5e2b87aa392cbfa7ba5a748d` |
| 3 | `theorem` | [specComap_asIdeal](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/speccomap-asideal--0269b7f3b57f0837955ec222.md) | 54 | `result-track:0269b7f3b57f0837955ec22249c67396460fa5f9f807c4bfa67a651c216a3186` |
| 4 | `theorem` | [specComap_id](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/speccomap-id--7d606779b44bdfc2a80235fb.md) | 59 | `result-track:7d606779b44bdfc2a80235fbac7705d2eff539463477df35b73f16ac5754917b` |
| 5 | `theorem` | [specComap_comp](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/speccomap-comp--7e6116ed60f943334ea35a5d.md) | 63 | `result-track:7e6116ed60f943334ea35a5dc58f1e27eee210c85b3cf04d8d2b2a179bdab3d5` |
| 6 | `theorem` | [specComap_comp_apply](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/speccomap-comp-apply--facaa3743e0dc61c0ace2880.md) | 67 | `result-track:facaa3743e0dc61c0ace2880c1e501f7624be5250476b173401ca335bd75b245` |
| 7 | `theorem` | [preimage_specComap_zeroLocus](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/preimage-speccomap-zerolocus--13d443928f318cb8657a8649.md) | 72 | `result-track:13d443928f318cb8657a864970eec4232e4a2f8d6b825b847ca36f999583f425` |
| 8 | `theorem` | [specComap_injective_of_surjective](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/speccomap-injective-of-surjective--fbe8ee1b7ac38eebfc474448.md) | 76 | `result-track:fbe8ee1b7ac38eebfc4744485f93d9704a7c91760edef6b9815e7059c433e626` |
| 9 | `def` | [comapEquiv](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/comapequiv--e17419d8cb565b238c1a0aba.md) | 84 | `declaration-track:e17419d8cb565b238c1a0aba64b250ef64e3a5bf64658daf9dde7d1ed976675b` |
| 10 | `def` | [sigmaToPi](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/sigmatopi--14da6b821d4962c9556163d1.md) | 104 | `declaration-track:14da6b821d4962c9556163d13d1a738bb71d52b9afa537b1364e54b40eeda458` |
| 11 | `theorem` | [sigmaToPi_injective](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/sigmatopi-injective--bd53a3a32f39817d16c8110c.md) | 107 | `result-track:bd53a3a32f39817d16c8110c875818c936fb2006d2209e93b226722a86f2291c` |
| 12 | `theorem` | [exists_maximal_notMem_range_sigmaToPi_of_infinite](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/exists-maximal-notmem-range-sigmatopi-of-infinite--84ff8cd477dfba53f0e1c13f.md) | 122 | `result-track:84ff8cd477dfba53f0e1c13f22c00dc9289960544ba20a8cc2019628d0654120` |
| 13 | `theorem` | [sigmaToPi_not_surjective_of_infinite](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/sigmatopi-not-surjective-of-infinite--a41c1fc10a91af4356b14b10.md) | 149 | `result-track:a41c1fc10a91af4356b14b105df9a38b82417a2b1dc86504d1ee366d55a049ce` |
| 14 | `lemma` | [exists_comap_evalRingHom_eq](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/exists-comap-evalringhom-eq--9e3f1658b7c3cc4881bb0d7d.md) | 153 | `result-track:9e3f1658b7c3cc4881bb0d7d44aa624c2f0d248efc8e38f062032e9ab521ad64` |
| 15 | `lemma` | [sigmaToPi_bijective](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/sigmatopi-bijective--a894a223a376a3b932bfa91d.md) | 178 | `result-track:a894a223a376a3b932bfa91d13fd682bdf2aad65445ed2e81aaec4b68efab994` |
| 16 | `lemma` | [iUnion_range_specComap_comp_evalRingHom](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/iunion-range-speccomap-comp-evalringhom--ea194140af8012eb19667ac9.md) | 185 | `result-track:ea194140af8012eb19667ac9a0c123d4871cebf53986b22ab2135a8624e91c24` |
| 17 | `theorem` | [image_specComap_zeroLocus_eq_zeroLocus_comap](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/image-speccomap-zerolocus-eq-zerolocus-comap--84553de8b9db67f9e9cdaa37.md) | 208 | `result-track:84553de8b9db67f9e9cdaa3751a359fd9ed5dd6ba2e9fa3abb50274e2f7cb5f3` |
| 18 | `theorem` | [range_specComap_of_surjective](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/range-speccomap-of-surjective--bd1574604bf2e7a890887fbe.md) | 226 | `result-track:bd1574604bf2e7a890887fbe02fc415fd3062f0dc60935b0a147a00feb414532` |
| 19 | `lemma` | [PrimeSpectrum.mem_range_comap_iff](../../../../mathematics/Algebra/RingHom/Variant85a0ef7e331deb5f2866a554013909674b2b4c47c7564baaccb0a6961f7ecde6.lean/declarations/primespectrum-mem-range-comap-iff--fefff954bb605642e0e7c919.md) | 235 | `result-track:fefff954bb605642e0e7c919da6b2b445cde9f2d01ae55384548817c4ddebb6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
