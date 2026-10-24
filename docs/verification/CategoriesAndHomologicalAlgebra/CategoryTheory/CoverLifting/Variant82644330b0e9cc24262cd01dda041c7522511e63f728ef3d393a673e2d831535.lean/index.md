# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoverLifting.Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2a1bcc0622e29c7d2f80c77563d756e8d41d1dd",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2a1bcc0622e29c7d2f80c77563d756e8d41d1dd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.KanExtension` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoverPreserving` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoverLifting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/coverlifting--6b74dd989bc388767aedf11a.md) | 75 | `declaration-track:6b74dd989bc388767aedf11addd1c145c7b66e255eab53ea7b640080943e9a19` |
| 2 | `theorem` | [idCoverLifting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/idcoverlifting--45c77b82492a7290a73fb864.md) | 80 | `result-track:45c77b82492a7290a73fb8643531ccca3417f5164cf103c80a5247e6f547ce4f` |
| 3 | `theorem` | [compCoverLifting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/compcoverlifting--6e2de16d238b78eacb37dabf.md) | 87 | `result-track:6e2de16d238b78eacb37dabf832680168d2053f79cc55b4a418613eb6014511f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/instance--628d61a64fd5dea9a3236f65.md) | 128 | `declaration-track:628d61a64fd5dea9a3236f65ec6f475cfb29b82edf42f3507788819a723b4101` |
| 5 | `def` | [pulledbackFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/pulledbackfamily--a9f49a03e499351863caddc2.md) | 137 | `declaration-track:a9f49a03e499351863caddc2a97519ad9261600cbaac7fdd7aababbcdf268d29` |
| 6 | `theorem` | [pulledbackFamily_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/pulledbackfamily-apply--30ed92e491476572be7542fd.md) | 144 | `result-track:30ed92e491476572be7542fd0f46cdaa072c9061928361c146f4d774ba3e35b0` |
| 7 | `def` | [getSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/getsection--a7f7120524fccce59419104a.md) | 157 | `declaration-track:a7f7120524fccce59419104a350f97681f3cdd497d53a8e74c40ce377ea6760f` |
| 8 | `theorem` | [getSection_isAmalgamation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/getsection-isamalgamation--5f0e46bf9027e6e98e159ef6.md) | 165 | `result-track:5f0e46bf9027e6e98e159ef6ca87976177381446a2ff266d497aaa0c593a7579` |
| 9 | `theorem` | [getSection_is_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/getsection-is-unique--00573df8aa637a3add3ca1dd.md) | 171 | `result-track:00573df8aa637a3add3ca1dd84c2d27c0cd1b01afcfa15dfcb41581132b9ebad` |
| 10 | `theorem` | [getSection_commute](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/getsection-commute--6d5012b044054c235e88a79c.md) | 181 | `result-track:6d5012b044054c235e88a79cb33cf18deae0b7def85b2ddb88ba99aa6955a03c` |
| 11 | `def` | [gluedLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/gluedlimitcone--208ed52f30fd58f85eac35c9.md) | 203 | `declaration-track:208ed52f30fd58f85eac35c97dd47a19d8d1d49fd37a71d85849243eab32df14` |
| 12 | `theorem` | [gluedLimitCone_π_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/gluedlimitcone-app--58a9d400ee31fb243fc21617.md) | 210 | `result-track:58a9d400ee31fb243fc216178c13f9656c6673784df0adf372f1cb2ec2f9cd2e` |
| 13 | `def` | [gluedSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/gluedsection--0db60f4d73a2b5b55ef461be.md) | 216 | `declaration-track:0db60f4d73a2b5b55ef461be8f435673c7c11feb86ec15fb31e195e8bbc995de` |
| 14 | `theorem` | [helper](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/helper--6731e049a9ea6b7bd0c34afe.md) | 227 | `result-track:6731e049a9ea6b7bd0c34afe26a40ffe168a7adbde612ad46370e942f3c64384` |
| 15 | `theorem` | [gluedSection_isAmalgamation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/gluedsection-isamalgamation--b0f2a5804fbbe4fb72f6db8f.md) | 255 | `result-track:b0f2a5804fbbe4fb72f6db8f29f10f633100f22923d69beefeea3bdbb47d8c8a` |
| 16 | `theorem` | [gluedSection_is_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/gluedsection-is-unique--38ff9b65b5e1a2ee9304152c.md) | 272 | `result-track:38ff9b65b5e1a2ee9304152c21e86c1c4d7746d4011a3a73159e627c3b989c63` |
| 17 | `theorem` | [ran_isSheaf_of_coverLifting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/ran-issheaf-of-coverlifting--97799a7e4cfc4398b8453556.md) | 294 | `result-track:97799a7e4cfc4398b845355645a76a6761af7d54a42b222a6c5ec98c2b2da16e` |
| 18 | `def` | [Sites.copullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/sites-copullback--2e3c22e12a96c6dbc6f999fd.md) | 308 | `declaration-track:2e3c22e12a96c6dbc6f999fd856259da7a3037e43bec20a03acb667142f4d5be` |
| 19 | `def` | [Sites.pullbackCopullbackAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/sites-pullbackcopullbackadjunction--f57c00664e034497c2581c21.md) | 320 | `declaration-track:f57c00664e034497c2581c211e1cc7dc64fc42f5ae243163899168f34bc44aa3` |
| 20 | `def` | [pullbackSheafificationCompatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/pullbacksheafificationcompatibility--afd2dc2c93670177360b16a4.md) | 364 | `declaration-track:afd2dc2c93670177360b16a4a711198c286452ab611a1c5068f2f3ab273c1211` |
| 21 | `lemma` | [toSheafify_pullbackSheafificationCompatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/tosheafify-pullbacksheafificationcompatibility--097d6df71754e203c07eb6fd.md) | 379 | `result-track:097d6df71754e203c07eb6fdbd84228d9d128f6138466d376b853e9d433bcb26` |
| 22 | `lemma` | [pullbackSheafificationCompatibility_hom_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/declarations/pullbacksheafificationcompatibility-hom-app-val--074948009ef1251a2b63b718.md) | 406 | `result-track:074948009ef1251a2b63b718e118d466c24f27f1f2378bd4fe636e00ce54bd09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
