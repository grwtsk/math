# Verification target: GRWTSK.Algebra.AbsoluteGaloisGroup.Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16992537a9e46f424d79c6292269d91f8088af62",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AbsoluteGaloisGroup/Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254.lean/index.md) · [Full source](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16992537a9e46f424d79c6292269d91f8088af62`.

Source path: `GRWTSK/Algebra/AbsoluteGaloisGroup/Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AbsoluteGaloisGroup/Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.KrullTopology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.TopologicalAbelianization` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [absoluteGaloisGroup](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254.lean/declarations/absolutegaloisgroup--6ff949f8c2288e5651cbc961.md) | 39 | `declaration-track:6ff949f8c2288e5651cbc9619ee55b1fc38e8919e08473ab82b9c41974fd0e25` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254.lean/declarations/instance--fd18d88bf9bd8660d49271d7.md) | 43 | `declaration-track:fd18d88bf9bd8660d49271d7847b40a499e975a14d8c87d761db8843884488cd` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254.lean/declarations/instance--b062bfe9a639b6cb81d0c4f6.md) | 46 | `declaration-track:b062bfe9a639b6cb81d0c4f6321daffb6adcad3b5aa5857fc92864cfc1c0bbf4` |
| 4 | `instance` | [absoluteGaloisGroup.commutator_closure_isNormal](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254.lean/declarations/absolutegaloisgroup-commutator-closure-isnormal--adaacf98be7afcaa39f2ffae.md) | 50 | `declaration-track:adaacf98be7afcaa39f2ffae9787b37749fd825026c30d57f66abfa9b640cb2c` |
| 5 | `abbrev` | [absoluteGaloisGroupAbelianization](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254.lean/declarations/absolutegaloisgroupabelianization--37b8b5a1b89ed79939b13d52.md) | 56 | `declaration-track:37b8b5a1b89ed79939b13d52c87160a20c922030e3021aed5b663e856601e40a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
