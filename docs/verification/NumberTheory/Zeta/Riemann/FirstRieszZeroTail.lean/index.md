# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b69a61ac7b21eda82d7264213ce9b7bc4724a33e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b69a61ac7b21eda82d7264213ce9b7bc4724a33e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentAbsolute`](../../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstRieszZeroKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/firstrieszzerokernel--8255b75e4b4b8d341d24d3cf.md) | 30 | `declaration-track:8255b75e4b4b8d341d24d3cff780178fd5764f05f77014fc06a6733f9f45fedb` |
| 2 | `theorem` | [hasDerivAt_firstRieszZeroKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/hasderivat-firstrieszzerokernel--67c951d82a3d6052fd272bdf.md) | 33 | `result-track:67c951d82a3d6052fd272bdf678e89fe101564067f31f061446d90126f01b80e` |
| 3 | `def` | [finiteRieszZeroHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/finiterieszzerohead--78f7506278fc38dbbc429304.md) | 42 | `declaration-track:78f7506278fc38dbbc42930444940fd0d6334e64223d44a73374b038f2abc5e4` |
| 4 | `theorem` | [hasDerivAt_finiteRieszZeroHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/hasderivat-finiterieszzerohead--206380ab0c55a2e7fa9fc208.md) | 45 | `result-track:206380ab0c55a2e7fa9fc2084caf25ccd298d6ab7720ac66bec847ea2d9e9037` |
| 5 | `theorem` | [norm_firstRieszZeroKernel_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/norm-firstrieszzerokernel-le--663260628b1e5297143e3e41.md) | 60 | `result-track:663260628b1e5297143e3e419e75cf01ed6767e4113b61fadba3ed06ed108cbc` |
| 6 | `def` | [firstRieszTailBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/firstriesztailbudget--6cb17fb484f4c0b4155a046a.md) | 76 | `declaration-track:6cb17fb484f4c0b4155a046a1a0875854487db09731464085681081f0db24903` |
| 7 | `theorem` | [firstRiesz_complement_summable_and_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/firstriesz-complement-summable-and-bound--44e721870e6e25de113dba01.md) | 79 | `result-track:44e721870e6e25de113dba01582ac113ae85ff912a1acf30dbdedb07df927fd7` |
| 8 | `theorem` | [firstRiesz_absolute_summable](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/firstriesz-absolute-summable--eddf40bbcd1b943ce48b558a.md) | 121 | `result-track:eddf40bbcd1b943ce48b558a61defd87ad869ee5f024aa079cc918f6b5605ea3` |
| 9 | `theorem` | [norm_firstRiesz_full_sub_head_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/norm-firstriesz-full-sub-head-le--deef7d58e79b9c21b16171ed.md) | 131 | `result-track:deef7d58e79b9c21b16171ed3a9b96a70e0abec3dae7e23e1d97ff1f17e44063` |
| 10 | `def` | [fullRieszZeroValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/fullrieszzerovalue--39c0831105170fc6ec629c74.md) | 152 | `declaration-track:39c0831105170fc6ec629c74b7f1a56cd976c97d162df2eff0be35ea4282855a` |
| 11 | `theorem` | [norm_fullRieszZeroValue_sub_head](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/norm-fullrieszzerovalue-sub-head--d09471204292778a78a16462.md) | 155 | `result-track:d09471204292778a78a16462f03feebb9c60a60037bb436ad0f931f85a043590` |
| 12 | `def` | [rieszUnsmoothingTailBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/rieszunsmoothingtailbudget--9a7531b8f3f2b5156ef0a1e9.md) | 165 | `declaration-track:9a7531b8f3f2b5156ef0a1e98494bc0051f4c67b458195cd87b3a4cbb15bc8f9` |
| 13 | `theorem` | [norm_symmetricRiesz_zero_tail](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/norm-symmetricriesz-zero-tail--7776fd28c2c0fc70c20cbe2c.md) | 170 | `result-track:7776fd28c2c0fc70c20cbe2cd2be96f10c1f7eaaa8214664c81c360358b6a693` |
| 14 | `theorem` | [firstRieszTailBudget_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/firstriesztailbudget-tendsto-zero--7d246fcd5ed2bda85ec684ff.md) | 191 | `result-track:7d246fcd5ed2bda85ec684ff8a8de8f66446cbd59d3ee4d89563437476477c35` |
| 15 | `theorem` | [rieszUnsmoothingTailBudget_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/declarations/rieszunsmoothingtailbudget-tendsto-zero--bf49a3a95060c2cf548694a1.md) | 205 | `result-track:bf49a3a95060c2cf548694a1b691c71ebe6fe232379743ca33583aaafae56a61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
