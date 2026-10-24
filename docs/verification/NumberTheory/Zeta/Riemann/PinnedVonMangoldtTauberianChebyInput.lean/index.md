# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtTauberianChebyInput

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a85d516de862df1513b7538b0641d5560ee156cf",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a85d516de862df1513b7538b0641d5560ee156cf`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ExternalPNTAndWeakPsiPort`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pinnedVonMangoldtRangeSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/declarations/pinnedvonmangoldtrangesum--7dd8ae4780c357ddaa92a4a7.md) | 52 | `declaration-track:7dd8ae4780c357ddaa92a4a73aea6e2aad2e3c1834d724db57063cd84afa1bad` |
| 2 | `theorem` | [pinnedVonMangoldtRangeSum_succ_eq_psi](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/declarations/pinnedvonmangoldtrangesum-succ-eq-psi--52cbd5fbe8c607e925cd0f6d.md) | 58 | `result-track:52cbd5fbe8c607e925cd0f6db7965579c3be8eedc91bc63507c986d7a10e53fe` |
| 3 | `theorem` | [pinnedVonMangoldtRangeSum_succ](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/declarations/pinnedvonmangoldtrangesum-succ--50e6d9ec27725c22e41ab32c.md) | 71 | `result-track:50e6d9ec27725c22e41ab32c761351b8642e0a800c00d33108ad9394806fabd8` |
| 4 | `theorem` | [pinnedVonMangoldtRangeSum_le_psi](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/declarations/pinnedvonmangoldtrangesum-le-psi--ea2f42df7a4efcc24f7470a6.md) | 81 | `result-track:ea2f42df7a4efcc24f7470a64d3f44c2fffc51a4ad7f3658ab6cc6353412be58` |
| 5 | `theorem` | [pinnedVonMangoldtRangeNorm_eq_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/declarations/pinnedvonmangoldtrangenorm-eq-sum--7d2abda3a2f3321ae8d87445.md) | 95 | `result-track:7d2abda3a2f3321ae8d87445da3ab14ac0abd4684c3e8a7f5c22886bb5f1b012` |
| 6 | `theorem` | [pinnedVonMangoldtRangeNorm_le_chebyshev](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/declarations/pinnedvonmangoldtrangenorm-le-chebyshev--b9e9fba82afd2a6cbf3e265f.md) | 109 | `result-track:b9e9fba82afd2a6cbf3e265ffa80741ac12c9db282d9cb7c9702defb72264ca1` |
| 7 | `def` | [PinnedVonMangoldtChebyWith](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/declarations/pinnedvonmangoldtchebywith--a08cfd1fb03c859084e33aff.md) | 121 | `declaration-track:a08cfd1fb03c859084e33aff6971f79b39a35dffafc08bbbbbeef391106f37a4` |
| 8 | `def` | [PinnedVonMangoldtCheby](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/declarations/pinnedvonmangoldtcheby--9299d98e90fc10d65148b2d0.md) | 127 | `declaration-track:9299d98e90fc10d65148b2d02f98b594c02346d0cf0a5326b63113b8bb4687cb` |
| 9 | `theorem` | [pinnedVonMangoldtCheby](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/declarations/pinnedvonmangoldtcheby--426b3e27a0a48af3ef86a9f4.md) | 132 | `result-track:426b3e27a0a48af3ef86a9f406234be7861388eef521dde3c3eb34958cdabe33` |
| 10 | `theorem` | [pinnedVonMangoldtCheby_nonnegativeWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/declarations/pinnedvonmangoldtcheby-nonnegativewitness--58ddde7128a62d3d5b2df7e7.md) | 138 | `result-track:58ddde7128a62d3d5b2df7e7c8af2e09f32181fbbf3fba26c09340764a2da486` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
