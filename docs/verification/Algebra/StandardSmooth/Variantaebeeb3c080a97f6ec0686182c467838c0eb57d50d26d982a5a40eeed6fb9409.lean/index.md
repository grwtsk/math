# Verification target: GRWTSK.Algebra.StandardSmooth.Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1488d16ca6a3815cd0b0a3bf3a8c644758feb8b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/index.md) · [Full source](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1488d16ca6a3815cd0b0a3bf3a8c644758feb8b`.

Source path: `GRWTSK/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.StandardSmooth` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Algebraize` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsStandardSmooth](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmooth--d15cc9a1e5b5e7c5ad02cf56.md) | 42 | `declaration-track:d15cc9a1e5b5e7c5ad02cf56f8914c59b642efd51541d535f889b21a4c65516f` |
| 2 | `lemma` | [IsStandardSmooth.toAlgebra](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmooth-toalgebra--1ea02fb7ad9d3efbf46452eb.md) | 46 | `result-track:1ea02fb7ad9d3efbf46452ebedb4fa33ce775910e4b203961780d5d6a4d0c055` |
| 3 | `def` | [IsStandardSmoothOfRelativeDimension](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmoothofrelativedimension--83f672b22af65cf876a87f7d.md) | 52 | `declaration-track:83f672b22af65cf876a87f7deb2d1d064febfb215d3dbbfd79481778268060be` |
| 4 | `lemma` | [IsStandardSmoothOfRelativeDimension.toAlgebra](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmoothofrelativedimension-toalgebra--5cd30cd0ee62027ff4541d0d.md) | 56 | `result-track:5cd30cd0ee62027ff4541d0d51b9c7bb3876794eb6f107e5eb3e3146b9bc9f82` |
| 5 | `lemma` | [IsStandardSmoothOfRelativeDimension.isStandardSmooth](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmoothofrelativedimension-isstandardsmooth--3dc3f78dd7826cc1d6609c3e.md) | 60 | `result-track:3dc3f78dd7826cc1d6609c3e9a3873bb2c3473b06c8548b771b9cc49d4d4b9ac` |
| 6 | `lemma` | [IsStandardSmoothOfRelativeDimension.id](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmoothofrelativedimension-id--bd6eb589acb910fb3766d88d.md) | 69 | `result-track:bd6eb589acb910fb3766d88d9a25949ca0527cec5147a480bbd280d5c51ee2be` |
| 7 | `lemma` | [IsStandardSmoothOfRelativeDimension.equiv](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmoothofrelativedimension-equiv--8ab2af9eaa14392bd2a36287.md) | 73 | `result-track:8ab2af9eaa14392bd2a3628711a87b054188cac8a171c838ef17692a8e9f0238` |
| 8 | `lemma` | [IsStandardSmooth.comp](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmooth-comp--e4c33bf575c68622f271ee43.md) | 80 | `result-track:e4c33bf575c68622f271ee432850faea5afbbb9ff535bcd4f2dc930976c2bdb7` |
| 9 | `lemma` | [IsStandardSmoothOfRelativeDimension.comp](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmoothofrelativedimension-comp--a14d00b2d2ba50968a5fad0a.md) | 87 | `result-track:a14d00b2d2ba50968a5fad0ae08fc0984b1b79bb70a3c47d3ff034037ac247cf` |
| 10 | `lemma` | [isStandardSmooth_stableUnderComposition](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmooth-stableundercomposition--288a5c69446554e7db8eb023.md) | 95 | `result-track:288a5c69446554e7db8eb0234070cd6fab8d25073629bae635322df0911bbed2` |
| 11 | `lemma` | [isStandardSmooth_respectsIso](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmooth-respectsiso--0a26a9bbd8e09943b10f246b.md) | 99 | `result-track:0a26a9bbd8e09943b10f246bff259defb70cacce74870997b095a98432bb6c0b` |
| 12 | `lemma` | [isStandardSmoothOfRelativeDimension_respectsIso](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmoothofrelativedimension-respectsiso--c72e30c83cd9a2ee7ac8426c.md) | 104 | `result-track:c72e30c83cd9a2ee7ac8426cf141d1824e9bde038f9c6aefd687019051280ea9` |
| 13 | `lemma` | [isStandardSmooth_isStableUnderBaseChange](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmooth-isstableunderbasechange--6b759da388915c7670c57df3.md) | 113 | `result-track:6b759da388915c7670c57df3f9046c7833d53d96e6ff2992fcae206034db9f23` |
| 14 | `lemma` | [isStandardSmoothOfRelativeDimension_isStableUnderBaseChange](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmoothofrelativedimension-isstableunderbasechange--4f47604c05ff5c52b49af708.md) | 126 | `result-track:4f47604c05ff5c52b49af708098c539a60a3688c29e82ec437c0599c75c17f66` |
| 15 | `lemma` | [IsStandardSmoothOfRelativeDimension.algebraMap_isLocalizationAway](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmoothofrelativedimension-algebramap-islocalizationaway--9dc4c34938eb9d69a42122e7.md) | 139 | `result-track:9dc4c34938eb9d69a42122e7600a1c34ca3cc0019dc83904eb07d0920d7a7f2d` |
| 16 | `lemma` | [isStandardSmooth_localizationPreserves](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmooth-localizationpreserves--87216c25e19c693d1028e221.md) | 149 | `result-track:87216c25e19c693d1028e2219660d3d51e5238ca1179818e9c2e4e666a2059ce` |
| 17 | `lemma` | [isStandardSmoothOfRelativeDimension_localizationPreserves](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmoothofrelativedimension-localizationpreserves--afb9b6f5c31b9ee6ade2f5f8.md) | 152 | `result-track:afb9b6f5c31b9ee6ade2f5f8f545113caccd89ad8a69c38451954fe00f92f63f` |
| 18 | `lemma` | [isStandardSmooth_holdsForLocalizationAway](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmooth-holdsforlocalizationaway--6e7ae6d6c42105fd042c9eac.md) | 156 | `result-track:6e7ae6d6c42105fd042c9eac067dab6e26dd241384401dac0937c61646944927` |
| 19 | `lemma` | [isStandardSmoothOfRelativeDimension_holdsForLocalizationAway](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmoothofrelativedimension-holdsforlocalizationaway--61c03ee8a6f07e8e34d8a001.md) | 161 | `result-track:61c03ee8a6f07e8e34d8a00172ccd14021cf5aa197d75595affa553fa6f8937d` |
| 20 | `lemma` | [isStandardSmooth_stableUnderCompositionWithLocalizationAway](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmooth-stableundercompositionwithlocalizationaway--8f68848325a96998b44ce15a.md) | 166 | `result-track:8f68848325a96998b44ce15ab5bb3d755d5a875e2b803f6b64ec2a5fe4970358` |
| 21 | `lemma` | [isStandardSmoothOfRelativeDimension_stableUnderCompositionWithLocalizationAway](../../../../mathematics/Algebra/StandardSmooth/Variantaebeeb3c080a97f6ec0686182c467838c0eb57d50d26d982a5a40eeed6fb9409.lean/declarations/isstandardsmoothofrelativedimension-stableundercompositionwithlocalizati--01a42c26cf2e913a6c8efabf.md) | 171 | `result-track:01a42c26cf2e913a6c8efabf3121b616d5963a41d9cc40c72c823997feeea499` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
