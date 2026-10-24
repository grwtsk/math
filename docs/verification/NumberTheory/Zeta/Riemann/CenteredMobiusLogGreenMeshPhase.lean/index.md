# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenMeshPhase

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9c26f20943b98381d8e239b89728a2184e954dc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9c26f20943b98381d8e239b89728a2184e954dc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenConstantResidual`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenConstantResidual.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenMeshPhase](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/declarations/greenmeshphase--e782c594a7c42ad5d6ff49ab.md) | 16 | `declaration-track:e782c594a7c42ad5d6ff49ab8cc951911a380f0b962d8a00de338756231c7b31` |
| 2 | `theorem` | [norm_greenMeshPhase](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/declarations/norm-greenmeshphase--b8e3ccc80edd175c910f108e.md) | 19 | `result-track:b8e3ccc80edd175c910f108efa1401343e9b99982635fde9f136499442baef47` |
| 3 | `theorem` | [fourier_mesh_eq_phase_pow](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/declarations/fourier-mesh-eq-phase-pow--546232993c52399293a388b1.md) | 26 | `result-track:546232993c52399293a388b184018f4c3e7bbd7691655a3f0391c9822b61e140` |
| 4 | `theorem` | [greenMeshPhase_ne_one_of_nonaliasing](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/declarations/greenmeshphase-ne-one-of-nonaliasing--0a16f4765b690a81235002db.md) | 39 | `result-track:0a16f4765b690a81235002db2bbb67f7117fe54963e000ad6d6544a1fa38c2a7` |
| 5 | `theorem` | [sum_greenMeshPhase_pow](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/declarations/sum-greenmeshphase-pow--05b74ceb89b88d46563d61ab.md) | 58 | `result-track:05b74ceb89b88d46563d61abd477398389d7a15225c1db2c25b44598ffd8bb75` |
| 6 | `theorem` | [norm_sum_greenMeshPhase_pow_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/declarations/norm-sum-greenmeshphase-pow-le--f2ce86a9ca7f9dfef49bd8fe.md) | 71 | `result-track:f2ce86a9ca7f9dfef49bd8fe8a6d4e600ae8f966ea4e534ffe27e9d17b8b326e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
