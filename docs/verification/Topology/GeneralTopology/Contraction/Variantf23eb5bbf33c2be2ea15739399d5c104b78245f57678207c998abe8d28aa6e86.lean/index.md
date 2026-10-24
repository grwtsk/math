# Verification target: GRWTSK.Topology.GeneralTopology.Contraction.Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fb9beb924e43ef641dcf736da38293cb3050d88",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fb9beb924e43ef641dcf736da38293cb3050d88`.

Source path: `GRWTSK/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Kernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LawMetric](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/lawmetric--eecf8dc9e135bf87cd10fa0a.md) | 16 | `declaration-track:eecf8dc9e135bf87cd10fa0a1c668017b47c982f97ebcd5de3d5345d92912874` |
| 2 | `structure` | [ContractionCertificate](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/contractioncertificate--f5e65d9820512b8e28fd2b7e.md) | 21 | `declaration-track:f5e65d9820512b8e28fd2b7e7c7a4092db5e53da76300e4f42efb0e0e8723886` |
| 3 | `structure` | [UniformContractionMargin](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/uniformcontractionmargin--ed4a58e87f0aa1216757e9a8.md) | 43 | `declaration-track:ed4a58e87f0aa1216757e9a8e6c7247d3860a21a2129c9cc49937308a3fe3b83` |
| 4 | `def` | [UsesUniformContractionMargin](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/usesuniformcontractionmargin--1da3e730dcf2f463258106bf.md) | 50 | `declaration-track:1da3e730dcf2f463258106bfa5970af4df41d7e5a0e5e77c8ba56afa8f771806` |
| 5 | `def` | [IsInvariantLaw](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/isinvariantlaw--df3a19069318015f2afc3279.md) | 58 | `declaration-track:df3a19069318015f2afc32795a9c82157db46d5942ba303808986486ec94e8ea` |
| 6 | `structure` | [ScheduleKernelFamily](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/schedulekernelfamily--4984305d191259275dc723dc.md) | 72 | `declaration-track:4984305d191259275dc723dcbf9ed2f61bad29d612d93e91c9eeebae02e0a3f1` |
| 7 | `def` | [ScheduleKernelFamily.iterate](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/schedulekernelfamily-iterate--bff7cc2e41536d27dd2d78c4.md) | 95 | `declaration-track:bff7cc2e41536d27dd2d78c42d6803d690b81aca2d1ae56d928dceccf15f1876` |
| 8 | `theorem` | [ScheduleKernelFamily.iterate_zero](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/schedulekernelfamily-iterate-zero--94daf3f3189748b24021cc22.md) | 112 | `result-track:94daf3f3189748b24021cc229299da6ec176bc4cea7a27ecfda48dd06405f69f` |
| 9 | `theorem` | [ScheduleKernelFamily.iterate_succ](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/schedulekernelfamily-iterate-succ--5da7df74c16bd131467b484c.md) | 126 | `result-track:5da7df74c16bd131467b484c00b0dc180fb1547456f699129848b55c5dca2d44` |
| 10 | `theorem` | [arbitrary_schedule_sequence_contraction_bound](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/arbitrary-schedule-sequence-contraction-bound--0ede4c3e0bf3912922b934a1.md) | 143 | `result-track:0ede4c3e0bf3912922b934a1fa6e9cf2f9fb83e8abd69e83a129c296af178086` |
| 11 | `theorem` | [arbitrary_schedule_sequence_converges_in_law](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/arbitrary-schedule-sequence-converges-in-law--080de4b1e89d9b225cca921b.md) | 201 | `result-track:080de4b1e89d9b225cca921b19ac6a92a528a2b4e4aef3d28f27853105fff4f9` |
| 12 | `theorem` | [invariantLaw_unique_under_strict_contraction](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/invariantlaw-unique-under-strict-contraction--cbc4e3a6ff7b33dd056e7f02.md) | 232 | `result-track:cbc4e3a6ff7b33dd056e7f0271177fa0cb815824f897d1ee61adbcd5a4e6f5db` |
| 13 | `theorem` | [stableInvariantLawPerturbation](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/stableinvariantlawperturbation--bed18a85c19d4b1aee5059e9.md) | 248 | `result-track:bed18a85c19d4b1aee5059e9a221035ef4d2c15b455fbee1ca8e1c42106e34d7` |
| 14 | `def` | [boundaryResidual](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/boundaryresidual--eba715a348ea65e976c849af.md) | 260 | `declaration-track:eba715a348ea65e976c849af7d92615d6bedf7aadf5474f90914ffa664915ea5` |
| 15 | `def` | [implementedTraversalBound](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/implementedtraversalbound--2220f88f3b73ef6c7e166785.md) | 269 | `declaration-track:2220f88f3b73ef6c7e166785a77601039ce89906dc5c9a9cf64cbcccce233522` |
| 16 | `theorem` | [boundaryResidual_zero](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/boundaryresidual-zero--8bee5fed1a09fc233d4eb815.md) | 281 | `result-track:8bee5fed1a09fc233d4eb8159585259fbe31ad4ca6b315653f8ac2e106cfb883` |
| 17 | `theorem` | [boundaryResidual_succ](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/boundaryresidual-succ--ecc983bf88cae2163e006ec3.md) | 287 | `result-track:ecc983bf88cae2163e006ec351a876bf3f8bffdf9741c8a3b69a45ff96c3be12` |
| 18 | `theorem` | [implementedTraversalBound_zero](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/implementedtraversalbound-zero--378d57cdfff44768b5e7e953.md) | 296 | `result-track:378d57cdfff44768b5e7e9535881e9426ce398ebd372ace2752bc9ed2b98f199` |
| 19 | `theorem` | [implementedTraversalBound_succ](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/implementedtraversalbound-succ--c2c7471919d07691f0aafe42.md) | 305 | `result-track:c2c7471919d07691f0aafe42fda82aef98c32bcae245a5c25e62de5224f51a06` |
| 20 | `theorem` | [implementedTraversalBound_decomposes](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/implementedtraversalbound-decomposes--424d77ac5d5fad74432f058d.md) | 318 | `result-track:424d77ac5d5fad74432f058d5b4b5b968da396d5f61ec1c4dca32d92fd727caf` |
| 21 | `theorem` | [iterated_variable_defect_bound](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/iterated-variable-defect-bound--556ac7583ba55e9dd5fe153b.md) | 335 | `result-track:556ac7583ba55e9dd5fe153b6b45d829d288e25b077bb479a10e8f71871ec45b` |
| 22 | `def` | [affineDefectBound](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/affinedefectbound--a1b94356bba7b49e27952aab.md) | 361 | `declaration-track:a1b94356bba7b49e27952aabfe030d7aba5a01ed2fb0731ea34bc971b964b358` |
| 23 | `theorem` | [affineDefectBound_zero](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/affinedefectbound-zero--e003956339d526bf8bd81678.md) | 370 | `result-track:e003956339d526bf8bd8167862a1cce194edff4e75ac377cf1e2315fcea54743` |
| 24 | `theorem` | [affineDefectBound_succ](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/affinedefectbound-succ--f88e07ac0a9b14ddff8b0755.md) | 376 | `result-track:f88e07ac0a9b14ddff8b0755f2ea896421c34f1825ccc2dfc7e2cd51f1716750` |
| 25 | `theorem` | [iterated_affine_law_bound](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/iterated-affine-law-bound--bbd7b6d83402407fb5a8c43e.md) | 385 | `result-track:bbd7b6d83402407fb5a8c43e8333cf6e1229a4e8160cbc96f1a0b7ab80496456` |
| 26 | `structure` | [CrossScheduleConvergenceObligation](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/declarations/crossscheduleconvergenceobligation--7c1421448f5167b947145bd2.md) | 409 | `declaration-track:7c1421448f5167b947145bd2287b3100253d5d68e567630545e4c0c1a4293763` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
