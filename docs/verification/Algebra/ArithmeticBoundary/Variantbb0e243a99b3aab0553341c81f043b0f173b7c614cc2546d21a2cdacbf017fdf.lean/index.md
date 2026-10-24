# Verification target: GRWTSK.Algebra.ArithmeticBoundary.Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f35a6966ad66a67a057434ec88fed5a911344cda",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/index.md) · [Full source](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f35a6966ad66a67a057434ec88fed5a911344cda`.

Source path: `GRWTSK/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.BSDTwistWitness` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Arithmetic.EllipticCurve` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Arithmetic.ModularWitness` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.Arithmetic.Torsion` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BSDContract](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/bsdcontract--f1d6e2886a3be8e2eaa4ea46.md) | 23 | `declaration-track:f1d6e2886a3be8e2eaa4ea467a64eb88eca759407499b45b5ae27fcf95abd3d4` |
| 2 | `structure` | [HasseWeilContract](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/hasseweilcontract--ca4ca58c90483ab8eae3a530.md) | 32 | `declaration-track:ca4ca58c90483ab8eae3a530095569094e1e06c2e91dc7e2beb593e397e8c40c` |
| 3 | `structure` | [ShafarevichTateContract](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/shafarevichtatecontract--9028ddfa708788ae898dc4ef.md) | 42 | `declaration-track:9028ddfa708788ae898dc4effa7376ba5e71abe266b48d2d718688e7beb590e0` |
| 4 | `structure` | [ModularityContract](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/modularitycontract--c128cee1a7a372d6501dfaf3.md) | 49 | `declaration-track:c128cee1a7a372d6501dfaf3135434170ec4964e15f77bf030e7d5a82f7d23b5` |
| 5 | `structure` | [BSDDataSource](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/bsddatasource--f0a06ae2c91cd427ee5eea7e.md) | 55 | `declaration-track:f0a06ae2c91cd427ee5eea7ecd15d48c89a18461ed676177c898bb6e591f6a88` |
| 6 | `def` | [AllTwistsCertified](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/alltwistscertified--ad9bc0b1a886417ec485131a.md) | 64 | `declaration-track:ad9bc0b1a886417ec485131a6d5790a8922eecd10614fe0cf5d6cac798fd71b1` |
| 7 | `structure` | [CertifiedBSDDataSource](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/certifiedbsddatasource--fa309749cb84cdd2993bf425.md) | 67 | `declaration-track:fa309749cb84cdd2993bf4258f0e1598bcd79eead560cabb5560fb0b4baa8331` |
| 8 | `structure` | [ArithmeticMonodromyParameterSource](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/arithmeticmonodromyparametersource--00f1fdd8b8a6e3f8a776b0d1.md) | 72 | `declaration-track:00f1fdd8b8a6e3f8a776b0d11658d6321a2fa85ce6762c9d489f02a6d3f33adb` |
| 9 | `theorem` | [bsd_rank_eq](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/bsd-rank-eq--e59989f90d7120b2c511d49f.md) | 79 | `result-track:e59989f90d7120b2c511d49f929f2f17dc1d473434e0be081b8f171f03163370` |
| 10 | `theorem` | [bsd_sha_eq](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/bsd-sha-eq--24dc9dbe7ac50f6effde2454.md) | 84 | `result-track:24dc9dbe7ac50f6effde2454fdabd4d825a137d93f95f6d79d14e19330500594` |
| 11 | `theorem` | [hasse_weil_has_analytic_continuation](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/hasse-weil-has-analytic-continuation--40b9ad011efdfc7fced5a31f.md) | 89 | `result-track:40b9ad011efdfc7fced5a31fdb69325881ce784570da105678c3c44968c77667` |
| 12 | `theorem` | [hasse_weil_has_functional_equation](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/hasse-weil-has-functional-equation--2cfd13bf23c43179914ae7e4.md) | 94 | `result-track:2cfd13bf23c43179914ae7e41c8ecc838e6934804a3efe416343dc3f4cb12812` |
| 13 | `theorem` | [shafarevich_tate_finite](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/shafarevich-tate-finite--112983ce296743c71d855b34.md) | 99 | `result-track:112983ce296743c71d855b348a15f026c82fdeed6d4da85be1ccc5940ba9d471` |
| 14 | `theorem` | [modularity_associated](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/modularity-associated--f7427eee13205bc05699af9a.md) | 104 | `result-track:f7427eee13205bc05699af9a5b9f3ca342dab8291277a8a17c04d0cf3c04e71f` |
| 15 | `theorem` | [bsd_data_source_certifies](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/bsd-data-source-certifies--28d06d20ebc896c6293bb82e.md) | 109 | `result-track:28d06d20ebc896c6293bb82edbf16496347067c006b8cdfe29325a2b1aa7cc37` |
| 16 | `theorem` | [certified_bsd_data_source_all_certified](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/certified-bsd-data-source-all-certified--85bbc8d6278c21f185bca0a9.md) | 115 | `result-track:85bbc8d6278c21f185bca0a925a7501c9725b6b5fdef596a7d65adf3d82f3c80` |
| 17 | `theorem` | [certified_bsd_data_source_infinite](../../../../mathematics/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean/declarations/certified-bsd-data-source-infinite--3e09d3760bf37730ef92ab0e.md) | 120 | `result-track:3e09d3760bf37730ef92ab0e8709d94df81edfc2a574bb37fd5b207e49136c2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
