# Verification target: GRWTSK.Algebra.Galois.Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5166c21a4483803cbbc9ef563dd19952c2143832",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/index.md) · [Full source](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5166c21a4483803cbbc9ef563dd19952c2143832`.

Source path: `GRWTSK/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.RamificationInertia.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Invariant.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ramificationIdxIn](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/ramificationidxin--ba332995ff60947aa6a0b423.md) | 59 | `declaration-track:ba332995ff60947aa6a0b4237eeb52581903ddf3d3c6d578ca6978dd1fc6de0f` |
| 2 | `def` | [inertiaDegIn](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/inertiadegin--cabf0ba90d4654d9cb27eb49.md) | 68 | `declaration-track:cabf0ba90d4654d9cb27eb499f0698cb5a55f97723c65a923e8a77d296632d0b` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/instance--06fa2fc10b8defedb4bd9956.md) | 76 | `declaration-track:06fa2fc10b8defedb4bd9956c7db009a4f2582c207461d423a566b5465170357` |
| 4 | `theorem` | [coe_smul_primesOver](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/coe-smul-primesover--623276d435784ff88960a42e.md) | 82 | `result-track:623276d435784ff88960a42e98626816e5c9c27c2da30145076572235758713a` |
| 5 | `theorem` | [coe_smul_primesOver_mk](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/coe-smul-primesover-mk--56d2eb0a62cdb8d46052e32f.md) | 86 | `result-track:56d2eb0a62cdb8d46052e32fecb31a60015a5bd612230af3db1e87027d5482ff` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/instance--608b9624c7ab7c80867802eb.md) | 94 | `declaration-track:608b9624c7ab7c80867802eb1457a4b616157380e7068df2030c3f390136e052` |
| 7 | `theorem` | [coe_smul_primesOver_eq_map_galRestrict](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/coe-smul-primesover-eq-map-galrestrict--04750f6a1cfbfe44a4c3c5e1.md) | 106 | `result-track:04750f6a1cfbfe44a4c3c5e1f220d415ff05528032cf1e6977459fe3ad9c6910` |
| 8 | `theorem` | [coe_smul_primesOver_mk_eq_map_galRestrict](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/coe-smul-primesover-mk-eq-map-galrestrict--578599b7a06cc98346a3e5f0.md) | 110 | `result-track:578599b7a06cc98346a3e5f05000fae66075c57c583d2e1ff70ad922e1ebb23a` |
| 9 | `theorem` | [exists_map_eq_of_isGalois](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/exists-map-eq-of-isgalois--e997c4085c4280ecfc718c37.md) | 129 | `result-track:e997c4085c4280ecfc718c375ae54b09d06f0085b9b82920bd93a7bd7260e5c3` |
| 10 | `theorem` | [isPretransitive_of_isGalois](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/ispretransitive-of-isgalois--31e07882c1fbb4adaef90230.md) | 136 | `result-track:31e07882c1fbb4adaef902302e347b6ea4c2bf8e2d20e1f303ed12aba1d6d939` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/instance--96a1843f4113fc0a31dd0ce5.md) | 143 | `declaration-track:96a1843f4113fc0a31dd0ce580e7fb0e0e3398743bc1a0991a5fd4b8ab1b014b` |
| 12 | `theorem` | [ramificationIdx_eq_of_isGalois](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/ramificationidx-eq-of-isgalois--391d148224469ecab6a90821.md) | 151 | `result-track:391d148224469ecab6a9082199ef948bacd6a76cfcd5da7a1080d63b1bb1737c` |
| 13 | `theorem` | [inertiaDeg_eq_of_isGalois](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/inertiadeg-eq-of-isgalois--665c7069108f9b52e26230a6.md) | 158 | `result-track:665c7069108f9b52e26230a6dab18d768a321daecb6e95ca2f678e897ae654ca` |
| 14 | `theorem` | [ramificationIdxIn_eq_ramificationIdx](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/ramificationidxin-eq-ramificationidx--8cf01376bc15611719fde4c3.md) | 165 | `result-track:8cf01376bc15611719fde4c38b0d402f8ec4d711ad8c549d7f7b423277de69f7` |
| 15 | `theorem` | [inertiaDegIn_eq_inertiaDeg](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/inertiadegin-eq-inertiadeg--59b59c550f4f458ca8bbdfc9.md) | 173 | `result-track:59b59c550f4f458ca8bbdfc9574167226ca9ffef6b187f821ffe8579458f657f` |
| 16 | `theorem` | [ncard_primesOver_mul_ramificationIdxIn_mul_inertiaDegIn](../../../../mathematics/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/declarations/ncard-primesover-mul-ramificationidxin-mul-inertiadegin--485bcaff26e27d87f2b254f6.md) | 192 | `result-track:485bcaff26e27d87f2b254f65eceb62326900f29dafebb5923cc60ffdb177145` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
