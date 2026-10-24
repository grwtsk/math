# Verification target: GRWTSK.Topology.GeneralTopology.IsHomeomorphicTrivialBundle.Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7088307b77c892476fde1453f877db348952cb3e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7088307b77c892476fde1453f877db348952cb3e`.

Source path: `GRWTSK/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHomeomorphicTrivialFiberBundle](../../../../../mathematics/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean/declarations/ishomeomorphictrivialfiberbundle--db70d968525492c41af1fd0c.md) | 37 | `declaration-track:db70d968525492c41af1fd0cef8817d0c00ac481430b0608ebabf7662afbd862` |
| 2 | `theorem` | [proj_eq](../../../../../mathematics/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean/declarations/proj-eq--94551285b99c0407990dbdb2.md) | 45 | `result-track:94551285b99c0407990dbdb2aa8ff1171390d251f32db7dcae000206f1c59823` |
| 3 | `theorem` | [surjective_proj](../../../../../mathematics/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean/declarations/surjective-proj--12e1eb065dc9ff1bac94b5ac.md) | 51 | `result-track:12e1eb065dc9ff1bac94b5ac82e635d1ad336852b04dc85a1613be1d0c4442d6` |
| 4 | `theorem` | [continuous_proj](../../../../../mathematics/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean/declarations/continuous-proj--a77fe1cf4e205c72966592f8.md) | 58 | `result-track:a77fe1cf4e205c72966592f8ce7487491aaf08d789fd09f2fa98aab8066ae6ad` |
| 5 | `theorem` | [isOpenMap_proj](../../../../../mathematics/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean/declarations/isopenmap-proj--4505992a5ae5fa8ed118954f.md) | 63 | `result-track:4505992a5ae5fa8ed118954fda7d870c0ab33d8c120584ee822f3ba491f9e9bb` |
| 6 | `theorem` | [quotientMap_proj](../../../../../mathematics/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean/declarations/quotientmap-proj--d0209e06a08b1c6fedbd4ede.md) | 68 | `result-track:d0209e06a08b1c6fedbd4ede2a9e515db243802e353df309351f7dbffd004d8b` |
| 7 | `theorem` | [isHomeomorphicTrivialFiberBundle_fst](../../../../../mathematics/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean/declarations/ishomeomorphictrivialfiberbundle-fst--ea96f9faf3ea99e9280577ec.md) | 76 | `result-track:ea96f9faf3ea99e9280577ec15cb2958015020a0ab9288e280bb3261cc7c5ca9` |
| 8 | `theorem` | [isHomeomorphicTrivialFiberBundle_snd](../../../../../mathematics/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variant7dc316ff905bcb6dfd553d5cfde11d39f88421e03c5c19c34555fe93a530e43b.lean/declarations/ishomeomorphictrivialfiberbundle-snd--8a4444030faf037229d77039.md) | 82 | `result-track:8a4444030faf037229d77039be919479adc26051fc471919b5f40f29f7d7b355` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
