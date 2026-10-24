# Verification target: GRWTSK.Analysis.Basic.Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3693d917d5395638f42642f1830eff5137bb190a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/index.md) · [Full source](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3693d917d5395638f42642f1830eff5137bb190a`.

Source path: `GRWTSK/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CutDigest](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/cutdigest--3491aa3009b877cfff5d14d8.md) | 21 | `declaration-track:3491aa3009b877cfff5d14d860f04412013b2b026ce8c603a4f35e9074dd8487` |
| 2 | `structure` | [CellDigest](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/celldigest--e39bb46920bc85f814c59414.md) | 25 | `declaration-track:e39bb46920bc85f814c59414361f951fc6853c28d15a68cea8e70f7c06ecda33` |
| 3 | `structure` | [CertificateDigest](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/certificatedigest--e33f108b6ff7570920a33498.md) | 29 | `declaration-track:e33f108b6ff7570920a33498c45e2a538d7eb793194257c9c57f676efefb23d5` |
| 4 | `structure` | [AnalyticCellId](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/analyticcellid--19bdc2aa5cf8a261cefe0528.md) | 33 | `declaration-track:19bdc2aa5cf8a261cefe052862c17e5379c6c2fcb8ad6dc71cf41a75969880b7` |
| 5 | `structure` | [RefinementId](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/refinementid--c34f1d0863df188c48a45e98.md) | 37 | `declaration-track:c34f1d0863df188c48a45e98545c4f77c16787ebb726364059439bf83a6427c5` |
| 6 | `structure` | [ZeroLineageId](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/zerolineageid--a97cc58a1f6b5287be062f6d.md) | 41 | `declaration-track:a97cc58a1f6b5287be062f6d3cb10bb678dec97677edb1fd42b7554dbc1807c6` |
| 7 | `structure` | [SpectralCutId](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/spectralcutid--c5c783143865862cb94c84af.md) | 45 | `declaration-track:c5c783143865862cb94c84af87db4f54bb085904416a7729e3ec17ad382daf64` |
| 8 | `structure` | [SpectralCandidateId](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/spectralcandidateid--26daff2521b216b753df761a.md) | 49 | `declaration-track:26daff2521b216b753df761a246ba78311722f157f4db6bb85952cfe8c71461c` |
| 9 | `structure` | [AssumptionId](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/assumptionid--e544873785eaef691a04547b.md) | 53 | `declaration-track:e544873785eaef691a04547bed82a89c5deb9b4a90a46acc0b89a6359dab180a` |
| 10 | `structure` | [PriorityKey](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/prioritykey--2298781b6e7bdb5e81d046ce.md) | 57 | `declaration-track:2298781b6e7bdb5e81d046cead137720c2a022e3ea74900e1d4355ce72b27bae` |
| 11 | `structure` | [RealInterval](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/realinterval--c3f9d6aa49d130b5fd67db6a.md) | 62 | `declaration-track:c3f9d6aa49d130b5fd67db6a3ede55afc3812356625c831da4ebf83ee68f02e0` |
| 12 | `def` | [RealInterval.Contains](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/realinterval-contains--acb19682a955c2c22b52c4f3.md) | 67 | `declaration-track:acb19682a955c2c22b52c4f3a9f354d800b77b2454774eb13ea032bfda33e503` |
| 13 | `structure` | [ComplexInterval](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/complexinterval--6cdefbfe8ac30beaf82cdd97.md) | 72 | `declaration-track:6cdefbfe8ac30beaf82cdd97d6e79cd124eb8ec7e0150c2bf17ec39fdf103909` |
| 14 | `def` | [ComplexInterval.Contains](../../../../mathematics/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean/declarations/complexinterval-contains--8f6afd1270a20fa7f79679a5.md) | 75 | `declaration-track:8f6afd1270a20fa7f79679a5eb0565854905eb13f9e511b39ec54eed59cf2aeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
