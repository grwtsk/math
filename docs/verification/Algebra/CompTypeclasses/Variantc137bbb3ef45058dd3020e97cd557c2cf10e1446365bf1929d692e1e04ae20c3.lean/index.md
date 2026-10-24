# Verification target: GRWTSK.Algebra.CompTypeclasses.Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ece0942a4e2fdebab7b007cc1de3e7e03c5d93c1",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/index.md) · [Full source](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ece0942a4e2fdebab7b007cc1de3e7e03c5d93c1`.

Source path: `GRWTSK/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Equiv` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RingHomId](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/ringhomid--e926cfd366012ea932b68ca7.md) | 52 | `declaration-track:e926cfd366012ea932b68ca75e9ef096358fd853f2e4d9053354464b8b460da8` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/instance--356d5bf44d17f8b95d227a04.md) | 55 | `declaration-track:356d5bf44d17f8b95d227a0443546f2495a6284a96bcfa2b0dbc6bf7b63674fb` |
| 3 | `class` | [RingHomCompTriple](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/ringhomcomptriple--ab63002e8806eaad8d92fa39.md) | 60 | `declaration-track:ab63002e8806eaad8d92fa39f12025d37731e72107a3916926d8505b4bbd7cfe` |
| 4 | `theorem` | [comp_apply](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/comp-apply--f46b810a54047c4ef1dacf7a.md) | 72 | `result-track:f46b810a54047c4ef1dacf7a63be8e9a5990a675eefddee568479413494e0d24` |
| 5 | `class` | [RingHomInvPair](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/ringhominvpair--5ad83d06ef82c2745d019bb3.md) | 79 | `declaration-track:5ad83d06ef82c2745d019bb3710957646fa2bb1b00ffa3e692c572351ba05701` |
| 6 | `theorem` | [comp_apply_eq](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/comp-apply-eq--94734625a47648fca6d6f7d3.md) | 91 | `result-track:94734625a47648fca6d6f7d389a1420f2942cbf6e9f1b3437d50d47c2cee20e9` |
| 7 | `theorem` | [comp_apply_eq₂](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/comp-apply-eq--be5522104aba048f796c7c32.md) | 95 | `result-track:be5522104aba048f796c7c3211382687f5385305974b85d50434d72e3c56ee1d` |
| 8 | `instance` | [ids](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/ids--8c9c7b9235c4224ddd7ba57a.md) | 99 | `declaration-track:8c9c7b9235c4224ddd7ba57aff2ab0ceba9f43c1767de2996a126e4ce009aa1a` |
| 9 | `instance` | [triples](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/triples--43c8b284a7173e0fe490efb1.md) | 102 | `declaration-track:43c8b284a7173e0fe490efb19dcd4246a6fad4ca067f4c586189c1e4f1ec5bc3` |
| 10 | `instance` | [triples₂](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/triples--5183294f0fac56f5ac3f069e.md) | 106 | `declaration-track:5183294f0fac56f5ac3f069efe3dbcc11ecc89251878a11ab3f73ca456f4dcd0` |
| 11 | `theorem` | [of_ringEquiv](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/of-ringequiv--be76c32fc65cf75e951ba962.md) | 115 | `result-track:be76c32fc65cf75e951ba96236cdb09cf2bcbca292b4a2c5d9c42c89f2cde36f` |
| 12 | `theorem` | [symm](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/symm--59b198e35df428c92ecf6cb2.md) | 123 | `result-track:59b198e35df428c92ecf6cb28d283675652d0088b56d0016d42a984ff905419b` |
| 13 | `instance` | [ids](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/ids--bf6968f43739acf1dbbec1c3.md) | 131 | `declaration-track:bf6968f43739acf1dbbec1c367ad1eca62aeb422d46f8f50d505d26fb9eab1c9` |
| 14 | `instance` | [right_ids](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/right-ids--44e2547ecdb1ada914cce80d.md) | 136 | `declaration-track:44e2547ecdb1ada914cce80db637a9be5b69a1599c6aefcaf5df4d09bb084efe` |
| 15 | `class` | [RingHomSurjective](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/ringhomsurjective--2078b008bdb0537d0a53594c.md) | 145 | `declaration-track:2078b008bdb0537d0a53594c1beacd37b1231830a01c4569647081fb330f5b16` |
| 16 | `theorem` | [RingHom.surjective](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/ringhom-surjective--4700b08b8513c2c2a9495bef.md) | 149 | `result-track:4700b08b8513c2c2a9495bef19da632ba002b95878a3f630041673848e212a94` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/instance--7a4b89b83a2a888cd295924a.md) | 154 | `declaration-track:7a4b89b83a2a888cd295924aa9fda57d8f72be6bfa5bc1f3771ab09d715addef` |
| 18 | `instance` | [ids](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/ids--df9c74bb7ac8054c8a5b0439.md) | 158 | `declaration-track:df9c74bb7ac8054c8a5b0439e6a2a20bc565eeaa1fcdb31c9b59cf5ae52156d6` |
| 19 | `theorem` | [comp](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/comp--bb7562275a042ff70221711a.md) | 162 | `result-track:bb7562275a042ff70221711af83c9d2b6f4084b4ea9103b31d348b6fa823070e` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CompTypeclasses/Variantc137bbb3ef45058dd3020e97cd557c2cf10e1446365bf1929d692e1e04ae20c3.lean/declarations/instance--93a3a4aef411ea3b98032d7a.md) | 168 | `declaration-track:93a3a4aef411ea3b98032d7ae7d1b390b72e8752e46d93ef4b035d106239782c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
