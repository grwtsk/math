# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.JetPolePatchControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb0a29f5d4275f0a5a05c268c04f84922fc1b598",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb0a29f5d4275f0a5a05c268c04f84922fc1b598`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalJetPolePatch`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.ConstructedSourceControls`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pointwise_error_not_derivative_error](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/pointwise-error-not-derivative-error--03fa3f31768749085ccad72f.md) | 24 | `result-track:03fa3f31768749085ccad72f0c9166d64a0062d59d0b3ce22006d40d4dddaea5` |
| 2 | `theorem` | [pole_uniform_error_retained](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/pole-uniform-error-retained--d07f79824aa907838050ca5f.md) | 30 | `result-track:d07f79824aa907838050ca5f5169c59ea2f09371da6971aae73e0f56415bb78f` |
| 3 | `theorem` | [pole_jet_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/pole-jet-checked--bbfb19ea73419c7ac0cca753.md) | 36 | `result-track:bbfb19ea73419c7ac0cca753a089bfe2398c7d5d0b10d8cf814ddd08f6327eea` |
| 4 | `theorem` | [pole_derivative_enclosed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/pole-derivative-enclosed--9cddf1a05e2b43dcee9a5a33.md) | 39 | `result-track:9cddf1a05e2b43dcee9a5a3315810ad31a0f1b796dfea0fa4be48a91abdbc30a` |
| 5 | `theorem` | [pole_fallback_and_strict_equality](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/pole-fallback-and-strict-equality--74f6ed748c4d13b6a2cc7a45.md) | 45 | `result-track:74f6ed748c4d13b6a2cc7a4599fb9b882e6fba332fdc98776909b4eb8cb39f49` |
| 6 | `theorem` | [rejected_pole_disk_is_still_nonzero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/rejected-pole-disk-is-still-nonzero--b1ab5127c37c0cf1611a4101.md) | 53 | `result-track:b1ab5127c37c0cf1611a4101d4a5e46f667d90568e268ba52fc40d38efe08d93` |
| 7 | `theorem` | [invalid_outer_disks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/invalid-outer-disks--23347efdafd4a8a4d83a918a.md) | 65 | `result-track:23347efdafd4a8a4d83a918a2b8758e4038d12fa3186073db91a15d76b0d684a` |
| 8 | `def` | [curved](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/curved--7221a7c58297a3d91687b774.md) | 72 | `declaration-track:7221a7c58297a3d91687b774a660295930b930e8270372f3e487c6b8c29a0fff` |
| 9 | `theorem` | [curved_derivative](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/curved-derivative--785b161bd244a170006265a0.md) | 74 | `result-track:785b161bd244a170006265a086d78e8ec3148a6658fff45ba1ece6064f45c392` |
| 10 | `theorem` | [curvature_cannot_be_discarded](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/curvature-cannot-be-discarded--ed7f921e25e33022dfcddee9.md) | 79 | `result-track:ed7f921e25e33022dfcddee92e2d15eaddfe80205fefb4207226bf95a63fb22a` |
| 11 | `theorem` | [pilot_jet_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/pilot-jet-checked--87a66cd0b8434eb2cea5471d.md) | 85 | `result-track:87a66cd0b8434eb2cea5471db5635dc6eed51e9fe31a74343abb41e6fa40f292` |
| 12 | `theorem` | [pilot_derivative_precision](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/pilot-derivative-precision--9cf9d7c50252ced15f2ced44.md) | 88 | `result-track:9cf9d7c50252ced15f2ced44dc352be58343d38bf22b66662af6e7fd6bd53035` |
| 13 | `theorem` | [pilot_radius_gain](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/pilot-radius-gain--bddb76c442b57d90df8e1949.md) | 93 | `result-track:bddb76c442b57d90df8e1949b69fde21a20f784501aaf660dc87127c0744f6be` |
| 14 | `theorem` | [pilot_larger_disk_nonzero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/pilot-larger-disk-nonzero--048b8551abfa7b17a862e288.md) | 101 | `result-track:048b8551abfa7b17a862e2884b449ba355ff34d8e4481cc01a09a15ad4aed8a1` |
| 15 | `theorem` | [quadratic_budget_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetPolePatchControls.lean/declarations/quadratic-budget-control--cb6387d797d74d33fbbb114a.md) | 107 | `result-track:cb6387d797d74d33fbbb114a029f4b169a64a29eea18e2677743fcd298efb851` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
