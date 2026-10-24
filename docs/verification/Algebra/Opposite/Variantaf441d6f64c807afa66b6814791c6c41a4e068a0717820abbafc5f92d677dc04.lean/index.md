# Verification target: GRWTSK.Algebra.Opposite.Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b693ec7d6a84e608e2cc5fd10e4dbec008444035",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b693ec7d6a84e608e2cc5fd10e4dbec008444035`.

Source path: `GRWTSK/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAlgebra](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/instalgebra--6e7dea762c849dc88030779a.md) | 40 | `declaration-track:6e7dea762c849dc88030779ac2b28cb9faacadab65a7894ef3f1a8a49cca88c4` |
| 2 | `theorem` | [algebraMap_apply](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/algebramap-apply--720e8543316875f9c53332b3.md) | 49 | `result-track:720e8543316875f9c53332b3adc884ae443d47266b872727f94a8195189d297b` |
| 3 | `def` | [opOp](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/opop--e2f192e4ec724cf45249acaa.md) | 59 | `declaration-track:e2f192e4ec724cf45249acaa73a65fa86fe45c3d3cacdd77083a6cd3299f1561` |
| 4 | `theorem` | [toRingEquiv_opOp](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/toringequiv-opop--10d39093ab17d237eff3fddf.md) | 63 | `result-track:10d39093ab17d237eff3fddf0d3272edbeb3d3b8af0d28759642e93c20ca1e79` |
| 5 | `def` | [fromOpposite](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/fromopposite--77d282daabd3ea83ba639de5.md) | 73 | `declaration-track:77d282daabd3ea83ba639de5afe7a9947c3efd7abb8ddbde737c1469eedd2114` |
| 6 | `theorem` | [toLinearMap_fromOpposite](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/tolinearmap-fromopposite--b03a10aeedbcb85cb0dabea0.md) | 79 | `result-track:b03a10aeedbcb85cb0dabea0bcff49961b0916e526eaf863b9fec57bbfec1c7b` |
| 7 | `theorem` | [toRingHom_fromOpposite](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/toringhom-fromopposite--7f5597fdc54b31ccba374eb4.md) | 84 | `result-track:7f5597fdc54b31ccba374eb4ccb1361a921999232f9c28630ebf4f587f5c619f` |
| 8 | `def` | [toOpposite](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/toopposite--1419f336113da30f30596f2c.md) | 92 | `declaration-track:1419f336113da30f30596f2c459a8fe5ea323cf24f31e645f47d519ac6890ab9` |
| 9 | `theorem` | [toLinearMap_toOpposite](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/tolinearmap-toopposite--649ab3535cfa808e7d1cf80b.md) | 98 | `result-track:649ab3535cfa808e7d1cf80bdd742cc4dd8d6b251316eb28f8d26ebfa73fbd19` |
| 10 | `theorem` | [toRingHom_toOpposite](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/toringhom-toopposite--782e28f14c3714c634f2881a.md) | 103 | `result-track:782e28f14c3714c634f2881a67d1fbfbd9095126300ce019eb1c6ed9bcb613b0` |
| 11 | `def` | [op](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/op--0cfbfd74ff32b8584ce2f92c.md) | 110 | `declaration-track:0cfbfd74ff32b8584ce2f92c6d15f0958eaca644a909459da0bb0050e6abe396` |
| 12 | `theorem` | [toRingHom_op](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/toringhom-op--8ad22dea5e5186c9478c08ca.md) | 116 | `result-track:8ad22dea5e5186c9478c08ca3a7d35b06b5cadb661afc0e9d1e0c5b4e4c916a2` |
| 13 | `abbrev` | [unop](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/unop--613dd9995ba1fe118a5c0b3a.md) | 120 | `declaration-track:613dd9995ba1fe118a5c0b3a59c56f0e9e1e5b4781e63cae966318a091a0ad93` |
| 14 | `theorem` | [toRingHom_unop](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/toringhom-unop--8b7dc315e6f945b56f767012.md) | 122 | `result-track:8b7dc315e6f945b56f767012bbc4e56f675d319443bcccc287c5d04f523f827e` |
| 15 | `def` | [opComm](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/opcomm--91e7a0ff80ec6b7098d2288a.md) | 127 | `declaration-track:91e7a0ff80ec6b7098d2288a674c222d279800a140dbab6923551cf67f886320` |
| 16 | `def` | [op](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/op--542269bdef013e32782df24c.md) | 137 | `declaration-track:542269bdef013e32782df24cd352d6925e2bc0fd5ece180d4b13d4f3cbfa3134` |
| 17 | `theorem` | [toAlgHom_op](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/toalghom-op--94c84812859807d708a2e485.md) | 147 | `result-track:94c84812859807d708a2e4859e6372a5a94183a6f8b61d57f2ca19ed7d14f1fd` |
| 18 | `theorem` | [toRingEquiv_op](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/toringequiv-op--4eecf9a556f2b8a93defee26.md) | 151 | `result-track:4eecf9a556f2b8a93defee26ed7ae38840adf972a752088ea6c33d1a45acf7a1` |
| 19 | `abbrev` | [unop](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/unop--3df7b5c4598ae3cc528e48fe.md) | 156 | `declaration-track:3df7b5c4598ae3cc528e48fe5472abbda9c562caf7a121f289bff7ac99bb54a9` |
| 20 | `theorem` | [toAlgHom_unop](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/toalghom-unop--64d25a3fbb8847d06fa9642a.md) | 158 | `result-track:64d25a3fbb8847d06fa9642ac1bcf176b08576a05892dbb6783a0c3c7590f25f` |
| 21 | `theorem` | [toRingEquiv_unop](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/toringequiv-unop--d2e1e314c89c41310772fb0a.md) | 161 | `result-track:d2e1e314c89c41310772fb0a02e9be89972537769a1620bb460070187f791e71` |
| 22 | `def` | [opComm](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/opcomm--cca85da0a8f13d296aec3e13.md) | 167 | `declaration-track:cca85da0a8f13d296aec3e132a2e9095a6c466775733bfb8c5ac2943fc2ab0e7` |
| 23 | `def` | [moduleEndSelf](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/moduleendself--ecf437bc22b46e03fcb872c4.md) | 174 | `declaration-track:ecf437bc22b46e03fcb872c498827eee975192042deefc0426dcc41c7838d7e3` |
| 24 | `def` | [moduleEndSelfOp](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/moduleendselfop--1772148f1f7f5052a40ee3e0.md) | 180 | `declaration-track:1772148f1f7f5052a40ee3e0fe4b5433429cd1842656ecfa460886bf06b11adc` |
| 25 | `def` | [toOpposite](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/toopposite--1c70cc0ab678b7532f609303.md) | 195 | `declaration-track:1c70cc0ab678b7532f609303bf78f1758aded5e752f63b85f6661ca4e8dffee4` |
| 26 | `lemma` | [toRingEquiv_toOpposite](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/toringequiv-toopposite--80b9c5a08421ecdd657cfca6.md) | 199 | `result-track:80b9c5a08421ecdd657cfca64419520fd3c980d75bf6657c6d8374824bd6e7cc` |
| 27 | `lemma` | [toLinearEquiv_toOpposite](../../../../mathematics/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/declarations/tolinearequiv-toopposite--32498aee095c504a8676b28b.md) | 200 | `result-track:32498aee095c504a8676b28bbd2328518c6bb9eaa3455b7ced56b52299b8c75f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
