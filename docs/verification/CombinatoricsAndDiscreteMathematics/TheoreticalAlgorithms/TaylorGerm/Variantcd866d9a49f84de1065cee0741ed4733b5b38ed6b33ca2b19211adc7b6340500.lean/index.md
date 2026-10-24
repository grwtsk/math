# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TaylorGerm.Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51aa2880cbf91cc4a664a687171e2379260198b4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51aa2880cbf91cc4a664a687171e2379260198b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Statement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TaylorExpansionAtSEqOneData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/declarations/taylorexpansionatseqonedata--2e0ecffafd2b563dd756d226.md) | 41 | `declaration-track:2e0ecffafd2b563dd756d2263e89200193877ccac4c19169d8a70f4ef14db2c2` |
| 2 | `structure` | [TaylorExpansionAtSEqOneCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/declarations/taylorexpansionatseqonecertificate--8248e692c54631886c133c73.md) | 62 | `declaration-track:8248e692c54631886c133c735fa1d6a4f368eec0dc4636dca5e260171f47f36e` |
| 3 | `def` | [TaylorExpansionAtSEqOneCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/declarations/taylorexpansionatseqonecertificate-certifiedforbsd--320660e1ec5fdd4c86254ecd.md) | 79 | `declaration-track:320660e1ec5fdd4c86254ecd4dc0effe692bbc897164d7a11c32f9d5179c8620` |
| 4 | `theorem` | [TaylorExpansionAtSEqOneCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/declarations/taylorexpansionatseqonecertificate-certifiedforbsd-of-fields--72a5aba39532df0c8a8fe973.md) | 92 | `result-track:72a5aba39532df0c8a8fe973985413bf641135c55803a84a0669435782495da9` |
| 5 | `structure` | [LeadingCoefficientCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/declarations/leadingcoefficientcertificate--f8936d57da1e0e527d38b387.md) | 117 | `declaration-track:f8936d57da1e0e527d38b38786179ef255665cebecfb1d4aa78b9b5fad21af3a` |
| 6 | `def` | [LeadingCoefficientCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/declarations/leadingcoefficientcertificate-certifiedforbsd--afc4056ed6ed87c50b309366.md) | 149 | `declaration-track:afc4056ed6ed87c50b3093664712f7ed8111490197879347bacebe21a8a6a347` |
| 7 | `theorem` | [LeadingCoefficientCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/declarations/leadingcoefficientcertificate-certifiedforbsd-of-fields--1ff086736f56b6adfe052423.md) | 167 | `result-track:1ff086736f56b6adfe052423c86ac703178930d2728c08b8f862a552fb8f209d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
