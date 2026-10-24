# Verification target: GRWTSK.Topology.AsLimit.Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af886bac0d4b1ea6ebe18d21c395c0f00c339023",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean/index.md) · [Full source](../../../../mathematics/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af886bac0d4b1ea6ebe18d21c395c0f00c339023`.

Source path: `GRWTSK/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DiscreteQuotient` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fintypeDiagram](../../../../mathematics/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean/declarations/fintypediagram--93e22234e977d0d7d01799b6.md) | 51 | `declaration-track:93e22234e977d0d7d01799b626e4c2e209bdaea3cecdd5c12002be6107443021` |
| 2 | `abbrev` | [diagram](../../../../mathematics/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean/declarations/diagram--3a553d7e32b1aaa5756b9441.md) | 59 | `declaration-track:3a553d7e32b1aaa5756b94412f8b21fc9c2b05fe68e4dce8da456f1271fc312a` |
| 3 | `def` | [asLimitCone](../../../../mathematics/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean/declarations/aslimitcone--1e2d9db89bb4feced0715794.md) | 63 | `declaration-track:1e2d9db89bb4feced0715794c381ec4a8fb894fae1a497dfab4373e92bdfd65b` |
| 4 | `instance` | [isIso_asLimitCone_lift](../../../../mathematics/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean/declarations/isiso-aslimitcone-lift--2d20fa5362777de7896ac773.md) | 68 | `declaration-track:2d20fa5362777de7896ac773a55e056da3a8a28a4d83f649c9522433d2d15004` |
| 5 | `def` | [isoAsLimitConeLift](../../../../mathematics/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean/declarations/isoaslimitconelift--a16ef722979136f2996e55d9.md) | 90 | `declaration-track:a16ef722979136f2996e55d9bb3906fb4283b775a8cb152066ae5dd1c39db91c` |
| 6 | `def` | [asLimitConeIso](../../../../mathematics/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean/declarations/aslimitconeiso--9aff63dbf1d7f011cfc89699.md) | 96 | `declaration-track:9aff63dbf1d7f011cfc89699d31ee6f82f80fc468ffb5d2a2a7f21ed8ec6feaf` |
| 7 | `def` | [asLimit](../../../../mathematics/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean/declarations/aslimit--98e1bf8ccbbdffc15a3d0ae4.md) | 100 | `declaration-track:98e1bf8ccbbdffc15a3d0ae42866e3bd1fc2d3479dff2b6c0c63d0cc75ee71ef` |
| 8 | `def` | [lim](../../../../mathematics/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean/declarations/lim--f0dece437de869ef06311dad.md) | 104 | `declaration-track:f0dece437de869ef06311dad0e55953ffb15331d606ae69a188cdda0f59ce4bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
