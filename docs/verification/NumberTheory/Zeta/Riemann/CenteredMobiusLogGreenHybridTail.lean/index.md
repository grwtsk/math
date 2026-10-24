# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHybridTail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec8ffd6a49ce55533d498642515634401b14da40",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec8ffd6a49ce55533d498642515634401b14da40`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidueMajorantObstruction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueMajorantObstruction.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenPositivePrincipalResidues](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean/declarations/greenpositiveprincipalresidues--3d22659855567f5d73871f71.md) | 17 | `declaration-track:3d22659855567f5d73871f71a51db15360a12d50a942ec93bf43b6fe74665418` |
| 2 | `def` | [greenHighQuotientResidueMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean/declarations/greenhighquotientresiduemajorant--d0ebbafc783a531ef878f48b.md) | 21 | `declaration-track:d0ebbafc783a531ef878f48b3944a4c625b2477f1992d26852ff1a760509f773` |
| 3 | `theorem` | [principal_residue_denominator_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean/declarations/principal-residue-denominator-lower--0842f80e0664e460a01281cb.md) | 30 | `result-track:0842f80e0664e460a01281cbf0f49382e6edd40887c77de99c75d000babc15bf` |
| 4 | `theorem` | [greenHighQuotientResidueMajorant_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean/declarations/greenhighquotientresiduemajorant-le--30ec084841c6fa3b180b3610.md) | 44 | `result-track:30ec084841c6fa3b180b361029029eea03457dd76ea5b38562ebd98508da9257` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
