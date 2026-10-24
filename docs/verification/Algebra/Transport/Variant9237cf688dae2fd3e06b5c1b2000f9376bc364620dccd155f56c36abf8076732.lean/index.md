# Verification target: GRWTSK.Algebra.Transport.Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74e45cd5e714c148d3dc9864b7affbb39764210f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Transport/Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Transport/Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732.lean/index.md) · [Full source](../../../../mathematics/Algebra/Transport/Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74e45cd5e714c148d3dc9864b7affbb39764210f`.

Source path: `GRWTSK/Algebra/Transport/Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Transport/Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FilesystemHomology.EditComplex` — import line 6; external provider; requires a separately pinned dependency.
- `FilesystemDynamics.FirstReturn` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Homology.HomologicalLift` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toHomologicalLift](../../../../mathematics/Algebra/Transport/Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732.lean/declarations/tohomologicallift--db15fba7bb9fbbcd46d44e09.md) | 56 | `declaration-track:db15fba7bb9fbbcd46d44e09a624f6748c07bb5a7fb28cffef12487c2af36a0c` |
| 2 | `def` | [filesystemFirstReturn_induces_homologyIso](../../../../mathematics/Algebra/Transport/Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732.lean/declarations/filesystemfirstreturn-induces-homologyiso--61aa5bb10dea77030359fe10.md) | 72 | `declaration-track:61aa5bb10dea77030359fe10da134a02991803b8b6b2b17083d6ad99ad0ec15a` |
| 3 | `theorem` | [filesystemFirstReturn_preserves_torsion](../../../../mathematics/Algebra/Transport/Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732.lean/declarations/filesystemfirstreturn-preserves-torsion--cb23a67f601c64ee6b5c828e.md) | 90 | `result-track:cb23a67f601c64ee6b5c828eb238e63e22a65e2be8335898151ef07715fa4f8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
