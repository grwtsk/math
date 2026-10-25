# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Atlas.Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5a20192601620f9a4f84987f46b7b2d9910db18",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5a20192601620f9a4f84987f46b7b2d9910db18`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Semantics.Atlas.Bridge` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InvertibleEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/invertibleedge--72a927ab0a6c138e01da56a9.md) | 34 | `declaration-track:72a927ab0a6c138e01da56a99b45d5e970d2342d6facee7d4d3784775ebaa710` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/instance--8ce63b2ff4238a9dd718e309.md) | 38 | `declaration-track:8ce63b2ff4238a9dd718e309d24a616d66fdb50808758efc7dfbf78483988e59` |
| 3 | `theorem` | [invertible_edge_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/invertible-edge-equiv--72fd9963c7ba9dde5c9b9a10.md) | 42 | `result-track:72fd9963c7ba9dde5c9b9a1006905d5bd9b7ff8fb0c42da4bd153da0e8525fdc` |
| 4 | `def` | [SameLeaf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/sameleaf--e29d4e6c9944ffa67c417ab0.md) | 51 | `declaration-track:e29d4e6c9944ffa67c417ab06bce7555530c66759a20fa6eec51320c4131a8e7` |
| 5 | `theorem` | [leaf_equivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/leaf-equivalence--1fde0b5c68178e5be4938e0f.md) | 54 | `result-track:1fde0b5c68178e5be4938e0f6ddc518d8245ac81ebbd1734afe6f6806056575b` |
| 6 | `theorem` | [same_leaf_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/same-leaf-equiv--5b3c6871cb7518bfcbc09ab6.md) | 58 | `result-track:5b3c6871cb7518bfcbc09ab690c845851a170ffbcbb25e5dc3c4344c6e8acaef` |
| 7 | `def` | [leafSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/leafsetoid--a9cf3616e684f7e0a3a620de.md) | 72 | `declaration-track:a9cf3616e684f7e0a3a620de857a18ed9097d7483a220e372930b2ff7b63ab21` |
| 8 | `def` | [Leaf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/leaf--f146e0381191893dbd797c92.md) | 79 | `declaration-track:f146e0381191893dbd797c927fcd1e8c6403d1246ae68ac621092ac9dbdaca0f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/instance--efb98faafae622fcf0aa4cdd.md) | 81 | `declaration-track:efb98faafae622fcf0aa4cdd9436596c3b2fa292d80e90ffaa997ec1d1846caf` |
| 10 | `def` | [TargetInvariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/targetinvariant--5cdc09285c053d6cb8aa00f4.md) | 85 | `declaration-track:5cdc09285c053d6cb8aa00f4d933719117354902c133924a23ed94ab573429a1` |
| 11 | `theorem` | [leaf_transport_preserves_targets](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/leaf-transport-preserves-targets--5c30d565c4cead4dbe4d95b5.md) | 89 | `result-track:5c30d565c4cead4dbe4d95b58ba11331568f375fa76118526063d33fe85f2c25` |
| 12 | `def` | [leafTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/leaftarget--616308bb8224fbfc271ff10c.md) | 99 | `declaration-track:616308bb8224fbfc271ff10c096337666005b8748e99b79315649fd767039357` |
| 13 | `theorem` | [same_leaf_iff_eq_of_no_invertible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/same-leaf-iff-eq-of-no-invertible--669cfdc5f7237fa4dfe40af1.md) | 106 | `result-track:669cfdc5f7237fa4dfe40af18f8fd7fecf1f6ff72a87824a64bdbcb1d08d2302` |
| 14 | `theorem` | [invertible_edge_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/invertible-edge-union--175497c5ad40ec96f608343c.md) | 128 | `result-track:175497c5ad40ec96f608343c119ba37d98a8f9fbc0016bb67787d0367b0055fc` |
| 15 | `theorem` | [same_leaf_union_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/same-leaf-union-left--9dc88e9b4ad8961f62f0e3cb.md) | 141 | `result-track:9dc88e9b4ad8961f62f0e3cb49bef820635c12fd21d8657ad527ff3b4bf1fc33` |
| 16 | `theorem` | [union_target_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/declarations/union-target-invariant--dc461a15699c9cdb8a3d895f.md) | 148 | `result-track:dc461a15699c9cdb8a3d895f2c8225c3b6d3adfbdf733d130114afd6c37d97d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
