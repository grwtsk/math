# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.MassAtZero.Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8500520b18e21c7440f5d766de25cd2e0486176a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8500520b18e21c7440f5d766de25cd2e0486176a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Log` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.PosDef` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_derivative_inverse](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/log-derivative-inverse--8e92724c5b710f6032623e5e.md) | 22 | `result-track:8e92724c5b710f6032623e5ebb66fe3a7534e92b1db08515c6cb6609c8362618` |
| 2 | `theorem` | [derivative_logOf_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/derivative-logof-exp--f7faf29adaff39ed8ed31b3a.md) | 38 | `result-track:f7faf29adaff39ed8ed31b3a69b3330dbf0b1adcf637626aff64965dafb0141d` |
| 3 | `theorem` | [logOf_exp_eq_X](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/logof-exp-eq-x--a7c284a17b5e296684b4f85e.md) | 49 | `result-track:a7c284a17b5e296684b4f85ecd9939ea198aed92397c994174a6755411e78b91` |
| 4 | `def` | [powerTrace](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/powertrace--77db8da4ba289d38a8e970fe.md) | 64 | `declaration-track:77db8da4ba289d38a8e970fe1f8f8d916ee50b7b5721dd636de73cfcda06fc6b` |
| 5 | `theorem` | [powerTrace_exact](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/powertrace-exact--85f75a8a4c616c0033be1647.md) | 68 | `result-track:85f75a8a4c616c0033be1647d88a0570bc05c3d90974cd20f74ce1fa15a1c39a` |
| 6 | `theorem` | [first_powerTrace](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/first-powertrace--aa933a8dbce278982df55446.md) | 74 | `result-track:aa933a8dbce278982df55446878f9bc848d05b1bb038170c6c1947d605bf12bd` |
| 7 | `theorem` | [later_powerTrace](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/later-powertrace--253fd651b53546d2d1da7b79.md) | 75 | `result-track:253fd651b53546d2d1da7b7939df5eefc17605181c757cec3f146bc5a6b206aa` |
| 8 | `def` | [functional](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/functional--1699193dedaff24ba1b7a64f.md) | 79 | `declaration-track:1699193dedaff24ba1b7a64f651c47eb68a334509eb4c40fa49edd712176b7d2` |
| 9 | `theorem` | [functional_monomial](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/functional-monomial--5726a0fea740c612e534de27.md) | 81 | `result-track:5726a0fea740c612e534de27692f1d426fe4b796dd885c532828b5275070b744` |
| 10 | `theorem` | [functional_square_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/functional-square-nonneg--4666c7a0901f1a3f2ce7002d.md) | 84 | `result-track:4666c7a0901f1a3f2ce7002d3c87d6c60a4677538c3856e02eac18706f0cf71c` |
| 11 | `theorem` | [functional_shifted_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/functional-shifted-square--cf546bca16dc85bb906e2917.md) | 87 | `result-track:cf546bca16dc85bb906e2917118ce47b2504543f5694b41567a4337879770c3a` |
| 12 | `theorem` | [dirac_moment](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/dirac-moment--15fdd74884ee0ae23fc9c102.md) | 90 | `result-track:15fdd74884ee0ae23fc9c1029030ee4df54bd118c14f83e408ee1144dfe177a2` |
| 13 | `theorem` | [dirac_functional](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/dirac-functional--f5e89994638c508cf2f4d696.md) | 94 | `result-track:f5e89994638c508cf2f4d69622235d5ee8cf3a64c244e5c55f28b38ce33ae67d` |
| 14 | `theorem` | [dirac_moment_integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/dirac-moment-integrable--d933bdd1ae3468f4fd466be0.md) | 97 | `result-track:d933bdd1ae3468f4fd466be0bd38545f0202fb23cdfc48e06849c45bcce4e4be` |
| 15 | `def` | [hankel](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/hankel--06375f0e26fc4cdef9d4044a.md) | 102 | `declaration-track:06375f0e26fc4cdef9d4044a6d4d9ee4b70ad7d0c0f0238e011104740183c500` |
| 16 | `theorem` | [unshifted_hankel_eq_diagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/unshifted-hankel-eq-diagonal--68830099c521f382001074bb.md) | 105 | `result-track:68830099c521f382001074bb8a8bfba8a6b42879d270a24e6277e974ca53f504` |
| 17 | `theorem` | [unshifted_hankel_posSemidef](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/unshifted-hankel-possemidef--79124970028013193a07f263.md) | 120 | `result-track:79124970028013193a07f26346248add900550c3bea9b89bfbd91a509e30852a` |
| 18 | `theorem` | [shifted_hankel_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/shifted-hankel-eq-zero--20ab3769c7800d0de494469e.md) | 126 | `result-track:20ab3769c7800d0de494469e3932ebc320f01bf8a9c1b8a75c66ca334c0ba401` |
| 19 | `theorem` | [shifted_hankel_posSemidef](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/shifted-hankel-possemidef--9d1d1fa7962f3006deba9afd.md) | 130 | `result-track:9d1d1fa7962f3006deba9afdfef5e066b2f67e6ef77ea770f8911704c64417dd` |
| 20 | `theorem` | [dirac_response](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/dirac-response--06f6988ceec9a472dd709589.md) | 134 | `result-track:06f6988ceec9a472dd709589cb36392d4c15d9e3446a7cd07eef25b97dd3d346` |
| 21 | `def` | [traceMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/tracemeasure--5acc83a3477cb11ca8437c7f.md) | 138 | `declaration-track:5acc83a3477cb11ca8437c7f6f958eb7052e6223bcceddc81dfa134933fd14d6` |
| 22 | `theorem` | [traceMeasure_zero_atom](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/tracemeasure-zero-atom--25a4ff279114183e55e8a0b8.md) | 141 | `result-track:25a4ff279114183e55e8a0b827c28336bc93d179b6e5cc0c0b340da528e44805` |
| 23 | `theorem` | [traceMeasure_ne_dirac](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/tracemeasure-ne-dirac--44d3d7189f03db96f3eb0261.md) | 153 | `result-track:44d3d7189f03db96f3eb02614da1d5a2636d840b2140f5fe8bc3642faa2bea36` |
| 24 | `theorem` | [summable_spectrum_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/summable-spectrum-square--9c7fd624e443b95a433e8c4e.md) | 160 | `result-track:9c7fd624e443b95a433e8c4ed2aa30750f03f94a8eb935abc5878f58a3aaf41e` |
| 25 | `theorem` | [spectrum_sq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/spectrum-sq-zero--013fa0ff23f4442ec4631ffb.md) | 168 | `result-track:013fa0ff23f4442ec4631ffbab7a8d953c01d4bf34523ec71dfc13b5bea1e2d2` |
| 26 | `theorem` | [no_summable_power_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/no-summable-power-inventory--f25eed8dcec76b0dc8641331.md) | 177 | `result-track:f25eed8dcec76b0dc864133144a3cd932ece4d385a534cdd86b0acafac031c4e` |
| 27 | `theorem` | [no_positive_trace_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variant99e2a3b7a637b36b49d4ff76bc1a4dd97928813957562220559e82a75a342312.lean/declarations/no-positive-trace-inventory--c35681277f5c43774818b65e.md) | 184 | `result-track:c35681277f5c43774818b65ef3496729711a2afcbeb7f40c4c143ea444751ca0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
