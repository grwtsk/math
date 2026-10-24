# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTranslationSubadditivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98650995823c6291507b2d5277fc32f4154694e3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98650995823c6291507b2d5277fc32f4154694e3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTranslationTelescoping`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclicTranslationL1_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/declarations/cyclictranslationl1-nonnegative--09682ffd8ab9f48ef98d40ac.md) | 13 | `result-track:09682ffd8ab9f48ef98d40acde1a3e8a00d2deb556bcc0383523dca054f40a14` |
| 2 | `theorem` | [cyclicTranslationL1_add_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/declarations/cyclictranslationl1-add-le--301944f845629fd34e33f2f8.md) | 22 | `result-track:301944f845629fd34e33f2f8ad1c5dbc574c2d66fa938581c053fe0ac7299ede` |
| 3 | `theorem` | [cyclicTranslationL1_natCast_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/declarations/cyclictranslationl1-natcast-le--0206b564a440e9ac72581913.md) | 65 | `result-track:0206b564a440e9ac72581913eeb84239eedfcedf8e5ac7d2c5036e7258f7d39b` |
| 4 | `theorem` | [cyclicTranslationL1_le_cyclicDistance](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/declarations/cyclictranslationl1-le-cyclicdistance--d4f2e0274764c014c971da45.md) | 95 | `result-track:d4f2e0274764c014c971da45c07aa10a6bbed83029c34a4285713af587819a86` |
| 5 | `theorem` | [cyclicSharpTranslationTelescoping](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/declarations/cyclicsharptranslationtelescoping--d175308326c3737f0b6d8ed9.md) | 135 | `result-track:d175308326c3737f0b6d8ed97ea5848bc8ebff57a40a4cc20a4dd8226b8273a9` |
| 6 | `def` | [CyclicSharpUnitTranslationOnlyFrontier](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/declarations/cyclicsharpunittranslationonlyfrontier--dcbbcd836c558382cd57c66d.md) | 148 | `declaration-track:dcbbcd836c558382cd57c66dfaa7be1dca38b356322b23a347c062c30ef4829b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
