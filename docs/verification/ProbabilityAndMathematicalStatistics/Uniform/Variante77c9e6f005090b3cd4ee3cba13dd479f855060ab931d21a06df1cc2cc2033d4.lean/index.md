# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.Uniform.Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5a934c890b68ba4e6bb73e6db34dd0c0fa8315e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5a934c890b68ba4e6bb73e6db34dd0c0fa8315e`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Density` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ConditionalProbability` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ProbabilityMassFunction.Constructions` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsUniform](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/isuniform--88782af046dc87c5c80f4123.md) | 68 | `declaration-track:88782af046dc87c5c80f412338d658c77f92ec988dd38621fec27d860e8434f9` |
| 2 | `theorem` | [aemeasurable](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/aemeasurable--f91c6251039bf1f6ed784f7f.md) | 73 | `result-track:f91c6251039bf1f6ed784f7f567be9a67f4872b9e73a310bc1ee2288cad1de2f` |
| 3 | `theorem` | [absolutelyContinuous](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/absolutelycontinuous--27dfeee5ceae5915ee1da174.md) | 84 | `result-track:27dfeee5ceae5915ee1da1741f9fe0c22b787f84752cb8143797c5664947e9d7` |
| 4 | `theorem` | [measure_preimage](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/measure-preimage--b962b4467956a5646619b6f9.md) | 87 | `result-track:b962b4467956a5646619b6f9c5e449be5f574593851f8fd60dfdaa9cefc36025` |
| 5 | `theorem` | [isProbabilityMeasure](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/isprobabilitymeasure--0676a91cf9d0e7d68c62ea1b.md) | 93 | `result-track:0676a91cf9d0e7d68c62ea1b3fb4d5af43a61afd96ba464fc4fb15f32e2290cc` |
| 6 | `theorem` | [toMeasurable_iff](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/tomeasurable-iff--f4552c33fa2d49289d7dbcc6.md) | 100 | `result-track:f4552c33fa2d49289d7dbcc618d77610f7153e5589c706cfe85fa6716f82be70` |
| 7 | `theorem` | [toMeasurable](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/tomeasurable--904b07143c1ce2de1bce8911.md) | 105 | `result-track:904b07143c1ce2de1bce89110de7a04bed8104fb13ffece034200faf57e0fd58` |
| 8 | `theorem` | [hasPDF](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/haspdf--3f80be494e4ab4a488b45145.md) | 110 | `result-track:3f80be494e4ab4a488b451456b18bb32f0337469a838ef19d5b87a81ad1f53e5` |
| 9 | `theorem` | [pdf_eq_zero_of_measure_eq_zero_or_top](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/pdf-eq-zero-of-measure-eq-zero-or-top--4de67861b026d17f54b24e3f.md) | 118 | `result-track:4de67861b026d17f54b24e3fcdf3c8061247a5896d53868e8385664cc843324b` |
| 10 | `theorem` | [pdf_eq](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/pdf-eq--38e71b763fbf64c2ca802296.md) | 127 | `result-track:38e71b763fbf64c2ca8022963c1a3b3d76c8a7078f912c395a9696276383bb77` |
| 11 | `theorem` | [pdf_toReal_ae_eq](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/pdf-toreal-ae-eq--81177a5ab35a9f7caf7b1bf1.md) | 142 | `result-track:81177a5ab35a9f7caf7b1bf113993e007d6c53d1ddbcdfe84d4d8c6fe61ac2a8` |
| 12 | `theorem` | [mul_pdf_integrable](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/mul-pdf-integrable--aede19ee416c2db3ecd758c3.md) | 150 | `result-track:aede19ee416c2db3ecd758c321c2fb03b559b6896693ec24a1b19c9095390422` |
| 13 | `theorem` | [integral_eq](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/integral-eq--aebf8c2656ece454f8bec267.md) | 174 | `result-track:aebf8c2656ece454f8bec267167b7846c8683e20a3a58bd62343f5e6199bbcd2` |
| 14 | `lemma` | [IsUniform.cond](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/isuniform-cond--141ffceda494dd3a6aa7fc0b.md) | 188 | `result-track:141ffceda494dd3a6aa7fc0ba5fe026ecc950a066f6ba89860f4af9f5109440f` |
| 15 | `def` | [uniformPDF](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/uniformpdf--e59e83d82ce09b15feec9dc0.md) | 195 | `declaration-track:e59e83d82ce09b15feec9dc0a7d6fbb530cc747f2f043404420d596ce4e68085` |
| 16 | `lemma` | [uniformPDF_eq_pdf](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/uniformpdf-eq-pdf--a2e97ec621201bb9e94f6dce.md) | 199 | `result-track:a2e97ec621201bb9e94f6dceff913c302d9064e9ca142518079051a9d016c88d` |
| 17 | `lemma` | [uniformPDF_ite](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/uniformpdf-ite--af435f43df00fe4c0623a790.md) | 206 | `result-track:af435f43df00fe4c0623a790ec78cadb57390d4ea29cc612377c46e78b12bc4c` |
| 18 | `def` | [uniformOfFinset](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/uniformoffinset--f422a8b42cdd07f0dfd7fbc5.md) | 225 | `declaration-track:f422a8b42cdd07f0dfd7fbc5fa4050acc0246b1cefae9f27b6c6c6827923dc88` |
| 19 | `theorem` | [uniformOfFinset_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/uniformoffinset-apply--e0e4b3af479d661e44f68128.md) | 239 | `result-track:e0e4b3af479d661e44f681280c7bec2435f29e0d10396ce6b4baa12c73692550` |
| 20 | `theorem` | [uniformOfFinset_apply_of_mem](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/uniformoffinset-apply-of-mem--ed4385c6f5fa0c55e7775ebc.md) | 243 | `result-track:ed4385c6f5fa0c55e7775ebc85811ad6fb0f242bdd8bf7194aeb4357f1bc61ba` |
| 21 | `theorem` | [uniformOfFinset_apply_of_notMem](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/uniformoffinset-apply-of-notmem--1096512ca6fa7fdfe651ddd6.md) | 246 | `result-track:1096512ca6fa7fdfe651ddd6c69d546229be23109ef1850fc2bc6da50c5bb096` |
| 22 | `theorem` | [support_uniformOfFinset](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/support-uniformoffinset--4414fb92d9732271460cf686.md) | 252 | `result-track:4414fb92d9732271460cf686ade3578f4dd5dcce27de6461f2449a4f00bfe66c` |
| 23 | `theorem` | [mem_support_uniformOfFinset_iff](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/mem-support-uniformoffinset-iff--20491f8420973ba3940669dd.md) | 258 | `result-track:20491f8420973ba3940669dd20b27da638fc208d9c39110f708304bce7cbf46f` |
| 24 | `theorem` | [toOuterMeasure_uniformOfFinset_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/tooutermeasure-uniformoffinset-apply--1faac8546cd5f84b88d1951e.md) | 267 | `result-track:1faac8546cd5f84b88d1951e12e42ce33fe88d0a418786733e5302c549d551a1` |
| 25 | `theorem` | [toMeasure_uniformOfFinset_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/tomeasure-uniformoffinset-apply--6910e15687a8daf9b1bf7f56.md) | 285 | `result-track:6910e15687a8daf9b1bf7f5678fcdac92aacc48b56be780cfad815e987d1d1e8` |
| 26 | `def` | [uniformOfFintype](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/uniformoffintype--584182e768bed7ba8536a7d2.md) | 296 | `declaration-track:584182e768bed7ba8536a7d2878e50ebccd31fbdf6a7b927050e3ededd6366f3` |
| 27 | `theorem` | [uniformOfFintype_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/uniformoffintype-apply--ef49ef7f3d0aaecc1d0e5a37.md) | 302 | `result-track:ef49ef7f3d0aaecc1d0e5a37cfee46973e4959b31570257533e91a6cbb391af1` |
| 28 | `theorem` | [support_uniformOfFintype](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/support-uniformoffintype--d2a6de72c057291ad5612212.md) | 306 | `result-track:d2a6de72c057291ad5612212c6caf22cedce82716bcd3426607401d40eafe130` |
| 29 | `theorem` | [mem_support_uniformOfFintype](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/mem-support-uniformoffintype--c5a8bd00a98628f73968ba3f.md) | 310 | `result-track:c5a8bd00a98628f73968ba3f7ade4562d5501d32d409b8bb44ded464a199d448` |
| 30 | `theorem` | [toOuterMeasure_uniformOfFintype_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/tooutermeasure-uniformoffintype-apply--9a9e269ee17b944cace51277.md) | 316 | `result-track:9a9e269ee17b944cace512773820009bd8370df8cb30bdd12d96a29885354463` |
| 31 | `theorem` | [toMeasure_uniformOfFintype_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/tomeasure-uniformoffintype-apply--c3dc14cb1aaaa14763d508b8.md) | 322 | `result-track:c3dc14cb1aaaa14763d508b86751910432646219b5c0beb081b300b9627f9666` |
| 32 | `def` | [ofMultiset](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/ofmultiset--7198c8245c476a003d64420d.md) | 336 | `declaration-track:7198c8245c476a003d64420d7600495a1f76e68a2a9083843231f96e1efcfc56` |
| 33 | `theorem` | [ofMultiset_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/ofmultiset-apply--837772515bf596e31732ac4b.md) | 357 | `result-track:837772515bf596e31732ac4bd4770137afe55468a8e68ffb4dfb31d4f489f6fc` |
| 34 | `theorem` | [support_ofMultiset](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/support-ofmultiset--dd39b537af6b3876db5250dd.md) | 362 | `result-track:dd39b537af6b3876db5250dd0998c8ba791020159198facef68446a9c622ff45` |
| 35 | `theorem` | [mem_support_ofMultiset_iff](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/mem-support-ofmultiset-iff--8907a5e2dbed7570d417f73c.md) | 366 | `result-track:8907a5e2dbed7570d417f73c0e3a6ba9852ef7ca0de0da3095850052c72e3d21` |
| 36 | `theorem` | [ofMultiset_apply_of_notMem](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/ofmultiset-apply-of-notmem--1f4e6c17cd938498bb59b7a3.md) | 369 | `result-track:1f4e6c17cd938498bb59b7a39cc2fe8c30da0419f32a8e91c928377d0aa5097f` |
| 37 | `theorem` | [toOuterMeasure_ofMultiset_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/tooutermeasure-ofmultiset-apply--fe42c9bf505e603784f9dd5e.md) | 382 | `result-track:fe42c9bf505e603784f9dd5e051b14a64be28fddd2d80cbeaea8794dfbd095c4` |
| 38 | `theorem` | [toMeasure_ofMultiset_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/declarations/tomeasure-ofmultiset-apply--9da49e13bc4088cb48217169.md) | 391 | `result-track:9da49e13bc4088cb48217169a6ecc0c6f3592ce04f4d75ea67117dbe5eb45efa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
