# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Scan.Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14ec61624f7a5d99594e039bbd40aec4e86d42ac",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14ec61624f7a5d99594e039bbd40aec4e86d42ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Util.ProofWanted` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_partialSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/length-partialsums--34353051b0c06624ff07d968.md) | 26 | `result-track:34353051b0c06624ff07d968ab264a218dd6f3549adce746f8c2befe075b41a9` |
| 2 | `theorem` | [partialSums_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/partialsums-ne-nil--32f49195f5f968d58dba5112.md) | 31 | `result-track:32f49195f5f968d58dba5112d6b5b7fb4860f54c10130263a81836e87645bbf3` |
| 3 | `theorem` | [partialSums_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/partialsums-nil--72468d83dc8143ba284cc08a.md) | 35 | `result-track:72468d83dc8143ba284cc08ae0d40bdcd87a5707d9b7c8946761578243ff6910` |
| 4 | `theorem` | [partialSums_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/partialsums-cons--bcb30c01c357ad86e077f00e.md) | 38 | `result-track:bcb30c01c357ad86e077f00e84dddcc4caa28949b3a34afa6fa6ee26ea8011eb` |
| 5 | `theorem` | [partialSums_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/partialsums-append--4f1d968de0fcd73e0ce7f81c.md) | 50 | `result-track:4f1d968de0fcd73e0ce7f81ca04bf78387828464f8119229b0101f1369453f87` |
| 6 | `theorem` | [getElem_partialSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/getelem-partialsums--6013f869348df2d67e634580.md) | 61 | `result-track:6013f869348df2d67e63458023560f47baf16028ce44d7a462d5784a30ec15a1` |
| 7 | `theorem` | [getElem?_partialSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/getelem-partialsums--b0855bb4804375a658755746.md) | 67 | `result-track:b0855bb4804375a65875574665d83f885d5dd7dff66942cee523e0092ed548b1` |
| 8 | `theorem` | [take_partialSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/take-partialsums--3968273ba8858fb4832385c3.md) | 73 | `result-track:3968273ba8858fb4832385c3c758e715d15054438033b56d33382d7bd384720a` |
| 9 | `theorem` | [length_partialProds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/length-partialprods--b24f8c07dcebf1adbb04378e.md) | 78 | `result-track:b24f8c07dcebf1adbb04378eb93574661715c78c4db56f53bf240d1cbef0c997` |
| 10 | `theorem` | [partialProds_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/partialprods-nil--48f51f0d90b2dde41d10d03f.md) | 83 | `result-track:48f51f0d90b2dde41d10d03f57681faf1311d4786b7609f0c09c9afe001e415a` |
| 11 | `theorem` | [partialProds_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/partialprods-cons--cb5a2c06320a4c8cfadb0915.md) | 87 | `result-track:cb5a2c06320a4c8cfadb09151f61175a9e13d4491cb37e22a2a5c1a782ac71a6` |
| 12 | `theorem` | [partialProds_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/partialprods-append--f4be09b99fbf46ddd43fe357.md) | 99 | `result-track:f4be09b99fbf46ddd43fe3570cf78cf4226a7f31b4d3cdd4edec02757372d959` |
| 13 | `theorem` | [getElem_partialProds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/getelem-partialprods--9abb84e86a1696122bc0519f.md) | 110 | `result-track:9abb84e86a1696122bc0519f421223606fb896a25261006edde2bf06259378a9` |
| 14 | `theorem` | [getElem?_partialProds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/getelem-partialprods--55c5fde6eeb9ca83ef94b84b.md) | 116 | `result-track:55c5fde6eeb9ca83ef94b84be0d171de0d9bba66d85bdd3d569ddff5ed19b258` |
| 15 | `theorem` | [take_partialProds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/take-partialprods--767080f071a20d335a8d6196.md) | 122 | `result-track:767080f071a20d335a8d61968588d0eaf38352af600b96b752822190551fa09f` |
| 16 | `theorem` | [length_flatten_mem_partialSums_map_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/length-flatten-mem-partialsums-map-length--6f33629bf15b66bf8593f3d3.md) | 128 | `result-track:6f33629bf15b66bf8593f3d370bf9ab169cbf7bb819f4713f37edaad144ce2da` |
| 17 | `theorem` | [getElem_flatten_aux₁](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/getelem-flatten-aux--03cb0034d42fcc84edabcd5a.md) | 137 | `result-track:03cb0034d42fcc84edabcd5a9e320ea00a79286aebeb47b241ef27c871ef3750` |
| 18 | `theorem` | [getElem_flatten_aux₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/getelem-flatten-aux--c82239b21e73e510f63a9930.md) | 150 | `result-track:c82239b21e73e510f63a99308ae2e76073fd84d5b6bcc9fe7a8d37784164ae5b` |
| 19 | `theorem` | [getElem_flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/declarations/getelem-flatten--b65d8b9e9d3a8a8d7ba002d9.md) | 184 | `result-track:b65d8b9e9d3a8a8d7ba002d95e449a642551b9701a4893e266f88053bdcf1e91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
