# Verification target: GRWTSK.Topology.GeneralTopology.OpenMapping.Variant4d8b56fd49007863331a99765f86a5f464544ea40c08889d1f8f3f42bd50cf65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5be1ec5c82d1968b5273afd7e0e6dd0798a44df9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenMapping/Variant4d8b56fd49007863331a99765f86a5f464544ea40c08889d1f8f3f42bd50cf65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OpenMapping/Variant4d8b56fd49007863331a99765f86a5f464544ea40c08889d1f8f3f42bd50cf65.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OpenMapping/Variant4d8b56fd49007863331a99765f86a5f464544ea40c08889d1f8f3f42bd50cf65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5be1ec5c82d1968b5273afd7e0e6dd0798a44df9`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenMapping/Variant4d8b56fd49007863331a99765f86a5f464544ea40c08889d1f8f3f42bd50cf65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenMapping/Variant4d8b56fd49007863331a99765f86a5f464544ea40c08889d1f8f3f42bd50cf65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Baire.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_singleton_mem_nhds_of_sigmaCompact](../../../../../mathematics/Topology/GeneralTopology/OpenMapping/Variant4d8b56fd49007863331a99765f86a5f464544ea40c08889d1f8f3f42bd50cf65.lean/declarations/smul-singleton-mem-nhds-of-sigmacompact--be419aebf82bd23d5c055dd9.md) | 37 | `result-track:be419aebf82bd23d5c055dd918a025d0a2024045f16db9af3b71603e4f735f14` |
| 2 | `theorem` | [isOpenMap_smul_of_sigmaCompact](../../../../../mathematics/Topology/GeneralTopology/OpenMapping/Variant4d8b56fd49007863331a99765f86a5f464544ea40c08889d1f8f3f42bd50cf65.lean/declarations/isopenmap-smul-of-sigmacompact--0adc0bf55973b237ce17e4d0.md) | 94 | `result-track:0adc0bf55973b237ce17e4d083cd4633fa8f8c274f68f25d488c1eb47a236bb9` |
| 3 | `theorem` | [MonoidHom.isOpenMap_of_sigmaCompact](../../../../../mathematics/Topology/GeneralTopology/OpenMapping/Variant4d8b56fd49007863331a99765f86a5f464544ea40c08889d1f8f3f42bd50cf65.lean/declarations/monoidhom-isopenmap-of-sigmacompact--652b9a095617ac18a994b56b.md) | 110 | `result-track:652b9a095617ac18a994b56bcc6c9e53cca66f0eaa85637a4f7c1fbdf3aa1d52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
