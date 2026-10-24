# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTranslationTelescoping

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e61503c5f6164a695fc9ddd8197baacd92a0436c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e61503c5f6164a695fc9ddd8197baacd92a0436c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDoubleSum`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDoubleSum.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicTranslationL1](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/declarations/cyclictranslationl1--2ec2be5d7f4b4f889b1f4d7f.md) | 13 | `declaration-track:2ec2be5d7f4b4f889b1f4d7fedae4c8eed92617450fa78a79b925f584617d65e` |
| 2 | `theorem` | [cyclicSharpTranslationL1_eq_generic](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/declarations/cyclicsharptranslationl1-eq-generic--6f8feece846a12b45d58fcbe.md) | 20 | `result-track:6f8feece846a12b45d58fcbe686a6eab6852c904ca497969241d7709ca774d52` |
| 3 | `theorem` | [cyclicTranslationL1_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/declarations/cyclictranslationl1-neg--910b544a2f584ccde2f5beb2.md) | 29 | `result-track:910b544a2f584ccde2f5beb201b8f5842be72a7544d274ea94950f35cb4fb402` |
| 4 | `def` | [CyclicSharpUnitTranslationBoundClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/declarations/cyclicsharpunittranslationboundclaim--34bd1d909ee51bf079261a81.md) | 64 | `declaration-track:34bd1d909ee51bf079261a8111a32ffdef977a3c21a53e37b2cc8f7138f7abb0` |
| 5 | `def` | [CyclicSharpTranslationTelescopingClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/declarations/cyclicsharptranslationtelescopingclaim--4ddcf707a6bc2908ec90b198.md) | 73 | `declaration-track:4ddcf707a6bc2908ec90b1985a97aa60538c37c2ad08c33cff971f2986c45079` |
| 6 | `theorem` | [unitTranslation_and_telescoping_to_translationCardinality](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/declarations/unittranslation-and-telescoping-to-translationcardinality--485458ac0b6da816b089f4d3.md) | 86 | `result-track:485458ac0b6da816b089f4d37b4a90b4c7d8c53eaf51d26963d84f2a0e5a317a` |
| 7 | `structure` | [CyclicSharpIntervalTranslationPackage](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/declarations/cyclicsharpintervaltranslationpackage--009705f9e9b282ffdc6901a2.md) | 117 | `declaration-track:009705f9e9b282ffdc6901a23ea06e669274e18985ad74a91e13d0b523482ff4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
