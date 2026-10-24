# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CanonicalTentLedgerControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70f5915815f2889196a99533423e8ce2bf6e66ec",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalTentLedgerControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalTentLedgerControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalTentLedgerControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70f5915815f2889196a99533423e8ce2bf6e66ec`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalTentLedgerControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/CanonicalTentLedgerControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [square_two_ledger_balance](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalTentLedgerControls.lean/declarations/square-two-ledger-balance--769e6e14056d21b13854bfbe.md) | 20 | `result-track:769e6e14056d21b13854bfbe857409ffb3d64e2d16000e947ae381c2cf46c140` |
| 2 | `theorem` | [wrong_sign_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalTentLedgerControls.lean/declarations/wrong-sign-control--ce16b4eb8ac0daf394a27b83.md) | 31 | `result-track:ce16b4eb8ac0daf394a27b830d4b74f652e1da34e7ed5468e41004ed0beecbad` |
| 3 | `theorem` | [endpoint_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalTentLedgerControls.lean/declarations/endpoint-control--8d8c3b42c39253d40882a00b.md) | 43 | `result-track:8d8c3b42c39253d40882a00b31019e989fe2973ac821f5fb30ea9c00f6984b59` |
| 4 | `theorem` | [finite_head_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalTentLedgerControls.lean/declarations/finite-head-control--82ec4cad079227957fcb28e4.md) | 48 | `result-track:82ec4cad079227957fcb28e4cbac34a263a3812149bc7f27c7b13f6de011e548` |
| 5 | `theorem` | [tail_decay_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalTentLedgerControls.lean/declarations/tail-decay-control--7af4b7714031a8f0684f5299.md) | 54 | `result-track:7af4b7714031a8f0684f52999baa012fe0778d8aaedfe19a7148571799a54f00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
