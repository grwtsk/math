# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UnionLift.Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a6eeebb681464cda0787260862286a56342d787",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a6eeebb681464cda0787260862286a56342d787`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Directed` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iUnionLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/declarations/iunionlift--d1f0a4251c3ad8c06fe8ea73.md) | 59 | `declaration-track:d1f0a4251c3ad8c06fe8ea73754cfd2d5a13d0155f83d70127f1ccec611d1993` |
| 2 | `theorem` | [iUnionLift_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/declarations/iunionlift-mk--7839070f5786e08e366942b1.md) | 70 | `result-track:7839070f5786e08e366942b1bfe2f27895eadadb8dc2ea3b42cfbf6e8c3b4206` |
| 3 | `theorem` | [iUnionLift_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/declarations/iunionlift-inclusion--682c7c9550bbdf209e253664.md) | 73 | `result-track:682c7c9550bbdf209e253664e88af68a257c6231ae74f9157b55646a48ebedec` |
| 4 | `theorem` | [iUnionLift_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/declarations/iunionlift-of-mem--5819fe58472470c1feae290d.md) | 77 | `result-track:5819fe58472470c1feae290d27e9135e082b855a6579ea15c7bedc527acbe66f` |
| 5 | `theorem` | [preimage_iUnionLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/declarations/preimage-iunionlift--e08ab90397e4881ceba97157.md) | 80 | `result-track:e08ab90397e4881ceba971571150219a47400b8bbcaf7e74452cab3332781086` |
| 6 | `theorem` | [iUnionLift_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/declarations/iunionlift-const--e7dd68fd3b6b214fa5c01fba.md) | 97 | `result-track:e7dd68fd3b6b214fa5c01fbaf61bedfeb9cc2109f4d9caa15a0e04ff1afd5550` |
| 7 | `theorem` | [iUnionLift_unary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/declarations/iunionlift-unary--6ea86cd42f1f4fc3101aa442.md) | 107 | `result-track:6ea86cd42f1f4fc3101aa4424a02b2870bdd339ca4a4d9374cc2f12950f68108` |
| 8 | `theorem` | [iUnionLift_binary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/declarations/iunionlift-binary--ac680456cfe2054fcab3c1b8.md) | 126 | `result-track:ac680456cfe2054fcab3c1b83f40ad738aad7bdc4dd23c8cc581f12ed8436f23` |
| 9 | `def` | [liftCover](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/declarations/liftcover--8f326752c9bc846901eb89ab.md) | 158 | `declaration-track:8f326752c9bc846901eb89ab0d37c9a0bf3678787cc057c30711c0c96a5280b4` |
| 10 | `theorem` | [liftCover_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/declarations/liftcover-coe--81e7a0199fcb5e442f1304d9.md) | 164 | `result-track:81e7a0199fcb5e442f1304d9f4a40808667ed0e71996291de7e61d87d1a7852d` |
| 11 | `theorem` | [liftCover_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/declarations/liftcover-of-mem--8eccba25c1bae3354fb3c2bf.md) | 167 | `result-track:8eccba25c1bae3354fb3c2bf9faadf38c30d2570a21e5b421bd5efd32b2d9e67` |
| 12 | `theorem` | [preimage_liftCover](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variant929653c9cce942a204be9b438f2520bdd8e4ffc9c242acafada0bfed2db0382c.lean/declarations/preimage-liftcover--bdac96fc4b3d2f7b15d0b0d4.md) | 171 | `result-track:bdac96fc4b3d2f7b15d0b0d48242616db315427f564f3505a01d260efe0cfc56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
