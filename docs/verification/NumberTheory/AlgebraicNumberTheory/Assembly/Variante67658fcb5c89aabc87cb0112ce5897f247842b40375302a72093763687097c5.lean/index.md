# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Assembly.Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e45718b18b006177c5ae66b8c87f0cf714e237ef",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e45718b18b006177c5ae66b8c87f0cf714e237ef`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Tamagawa` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD.Regulator` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD.RootNumberParity` — import line 8; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD.Periods` — import line 9; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD.Sha` — import line 10; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD.Torsion` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BSDFirstPartAssemblyCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdfirstpartassemblycertificate--ad8be7279a7170ebaa8aa7f0.md) | 51 | `declaration-track:ad8be7279a7170ebaa8aa7f00c0a13272fdc8e9cee93cac7f938866a86fa1db7` |
| 2 | `def` | [BSDFirstPartAssemblyCertificate.certifiedForBSD](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdfirstpartassemblycertificate-certifiedforbsd--65e081f920c155c83af30660.md) | 98 | `declaration-track:65e081f920c155c83af3066030beecc4cdcb952331491037b08fd02a929ff6db` |
| 3 | `theorem` | [BSDFirstPartAssemblyCertificate.certifiedForBSD_of_fields](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdfirstpartassemblycertificate-certifiedforbsd-of-fields--dbacd2e92e383d39704c9fe7.md) | 126 | `result-track:dbacd2e92e383d39704c9fe734f5bd9d3ac6b184c803f7483a77a42579c46e9d` |
| 4 | `structure` | [BSDSecondPartAssemblyCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdsecondpartassemblycertificate--c445affa866dcc0864af5d4f.md) | 165 | `declaration-track:c445affa866dcc0864af5d4fa61a3932c75cf34c0969e959850c2cc3add7fbc9` |
| 5 | `def` | [BSDSecondPartAssemblyCertificate.certifiedForBSD](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdsecondpartassemblycertificate-certifiedforbsd--ef3fd338bf2f829395cc0475.md) | 224 | `declaration-track:ef3fd338bf2f829395cc0475bba8ce0ae26960bb5cc22faa54cdd255085d2734` |
| 6 | `theorem` | [BSDSecondPartAssemblyCertificate.certifiedForBSD_of_fields](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdsecondpartassemblycertificate-certifiedforbsd-of-fields--fc63375b08f41562ebe251bb.md) | 262 | `result-track:fc63375b08f41562ebe251bbd8f74725ac383bd41848c01b3f9117c0851fc95f` |
| 7 | `theorem` | [secondPart_from_leadingCoefficientIdentity](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/secondpart-from-leadingcoefficientidentity--57ffa34b78f4fd3732d87ce4.md) | 291 | `result-track:57ffa34b78f4fd3732d87ce4b5d4f2da3a591e24006102479659a15ddd4c11e1` |
| 8 | `structure` | [Conjecture](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/conjecture--f85bf81a9516f096e46e4092.md) | 300 | `declaration-track:f85bf81a9516f096e46e40929908417a9aa96a107b732f83f5d0aa2cfd1adc31` |
| 9 | `structure` | [BSDCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdcertificate--8e2faa9125f8bc360ba2c542.md) | 309 | `declaration-track:8e2faa9125f8bc360ba2c542174941914439094b5ea0cacb9a2d0bc40e7754b4` |
| 10 | `structure` | [BSDTheoremInput](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdtheoreminput--e3b17eaf62f8ba7af4e49f69.md) | 324 | `declaration-track:e3b17eaf62f8ba7af4e49f69f130c107746e175f8a888caddd36f07767ccca89` |
| 11 | `structure` | [BSDTheoremAssemblyInputData](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdtheoremassemblyinputdata--6b547f568c9553b3600cfcfb.md) | 339 | `declaration-track:6b547f568c9553b3600cfcfb02ecec64679e147644bac08542c9833a188430c0` |
| 12 | `structure` | [PackedBSDTheoremInput](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/packedbsdtheoreminput--315030925cb923b2e58d6bd6.md) | 379 | `declaration-track:315030925cb923b2e58d6bd69ee04fbd7cbffcc0033cbb33f2acab893e75157f` |
| 13 | `structure` | [BSDTheoremAssemblyCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdtheoremassemblycertificate--d47b42ff55b7d8b0f9a21c2f.md) | 400 | `declaration-track:d47b42ff55b7d8b0f9a21c2ff95953166743497a6d9ff91d29c6791868646e26` |
| 14 | `def` | [BSDTheoremAssemblyCertificate.certifiedForBSD](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdtheoremassemblycertificate-certifiedforbsd--bba1a50207b33e2558242a57.md) | 437 | `declaration-track:bba1a50207b33e2558242a57f69616fb4daecfb7a8e6c4e00be65bec436e7da8` |
| 15 | `theorem` | [BSDTheoremAssemblyCertificate.certifiedForBSD_of_fields](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdtheoremassemblycertificate-certifiedforbsd-of-fields--f41e3cb6e6a8dfdd2092239b.md) | 464 | `result-track:f41e3cb6e6a8dfdd2092239b41b7c8e2ff075032b07f01c9574ef95c5ae1038e` |
| 16 | `structure` | [BSDTheoremAnalyticObjectSharedData](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdtheoremanalyticobjectshareddata--9087b49d3f866b2cb0228f0e.md) | 506 | `declaration-track:9087b49d3f866b2cb0228f0e2e7694009cdb9575ba107c837a82e1178002b04d` |
| 17 | `structure` | [BSDTheoremAnalyticObjectCoherenceCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdtheoremanalyticobjectcoherencecertificate--7d37cf1571b4fb6ee2d688cf.md) | 542 | `declaration-track:7d37cf1571b4fb6ee2d688cffd109a475006d08804b8b81d50434110cf951841` |
| 18 | `def` | [BSDTheoremAnalyticObjectCoherenceCertificate.certifiedForBSD](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdtheoremanalyticobjectcoherencecertificate-certifiedforbsd--b7b1b746ddfb78f536a274b4.md) | 580 | `declaration-track:b7b1b746ddfb78f536a274b46711d1c303b3e000b000f1f3c0444ac13f5911fe` |
| 19 | `theorem` | [BSDTheoremAnalyticObjectCoherenceCertificate.certifiedForBSD_of_fields](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdtheoremanalyticobjectcoherencecertificate-certifiedforbsd-of-fields--fe6ed678346a4eab80de59e4.md) | 610 | `result-track:fe6ed678346a4eab80de59e41b58b6e2bf5b17fad4a3aab1fcea7929458fcd7a` |
| 20 | `structure` | [BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdtheoremanalyticcontinuationuniquenesscoherencecertificate--e5d9784958caca995e9298cd.md) | 653 | `declaration-track:e5d9784958caca995e9298cd1a94e18748a09d11d10e8d199b2de9bbc7f17145` |
| 21 | `def` | [BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate.certifiedForBSD](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdtheoremanalyticcontinuationuniquenesscoherencecertificate-certifiedfo--c03565786869a60e5107c62b.md) | 698 | `declaration-track:c03565786869a60e5107c62bf999fd0b6d5d16f1758eb5806b389993852f46ae` |
| 22 | `theorem` | [BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate.certifiedForBSD_of_fields](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/declarations/bsdtheoremanalyticcontinuationuniquenesscoherencecertificate-certifiedfo--5f61ff5614ae6d6b3aee466f.md) | 725 | `result-track:5f61ff5614ae6d6b3aee466fb581f3ded8e2ed0aebb41eec58a56054fd345086` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
