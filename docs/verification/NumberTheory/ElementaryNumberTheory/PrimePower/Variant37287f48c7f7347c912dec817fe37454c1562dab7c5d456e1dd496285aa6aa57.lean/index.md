# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimePower.Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "979f77448c79539d029e87727e602b4beab3e01a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePower/Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `979f77448c79539d029e87727e602b4beab3e01a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePower/Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimePower/Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.PositiveNat` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimePower](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57.lean/declarations/primepower--9069ce9923993670346640a7.md) | 18 | `declaration-track:9069ce9923993670346640a790200c977168dcd5dd5d5e93f6413eb3e6a18430` |
| 2 | `def` | [value](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57.lean/declarations/value--30ed08ed104d90efe8df0532.md) | 26 | `declaration-track:30ed08ed104d90efe8df0532faf3ed88da916810d56c89f3e69234472643ac76` |
| 3 | `theorem` | [value_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57.lean/declarations/value-pos--75f5ff5ce8bbb421f8bf1121.md) | 29 | `result-track:75f5ff5ce8bbb421f8bf1121b2a941e26ff99f725ad1042c993a9a83e306c7ad` |
| 4 | `theorem` | [value_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57.lean/declarations/value-ne-zero--088fc5fb72455c8e284645bc.md) | 32 | `result-track:088fc5fb72455c8e284645bc5a001894713d60f6175110b018e62ad5bc516e76` |
| 5 | `def` | [asPositiveNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57.lean/declarations/aspositivenat--56550e04d6ef3cc519566aa2.md) | 35 | `declaration-track:56550e04d6ef3cc519566aa23e996d7e92c6051b7d63824521032a03463c52be` |
| 6 | `def` | [PrimeLt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57.lean/declarations/primelt--1a2afc86db638db84435c6a8.md) | 38 | `declaration-track:1a2afc86db638db84435c6a87f111b83d594016e60bc3bd32c300c6512172d4a` |
| 7 | `theorem` | [prime_ne_of_primeLt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57.lean/declarations/prime-ne-of-primelt--a81f19be032bdcc4462ebde5.md) | 41 | `result-track:a81f19be032bdcc4462ebde5873c63fb2071e035b4715bc7488abed4b3663977` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
