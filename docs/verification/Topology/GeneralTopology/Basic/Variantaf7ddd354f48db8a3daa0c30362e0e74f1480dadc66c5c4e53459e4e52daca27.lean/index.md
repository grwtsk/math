# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c53e0b09c8e819f43565c4203cb1b7aa440aa7c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c53e0b09c8e819f43565c4203cb1b7aa440aa7c`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PseudoMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/pseudometrizablespace--9f6c9b902932d79506d4ce08.md) | 25 | `declaration-track:9f6c9b902932d79506d4ce08781d17e621d045b803af84f9eb23c9495e6aa964` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/instance--385a3cfe9afa0228673a46f8.md) | 28 | `declaration-track:385a3cfe9afa0228673a46f85cc15cc9bfb5eb61cb89774e5ce6551c6ddd11a0` |
| 3 | `def` | [pseudoMetrizableSpacePseudoMetric](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/pseudometrizablespacepseudometric--c013c0f76e5f8dd075448f70.md) | 33 | `declaration-track:c013c0f76e5f8dd075448f70c64eea7796a0c93edf16d5c98d0dc0a695a43da4` |
| 4 | `instance` | [pseudoMetrizableSpace_prod](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/pseudometrizablespace-prod--6fa39650e772ab2ceee467c7.md) | 37 | `declaration-track:6fa39650e772ab2ceee467c70d57e6c48deb74d59e674ea492dd2307bf4966b3` |
| 5 | `theorem` | [_root_.Topology.IsInducing.pseudoMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/root-topology-isinducing-pseudometrizablespace--35d12ffb69d72f013a70b955.md) | 45 | `result-track:35d12ffb69d72f013a70b955d11059a60eb543d4fbbee1e95bcaa032dedb6f6e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/instance--2a79381c878d2b2fee21b1d4.md) | 54 | `declaration-track:2a79381c878d2b2fee21b1d457dee8dea357a78d0bbcd6142c6fd88fdf5cc5c2` |
| 7 | `instance` | [PseudoMetrizableSpace.subtype](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/pseudometrizablespace-subtype--129b7a8fe0481eadabdbc1a4.md) | 61 | `declaration-track:129b7a8fe0481eadabdbc1a4f87d190ef1e72dd0c4b885fbb2ce54b84b093c04` |
| 8 | `instance` | [pseudoMetrizableSpace_pi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/pseudometrizablespace-pi--121170bcd57ddf2b41e5f1f0.md) | 65 | `declaration-track:121170bcd57ddf2b41e5f1f0ebf2d74f5f226972aa518a2ff4b1f5164cda2993` |
| 9 | `class` | [MetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/metrizablespace--dfec3529723949c9c3de658c.md) | 74 | `declaration-track:dfec3529723949c9c3de658cfecbf7943d1a428b517f085ca5074c39721bbae2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/instance--27a52f1d49ffd2ba8f2fcf92.md) | 77 | `declaration-track:27a52f1d49ffd2ba8f2fcf92767ef46d9b01ec276409c6a480161a18b660902f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/instance--84fdafa9fa4f970608087505.md) | 81 | `declaration-track:84fdafa9fa4f9706080875053d692d6a58cf80b2a35a09d2de98486e7d82507f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/instance--7107b3ba7e19679b45bfe9e5.md) | 86 | `declaration-track:7107b3ba7e19679b45bfe9e5a54ef503c583821125055e44e6378e5d05c1c16d` |
| 13 | `def` | [metrizableSpaceMetric](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/metrizablespacemetric--2084cba1ebf1a61f6ea0dec2.md) | 92 | `declaration-track:2084cba1ebf1a61f6ea0dec220a30fb667463866624e657f718ee05e3b56ba56` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/instance--cb01763abf02a8ede78939fb.md) | 96 | `declaration-track:cb01763abf02a8ede78939fbdf0e4dc66afe43ad66976c28efcd89cbe9547a1f` |
| 15 | `instance` | [metrizableSpace_prod](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/metrizablespace-prod--326b081e31c69763fa26372a.md) | 100 | `declaration-track:326b081e31c69763fa26372a655c317dcae2c51f9cb3e55b1b0d1c51cc84cea2` |
| 16 | `theorem` | [_root_.Topology.IsEmbedding.metrizableSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/root-topology-isembedding-metrizablespace--33acfda96b5c29aa7229f7fe.md) | 107 | `result-track:33acfda96b5c29aa7229f7fe60b5a238fe6d8f997e64d312b7822916ef7db5ea` |
| 17 | `instance` | [MetrizableSpace.subtype](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/metrizablespace-subtype--441b9a7e4bce027b317bb260.md) | 115 | `declaration-track:441b9a7e4bce027b317bb26066fb831f4f39cccf6ce573a8d44e6a07cd7d7941` |
| 18 | `instance` | [metrizableSpace_pi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/metrizablespace-pi--fcd8c3fb66575d7ea034d4c7.md) | 118 | `declaration-track:fcd8c3fb66575d7ea034d4c7ec611703462ea7ed1fb84a7980450e3d73bcd7f5` |
| 19 | `theorem` | [IsSeparable.secondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/isseparable-secondcountabletopology--babffc04359d1ce7f564a8bc.md) | 123 | `result-track:babffc04359d1ce7f564a8bc5323f40b2e68e6011aaa8e75e5c087a7423d034d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/declarations/instance--1a0859c536b2c97b074f0ded.md) | 129 | `declaration-track:1a0859c536b2c97b074f0dede2b66cea2ab9a3b8ac069974f91a8a3047537a73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
