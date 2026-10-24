# Verification target: GRWTSK.Topology.GeneralTopology.Open.Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df30ea5b0f1fdc690cb60af868f9ddaa7924ec5d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df30ea5b0f1fdc690cb60af868f9ddaa7924ec5d`.

Source path: `GRWTSK/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousFunction.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousOpenMap](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/continuousopenmap--6e0140814ae6d5c24fe5a929.md) | 41 | `declaration-track:6e0140814ae6d5c24fe5a929cb64cc5bbb2f038d8986e1fca0af83b2557c95ef` |
| 2 | `class` | [ContinuousOpenMapClass](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/continuousopenmapclass--e3e36cbc818f65ac54e1e29b.md) | 53 | `declaration-track:e3e36cbc818f65ac54e1e29bba9750a9f540a5a98776d13e5953d57e103ffd59` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/instance--b1cd6e1889654e7677887889.md) | 62 | `declaration-track:b1cd6e1889654e767788788929d4a90d398d5bb76d34833c3b509581f056662b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/instance--e10d47009d81b2b26328d183.md) | 73 | `declaration-track:e10d47009d81b2b26328d183c3ba47d9128df1221d23aadad22769ba8e699b94` |
| 5 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/tofun-eq-coe--2017cb93a86c0fa6e567034f.md) | 82 | `result-track:2017cb93a86c0fa6e567034f250c0740afcdadc0a9f6139d170f1514ef57b95f` |
| 6 | `theorem` | [coe_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/coe-tocontinuousmap--f24b6962b59613d8f2be7a15.md) | 87 | `result-track:f24b6962b59613d8f2be7a15b5e3928d4ace5c461485381b8551de4a51c5d5a2` |
| 7 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/ext--7fc37522a2503648a6fef92d.md) | 90 | `result-track:7fc37522a2503648a6fef92d27c322771b1929c908dfe529c7064cd3b79824ff` |
| 8 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/copy--2f2678a2f1bdd6b01f9bb90a.md) | 96 | `declaration-track:2f2678a2f1bdd6b01f9bb90acef4ced5cfd6de2abe06d58c636fb8ddea8f8ed1` |
| 9 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/coe-copy--ddefc510c4fd832b66916d32.md) | 101 | `result-track:ddefc510c4fd832b66916d32a9a9462f9cc76b99361d01a3afd053be0d1a8087` |
| 10 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/copy-eq--a7a9d612c57f3eb3596c332f.md) | 105 | `result-track:a7a9d612c57f3eb3596c332f99d8dff73cb8ca6f29def80599c25b3c0da3e871` |
| 11 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/id--17439fd0524617956766a33d.md) | 112 | `declaration-track:17439fd0524617956766a33da1aaa79ed3da8a6a8328ee745080bef368c4a3e6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/instance--394ce93869440d4fe6998a62.md) | 116 | `declaration-track:394ce93869440d4fe6998a626be09c4481919da2be2aae196f3d8bf1c1c7a6b8` |
| 13 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/coe-id--323700a9d9590e2fba423dd3.md) | 120 | `result-track:323700a9d9590e2fba423dd3687251e117994710f0b7033412f111366103612a` |
| 14 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/id-apply--0c87618e03e1948552923408.md) | 127 | `result-track:0c87618e03e19485529234082ef7bfee1cf62668c87aeb10dc43108e993e14ef` |
| 15 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/comp--ac1931e073a51e8e638e3623.md) | 132 | `declaration-track:ac1931e073a51e8e638e36232acba76f268e030b011b7be6b60c2245a71d1030` |
| 16 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/coe-comp--ed03ffab9de68eca7c5b0f1f.md) | 137 | `result-track:ed03ffab9de68eca7c5b0f1f5b1a221df0400be8f15f449a3963fbe79a951daf` |
| 17 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/comp-apply--0616683f736c506cc7110276.md) | 142 | `result-track:0616683f736c506cc71102761bdc100b1ff12ef3e2d84742cb8b601778e2dd33` |
| 18 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/comp-assoc--776772d168728023cb3f034d.md) | 147 | `result-track:776772d168728023cb3f034d8e37cfa5b42dc1df553b0ba788caa5a1558c2814` |
| 19 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/comp-id--8c3e57a1bfa29117566b34be.md) | 153 | `result-track:8c3e57a1bfa29117566b34be9bef117146ba994e1adc12f85b8204ba9f3ec15a` |
| 20 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/id-comp--274da9d96a42eb9fb5deb766.md) | 158 | `result-track:274da9d96a42eb9fb5deb7663668d426b315e4136787d7739040d7a8038e1495` |
| 21 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/cancel-right--8baa82b42fd1341d7f7d8fba.md) | 162 | `result-track:8baa82b42fd1341d7f7d8fba5356e23519e7407f47f161612843b20206b21d5b` |
| 22 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Open/Variant3cbdac578e7b9c508d2b83876c64f414b9691376497109c61c8f609bb8dd1385.lean/declarations/cancel-left--0c6e2d628081468efe2b7832.md) | 167 | `result-track:0c6e2d628081468efe2b78328b4308536c1fb89468664b3fc3fbe190a49457df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
