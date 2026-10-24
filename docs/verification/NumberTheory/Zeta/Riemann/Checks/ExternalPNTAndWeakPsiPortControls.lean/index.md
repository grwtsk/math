# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.ExternalPNTAndWeakPsiPortControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "726e278f509cabbbbf75361add825fa333a3aa2f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndWeakPsiPortControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndWeakPsiPortControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndWeakPsiPortControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `726e278f509cabbbbf75361add825fa333a3aa2f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndWeakPsiPortControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndWeakPsiPortControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ExternalPNTAndWeakPsiPort`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [replay_inclusiveMangoldt_eq_psi](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndWeakPsiPortControls.lean/declarations/replay-inclusivemangoldt-eq-psi--b0fd276451729c8eb4bf5c7a.md) | 16 | `result-track:b0fd276451729c8eb4bf5c7a38ad1c1037554d74efdd1da692b259bb20cb05c7` |
| 2 | `theorem` | [replay_inclusive_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndWeakPsiPortControls.lean/declarations/replay-inclusive-zero--1a189f27e1e608984ed423cc.md) | 21 | `result-track:1a189f27e1e608984ed423cc0d08c8d8b1fa21a4b50834cb8d13b22224aba315` |
| 3 | `theorem` | [replay_sqrt_correction_isLittleO](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndWeakPsiPortControls.lean/declarations/replay-sqrt-correction-islittleo--a9ce519196ec84bd9ec8952c.md) | 28 | `result-track:a9ce519196ec84bd9ec8952c9bef0c19d824f295b7979af3864864ad1db7dac8` |
| 4 | `theorem` | [replay_weakInclusivePNT_to_thetaPNT](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndWeakPsiPortControls.lean/declarations/replay-weakinclusivepnt-to-thetapnt--8a92c70641242ebf965cd482.md) | 36 | `result-track:8a92c70641242ebf965cd48208726ffdfe1dac8d7886ee2411e48664449ce2d6` |
| 5 | `theorem` | [replay_weakInclusivePNT_to_not_fixedCapacity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndWeakPsiPortControls.lean/declarations/replay-weakinclusivepnt-to-not-fixedcapacity--7f4d7221111f7ce6d63c9ae9.md) | 43 | `result-track:7f4d7221111f7ce6d63c9ae95c96b194ab4926d9bfa0018e981dd474b17599f2` |
| 6 | `def` | [remainingWeakPNTPortObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndWeakPsiPortControls.lean/declarations/remainingweakpntportobligations--76e51eaa781a9a400757bbf2.md) | 50 | `declaration-track:76e51eaa781a9a400757bbf23edde9f9d08a3765f99ad333db4daafbe241f46a` |
| 7 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndWeakPsiPortControls.lean/declarations/prohibitedpromotions--5c2a0c30f17a0c47a0d403b3.md) | 58 | `declaration-track:5c2a0c30f17a0c47a0d403b3e65ce713a60cfc60c2a7294acf50ece19fb20cc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
