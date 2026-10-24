# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootNumberParity.Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67074c67bbe60cd8af6bc0b6f547005d635edd45",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67074c67bbe60cd8af6bc0b6f547005d635edd45`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Statement` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BSDRootNumberParityData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12.lean/declarations/bsdrootnumberparitydata--abfa17d58ea45d884f0a5ff3.md) | 37 | `declaration-track:abfa17d58ea45d884f0a5ff365ae9acc7d6510aea114fcee027472fe5f164354` |
| 2 | `structure` | [BSDRootNumberParityCompatibilityCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12.lean/declarations/bsdrootnumberparitycompatibilitycertificate--67fbc1d70b1ee9528a20c6d2.md) | 51 | `declaration-track:67fbc1d70b1ee9528a20c6d2342e6350b3c2aef4b8345897568389d7e1ef4416` |
| 3 | `def` | [BSDRootNumberParityCompatibilityCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12.lean/declarations/bsdrootnumberparitycompatibilitycertificate-certifiedforbsd--81ac193dc9a826b9bb92af06.md) | 76 | `declaration-track:81ac193dc9a826b9bb92af0663a18617c4eb4e4da50428b7dbb04ef6b900bdbb` |
| 4 | `theorem` | [BSDRootNumberParityCompatibilityCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12.lean/declarations/bsdrootnumberparitycompatibilitycertificate-certifiedforbsd-of-fields--18f26732fdc256db8a8ac2ca.md) | 97 | `result-track:18f26732fdc256db8a8ac2caa7e4f5c4442fad6cd11f84e2bd351f0847300377` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
