# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Digital.Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f85b5fec091fed5c7a3a0d033060528f59c4091e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f85b5fec091fed5c7a3a0d033060528f59c4091e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Topology.RasterCubicalComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RasterState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/rasterstate--8e0dedfb075453cfdc81733e.md) | 30 | `declaration-track:8e0dedfb075453cfdc81733eaa031599f153a0fa7baea90b180ed40bd37dda61` |
| 2 | `structure` | [CutDatum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/cutdatum--f2e2b9f69d2bfb46ab083d02.md) | 34 | `declaration-track:f2e2b9f69d2bfb46ab083d027bae9a12609622574ab9b03ecd94d5faef01d341` |
| 3 | `def` | [exterior](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/exterior--93a666de56a3f6fdb2bb71e9.md) | 41 | `declaration-track:93a666de56a3f6fdb2bb71e9b0ecfa0611267ee4f20265cdcd1763132a8563c2` |
| 4 | `def` | [exposedInterface](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/exposedinterface--0fcd9f683db5ab3cff30d913.md) | 49 | `declaration-track:0fcd9f683db5ab3cff30d91303c3eecd0c24a5160a8d9d599390ee401446977c` |
| 5 | `theorem` | [exposedInterface_subset_exterior](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/exposedinterface-subset-exterior--585e9eed2c4585d3a070c9f7.md) | 54 | `result-track:585e9eed2c4585d3a070c9f79955f096b4461d9599928ae5a6c330749a856685` |
| 6 | `theorem` | [exterior_disjoint_selected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/exterior-disjoint-selected--c820e5ed586034df5662d5a1.md) | 60 | `result-track:c820e5ed586034df5662d5a13abf2b166400def36a740dd7b69efb4edb2a02d5` |
| 7 | `structure` | [Repair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/repair--affc03677a845a1430edf90c.md) | 70 | `declaration-track:affc03677a845a1430edf90c36f7a4861dce37e69fa4ce7dda592cb7a960ca5b` |
| 8 | `def` | [apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/apply--5e5d3b05bcfd61148c0ac033.md) | 76 | `declaration-track:5e5d3b05bcfd61148c0ac03373006071d7a268967607e7e07f9a65b34c97b510` |
| 9 | `theorem` | [apply_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/apply-inside--51c8350b94dfd997eaa89545.md) | 83 | `result-track:51c8350b94dfd997eaa89545ed33344632b005b6b124e01e3ed8375c539b0bf6` |
| 10 | `theorem` | [apply_outside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/apply-outside--db29630544d282e9ed15d889.md) | 90 | `result-track:db29630544d282e9ed15d88989b0bf8796631f12cb5e4e72c3a4aee145bf3009` |
| 11 | `def` | [changeSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/changesupport--dd7b6524dbc2e573fa28f462.md) | 97 | `declaration-track:dd7b6524dbc2e573fa28f4629b9ed0746cfc170e922d9e9fb666739ee194cb11` |
| 12 | `def` | [addedCells](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/addedcells--4eed9dbd3399a0d8f76551f0.md) | 102 | `declaration-track:4eed9dbd3399a0d8f76551f01280c67a99ee88485e4b78810ec70949817e0547` |
| 13 | `def` | [deletedCells](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/deletedcells--0faaef42bd95ad6faed67c93.md) | 108 | `declaration-track:0faaef42bd95ad6faed67c93211f3207d28f4442f748f06efed26cdd09e91b70` |
| 14 | `theorem` | [changeSupport_subset_selected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/changesupport-subset-selected--f1d2c2f6952401f7e6ede20d.md) | 114 | `result-track:f1d2c2f6952401f7e6ede20defdf859d00519a96d35e35819814c576c6bfb936` |
| 15 | `theorem` | [addedCells_subset_selected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/addedcells-subset-selected--843ca897d43a8bec3a923ef4.md) | 123 | `result-track:843ca897d43a8bec3a923ef47f51eea792a0640a32fec06eba78fe8f7c27073b` |
| 16 | `theorem` | [deletedCells_subset_selected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/deletedcells-subset-selected--c8ba65613e84b48ebb5a37f5.md) | 135 | `result-track:c8ba65613e84b48ebb5a37f54daaa09b0118fbb0debc1e355ffc77c849c8700e` |
| 17 | `def` | [reconstruct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/reconstruct--1b14772742bafb24de5db2fa.md) | 148 | `declaration-track:1b14772742bafb24de5db2fa06ad7142cd0c4a42fb80973fb6b803779d5397e3` |
| 18 | `theorem` | [reconstruct_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/reconstruct-apply--4fc1e8022587f977fedbea67.md) | 152 | `result-track:4fc1e8022587f977fedbea67380b77da06f56eea3db4a710d18d81e11a3822d3` |
| 19 | `theorem` | [overwrite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/overwrite--a96468d6933b0b044b8dd44f.md) | 159 | `result-track:a96468d6933b0b044b8dd44fea1235ef9b3aac72f152dea60094bcafe33f2b3f` |
| 20 | `inductive` | [AdjacencyPolicy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/adjacencypolicy--d6cf3bc94eea534295d2df30.md) | 170 | `declaration-track:d6cf3bc94eea534295d2df30aea92ed025608adbfe9b27f7cc835e0ae025f230` |
| 21 | `def` | [AdjacencyPolicy.Adjacent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/adjacencypolicy-adjacent--035e029a90d356de96b3af7c.md) | 177 | `declaration-track:035e029a90d356de96b3af7ce88777f95b7f0c0f22646a641fab0d73840905f0` |
| 22 | `instance` | [adjacencyPolicyDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/adjacencypolicydecidable--be1d57449cff97148a93100d.md) | 183 | `declaration-track:be1d57449cff97148a93100dccd07fdd5828b277835e559a82ac83c8940644e1` |
| 23 | `theorem` | [AdjacencyPolicy.adjacent_symmetric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/adjacencypolicy-adjacent-symmetric--dbd6c9dc85775ad471ee9f63.md) | 188 | `result-track:dbd6c9dc85775ad471ee9f63b648cfeb68c512697b96d16b9b29fc566d3441e5` |
| 24 | `theorem` | [AdjacencyPolicy.not_adjacent_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/adjacencypolicy-not-adjacent-self--424d093ba966e1553c9f5677.md) | 195 | `result-track:424d093ba966e1553c9f567793bd1b129ea24598e582c686f4ecafa3c5bb5137` |
| 25 | `def` | [adjacencyInterface](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/adjacencyinterface--2e6ed3d3e6463ac0e6df0f18.md) | 205 | `declaration-track:2e6ed3d3e6463ac0e6df0f1859c34b285383227f2889d188fb72a69f18cce589` |
| 26 | `theorem` | [adjacencyInterface_subset_exterior](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/adjacencyinterface-subset-exterior--1ffe0811a821bae60bceaebc.md) | 210 | `result-track:1ffe0811a821bae60bceaebc494e6ee0450aae025f4bd50f44e6548cd66667ff` |
| 27 | `theorem` | [adjacencyInterface_edge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/adjacencyinterface-edge--0b248378377085ad5040091b.md) | 217 | `result-track:0b248378377085ad5040091b25b0cd23a80beeca87f7cb20954dc553c403f4dc` |
| 28 | `structure` | [DigitalTopologySemantics](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/digitaltopologysemantics--db00064a28f4dd53f2a7343d.md) | 234 | `declaration-track:db00064a28f4dd53f2a7343dbb74a385cb05420fc8cb0ba8cfb6ffc90f05ee28` |
| 29 | `structure` | [ControlledDigitalSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/controlleddigitalsurgery--b41556dfdb3e92f0f6b87db4.md) | 261 | `declaration-track:b41556dfdb3e92f0f6b87db4babc62e8534825529cf1b7b78adf837409fcf20d` |
| 30 | `theorem` | [changes_only_selected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/changes-only-selected--3fdb0faae38191e3eae4905b.md) | 287 | `result-track:3fdb0faae38191e3eae4905b4a7abb38e4ef1c54c310e7b727ce03ecc3b20985` |
| 31 | `theorem` | [added_only_selected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/added-only-selected--2239bfb5824e56d12688dc7e.md) | 296 | `result-track:2239bfb5824e56d12688dc7e24e9a5a897ba8ccf610cd3d24dd17cce238b8be5` |
| 32 | `theorem` | [deleted_only_selected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/declarations/deleted-only-selected--10d7dcffd3774c07576a7001.md) | 305 | `result-track:10d7dcffd3774c07576a7001c5e8effd2ef0bd54efff1eba51df0aa4ae314541` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
