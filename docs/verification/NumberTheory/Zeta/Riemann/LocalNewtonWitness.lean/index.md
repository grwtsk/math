# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.LocalNewtonWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f38a4ad97e01b8f5cf9fcaaec07d636a5f0bb4d5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f38a4ad97e01b8f5cf9fcaaec07d636a5f0bb4d5`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalNewtonDisk`](../../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.EnclosedZeroInventory`](../../../../../mathematics/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/declarations/checkat--9ee362243aab62140fdc070a.md) | 31 | `declaration-track:9ee362243aab62140fdc070a2a8773578d2886c33c78566c473a340d5999d556` |
| 2 | `theorem` | [checkAt_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/declarations/checkat-iff--69e727b9953ef2848007d15c.md) | 34 | `result-track:69e727b9953ef2848007d15cf46b10d3d262808472f9524dc6f3244762bcb48f` |
| 3 | `theorem` | [disk_in_strip](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/declarations/disk-in-strip--a3dab02dd62c3aa99c750383.md) | 39 | `result-track:a3dab02dd62c3aa99c7503830c6ddcbf9475358aa207172d34843fec68f692f2` |
| 4 | `theorem` | [disk_analytic](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/declarations/disk-analytic--5103fcc4e035da3ed9d9b6b4.md) | 52 | `result-track:5103fcc4e035da3ed9d9b6b4ed79e42e47b0a48ab575e929c6317ed9c05cd7f6` |
| 5 | `theorem` | [exists_unique_point](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/declarations/exists-unique-point--a2d0072dc20a493df7241baa.md) | 62 | `result-track:a2d0072dc20a493df7241baa516b12f3555144eb05532d21313515fdb9472b0a` |
| 6 | `def` | [checkFamily](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/declarations/checkfamily--d19a4fae6b70bc1b45c263e3.md) | 88 | `declaration-track:d19a4fae6b70bc1b45c263e38cf7472a86c14a106ad4744034fdac348900ac11` |
| 7 | `def` | [FamilyEstimates](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/declarations/familyestimates--d8406220be5f68eae2ef2f06.md) | 94 | `declaration-track:d8406220be5f68eae2ef2f06548b207337f2fc6187d7dcfe2eb4718cd1a8ccbf` |
| 8 | `theorem` | [localWitnesses_of_checks](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/declarations/localwitnesses-of-checks--a4a2f7d952cc05bc4194e34f.md) | 100 | `result-track:a4a2f7d952cc05bc4194e34f398b55ea1418d87c05e1305cbd568d9bf9cb47db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
