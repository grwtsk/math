# Verification target: GRWTSK.Analysis.MeasureTheory.SpectralMeasureAtomAudit.Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb4267aa789c6816f773b35545f73c2f4b681f25",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb4267aa789c6816f773b35545f73c2f4b681f25`.

Source path: `GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolventMassKernel](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/declarations/resolventmasskernel--06d410ea7ed68c6fa14333d3.md) | 18 | `declaration-track:06d410ea7ed68c6fa14333d3092af0f6827cc7d4eded858ddc2e419ead878a4a` |
| 2 | `def` | [resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/declarations/resolventmass--f2ccf5d1878585c0d4723ba4.md) | 22 | `declaration-track:f2ccf5d1878585c0d4723ba49b177e73a53f8468365728de827f5f5ee1a1b1fd` |
| 3 | `theorem` | [resolventMassKernel_nonneg_le_one](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/declarations/resolventmasskernel-nonneg-le-one--63caedfdc14c68986559d770.md) | 25 | `result-track:63caedfdc14c68986559d7704edd5a71cb2458e6382342cb3dc00d763f692a07` |
| 4 | `theorem` | [resolventMassKernel_measurable](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/declarations/resolventmasskernel-measurable--21b852cfeaa603ef6ea3b62f.md) | 32 | `result-track:21b852cfeaa603ef6ea3b62f9c651704b4b80ff9477980d5e2b62c46b28fae6b` |
| 5 | `theorem` | [resolventMassKernel_integrable](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/declarations/resolventmasskernel-integrable--e51aff13c5c1fd8e9d431226.md) | 36 | `result-track:e51aff13c5c1fd8e9d4312268890ebdb691182dbad29e5fb009dbc2030d7e1cf` |
| 6 | `theorem` | [resolventMass_nonneg_le_total](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/declarations/resolventmass-nonneg-le-total--ecf3853c4976cff10fdbdade.md) | 44 | `result-track:ecf3853c4976cff10fdbdade737bcc243a3ef3e7268d91be8b4288adf4b24e9c` |
| 7 | `theorem` | [resolventMassKernel_tendsto_zero_right](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/declarations/resolventmasskernel-tendsto-zero-right--6c9939a9ca74b1ac4bf6e7e9.md) | 54 | `result-track:6c9939a9ca74b1ac4bf6e7e9fa6ecd9ca308b1df14b51ce129185d5d2869d0cd` |
| 8 | `theorem` | [resolventMass_tendsto_zero_atom](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/declarations/resolventmass-tendsto-zero-atom--5a250467b4171a00c06b1cb3.md) | 75 | `result-track:5a250467b4171a00c06b1cb3a29b7defb118e5693e9db62986f8ae6f7402a882` |
| 9 | `theorem` | [zero_atom_le_resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/declarations/zero-atom-le-resolventmass--f3ea1b2977c41230faaa45de.md) | 94 | `result-track:f3ea1b2977c41230faaa45de9d50187bfbe2b730dd3fae443db4164757294647` |
| 10 | `theorem` | [spectral_interval_mass_le_resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/declarations/spectral-interval-mass-le-resolventmass--6039d5cb74b6a10e4c57b964.md) | 108 | `result-track:6039d5cb74b6a10e4c57b9644b70d0c4ffda87594baf9cb830d449887e981100` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
