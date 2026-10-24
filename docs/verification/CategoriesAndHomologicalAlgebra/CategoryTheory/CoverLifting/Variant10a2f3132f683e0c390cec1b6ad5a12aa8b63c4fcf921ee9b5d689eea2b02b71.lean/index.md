# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoverLifting.Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc57447363293835136c76bb93449f1a5d0c4908",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc57447363293835136c76bb93449f1a5d0c4908`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Restrict` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Adjunction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Continuous` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.IsCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/functor-iscocontinuous--340ac427e7f8282a776b0a84.md) | 71 | `declaration-track:340ac427e7f8282a776b0a84fc1119f306aab9cf5cea85dd91ff9e01c824b260` |
| 2 | `lemma` | [Functor.cover_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/functor-cover-lift--abd864ed4ddd29903bd78dc5.md) | 74 | `result-track:abd864ed4ddd29903bd78dc589d35aed290e1f568562ed959df4b12fce0c34a1` |
| 3 | `instance` | [isCocontinuous_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/iscocontinuous-id--bb66d90dfeb6c3c828704757.md) | 79 | `declaration-track:bb66d90dfeb6c3c82870475709d762ad28f92013ad86c867c57db4bab70d58d1` |
| 4 | `theorem` | [isCocontinuous_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/iscocontinuous-comp--6495d634600c14000284e8a2.md) | 83 | `result-track:6495d634600c14000284e8a2062c80a20745ca20b64bb018d1254b8a90a37e10` |
| 5 | `def` | [liftAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/liftaux--a754199db1ac9937f41495c3.md) | 115 | `declaration-track:a754199db1ac9937f41495c360f67b0b8f6d0febce955c6d25d8d02f5c426aba` |
| 6 | `lemma` | [liftAux_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/liftaux-map--b8d2f0c80b11bed0b18d9082.md) | 130 | `result-track:b8d2f0c80b11bed0b18d90823cd5b38672f568644984eb62d3b5e72c23ed4fdf` |
| 7 | `lemma` | [liftAux_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/liftaux-map--ac58712c4fcf08bba1ef2378.md) | 150 | `result-track:ac58712c4fcf08bba1ef237847853af3729f34f4a5015ff2933be1b42c05bda7` |
| 8 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/lift--0e7d6b1bb78f8952c339829c.md) | 165 | `declaration-track:0e7d6b1bb78f8952c339829c906a5995950da04bbba7bc180d8c00c2138412ec` |
| 9 | `lemma` | [fac'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/fac--74555133f04667236b7f2909.md) | 172 | `result-track:74555133f04667236b7f2909410c400ece2c5f942f300f72d9427734d1c54242` |
| 10 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/fac--ec998c999bd6202c3040b300.md) | 177 | `result-track:ec998c999bd6202c3040b30093e614c3693525eefd8e81626eceaafe8a067a5f` |
| 11 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/hom-ext--f032f827781cb95fa6894a34.md) | 188 | `result-track:f032f827781cb95fa6894a34ba15045fb453915cb710f8049c98e636ba6f8ee0` |
| 12 | `def` | [isLimitMultifork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/islimitmultifork--076b8cab5395f361e422d930.md) | 203 | `declaration-track:076b8cab5395f361e422d930c92721d8c8296f22805da85c147d64b697d2b81a` |
| 13 | `theorem` | [ran_isSheaf_of_isCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/ran-issheaf-of-iscocontinuous--c4e231348f914bfdd4ba8c0e.md) | 217 | `result-track:c4e231348f914bfdd4ba8c0e18cacd04b195c48cc994cc89c0f1e2ec88b2523e` |
| 14 | `def` | [Functor.sheafPushforwardCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/functor-sheafpushforwardcocontinuous--752c36fb396d027d3e45b497.md) | 227 | `declaration-track:752c36fb396d027d3e45b497aa57059ede6df74d20272937c6b9e2bab605a8db` |
| 15 | `def` | [Functor.sheafPushforwardCocontinuousCompSheafToPresheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/functor-sheafpushforwardcocontinuouscompsheaftopresheafiso--5905cdadb475c4c1caa0e9d3.md) | 236 | `declaration-track:5905cdadb475c4c1caa0e9d3f6a205c651b399f27c0d50d880c7e23e69ef5ef8` |
| 16 | `def` | [sheafAdjunctionCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/sheafadjunctioncocontinuous--47cdc2bc6c6ff465a6acc20f.md) | 261 | `declaration-track:47cdc2bc6c6ff465a6acc20f9809a9c5ac957c3eb9066d427f692d0356ced353` |
| 17 | `lemma` | [sheafAdjunctionCocontinuous_unit_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/sheafadjunctioncocontinuous-unit-app-val--d537b71a95f5ea2738ca73ce.md) | 268 | `result-track:d537b71a95f5ea2738ca73cefe26848e291a7fdb7d9baa5cc1103f0bd95c374e` |
| 18 | `lemma` | [sheafAdjunctionCocontinuous_counit_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/sheafadjunctioncocontinuous-counit-app-val--d612fb10e3c48aa2456813dc.md) | 280 | `result-track:d612fb10e3c48aa2456813dc8e1e769794f18f0b549aec208b70a6f4608dc64a` |
| 19 | `lemma` | [sheafAdjunctionCocontinuous_homEquiv_apply_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/sheafadjunctioncocontinuous-homequiv-apply-val--b92b1f7ebddf21c3814cc922.md) | 289 | `result-track:b92b1f7ebddf21c3814cc92270434b0a33d5d832f4d2ce8681fb9f3bda7cf25c` |
| 20 | `def` | [pushforwardContinuousSheafificationCompatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/pushforwardcontinuoussheafificationcompatibility--0592ccbbce0b73dc6b0d40a2.md) | 305 | `declaration-track:0592ccbbce0b73dc6b0d40a2ffcb276e610ec4ec208fb499a42dfce0d01a3427` |
| 21 | `lemma` | [toSheafify_pullbackSheafificationCompatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/tosheafify-pullbacksheafificationcompatibility--1714241d5a2b75f298418104.md) | 313 | `result-track:1714241d5a2b75f298418104ca665e44fe2a53ac87814df83a14e70ea4e6c9b4` |
| 22 | `lemma` | [pushforwardContinuousSheafificationCompatibility_hom_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/declarations/pushforwardcontinuoussheafificationcompatibility-hom-app-val--4fe7b8c10bb812740916315c.md) | 336 | `result-track:4fe7b8c10bb812740916315cc831d9d2478517a0a6318c5693eeb7de854f543b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
