# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Frontier.Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3abed52e09e9bc816614d6c4e4d0c5d1b5531aad",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3abed52e09e9bc816614d6c4e4d0c5d1b5531aad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Origin` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frequencyValues](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean/declarations/frequencyvalues--878cd42086e587bf794335a3.md) | 14 | `declaration-track:878cd42086e587bf794335a3ce6fca679c46d8ecbb39fc83666ec82c0805103e` |
| 2 | `def` | [frequencyLayer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean/declarations/frequencylayer--0ed370db7957d1b1da4dfad5.md) | 23 | `declaration-track:0ed370db7957d1b1da4dfad5e1c3279387271e80d2bafe2a2645cb6a545b35a2` |
| 3 | `def` | [maximumFrequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean/declarations/maximumfrequency--955f17c4c172b3577cb3e85e.md) | 34 | `declaration-track:955f17c4c172b3577cb3e85efd559bfedb41cd8d75bfec01fc80d78d58f25606` |
| 4 | `def` | [firstFrequencyLayer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean/declarations/firstfrequencylayer--926511fa77ebb51220d65b2f.md) | 45 | `declaration-track:926511fa77ebb51220d65b2f36d9d878c6a82d0f2927168404d6ec7b1194aeb0` |
| 5 | `theorem` | [first_layer_has_maximum_frequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean/declarations/first-layer-has-maximum-frequency--82407777ef41ae73fc983e77.md) | 56 | `result-track:82407777ef41ae73fc983e774e193625daad86613203148442798f0858e77a99` |
| 6 | `theorem` | [frequency_bounded_by_maximum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean/declarations/frequency-bounded-by-maximum--a67470dc437c997ca475e29d.md) | 71 | `result-track:a67470dc437c997ca475e29de8e95fc9b885cf9690c0a6119ec2a623f7148f33` |
| 7 | `theorem` | [finite_grade_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean/declarations/finite-grade-bound--abc30016e418f8da2784ff99.md) | 85 | `result-track:abc30016e418f8da2784ff9949b6f23d95bfa7a601798b84811170006cb6c1d0` |
| 8 | `structure` | [GradedFrontierCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean/declarations/gradedfrontiercertificate--4f74e9ce9c94ae256256d534.md) | 99 | `declaration-track:4f74e9ce9c94ae256256d534c138db61cce00057cd27235335d1602f2a6f9899` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
