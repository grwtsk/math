# Verification target: GRWTSK.Topology.GeneralTopology.5.Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b78586eeae346e6055129544b9018162dba9af7",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b78586eeae346e6055129544b9018162dba9af7`.

Source path: `GRWTSK/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedGap](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/normalizedgap--7f72b25046603158d2f052b4.md) | 59 | `declaration-track:7f72b25046603158d2f052b4e14cd527b1352bc732e413c8a97544473d770df3` |
| 2 | `def` | [limitPointSet](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/limitpointset--f8f08e85394728a7607507f8.md) | 72 | `declaration-track:f8f08e85394728a7607507f8049e4dcb63363179ad6ad251b0726892a02a9c05` |
| 3 | `theorem` | [erdos_5](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5--e4bb44f882c9b63f6eb3eeea.md) | 84 | `result-track:e4bb44f882c9b63f6eb3eeeac10c1c048ed0b5a98648f52544f29f94e9dd12f4` |
| 4 | `theorem` | [erdos_5.variants.limit_point_set](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-limit-point-set--50ede9aaabe7133d12aadeb0.md) | 96 | `result-track:50ede9aaabe7133d12aadeb0279224b36c4dd95faa9f533de446e47547fa264b` |
| 5 | `theorem` | [erdos_5.variants.westzynthius](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-westzynthius--a634ad5363fe8e0df2c4360e.md) | 103 | `result-track:a634ad5363fe8e0df2c4360e7a90a4cde39fe4510cbfc801796dd971e2f56cbb` |
| 6 | `theorem` | [erdos_5.variants.goldston_pintz_yildirim](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-goldston-pintz-yildirim--adb0cfe871971b9bb42dd276.md) | 111 | `result-track:adb0cfe871971b9bb42dd27643dc5fa836812010be063849cbebc62263761324` |
| 7 | `theorem` | [erdos_5.variants.erdos_ricci](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-erdos-ricci--37b4b566f2b9ef2b7def05e0.md) | 118 | `result-track:37b4b566f2b9ef2b7def05e08cae624bc9f8a55578f986005a8ac3473f71848b` |
| 8 | `theorem` | [erdos_5.variants.hildebrand_maier](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-hildebrand-maier--8f6f556a8f710915409e4c1d.md) | 125 | `result-track:8f6f556a8f710915409e4c1dd35f0b8a3001842c3e800e89e32b04267f19cb9a` |
| 9 | `theorem` | [erdos_5.variants.hildebrand_maier_measure](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-hildebrand-maier-measure--d105ecc4dd7732a34b6ced4f.md) | 133 | `result-track:d105ecc4dd7732a34b6ced4f0cdbe2354a3b8af84458ec38ab2d570a5efb2930` |
| 10 | `theorem` | [erdos_5.variants.pintz](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-pintz--d9514746f40bb6e761cabd59.md) | 141 | `result-track:d9514746f40bb6e761cabd5946c4b28b1e4a9463e7ee56cfcac34aadf992333d` |
| 11 | `theorem` | [erdos_5.variants.banks_freiberg_maynard](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-banks-freiberg-maynard--a35b598294546d1f029b509d.md) | 153 | `result-track:a35b598294546d1f029b509d78ed2cad11470ad097311e25fe62e6f75e039897` |
| 12 | `theorem` | [erdos_5.variants.banks_freiberg_maynard_measure](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-banks-freiberg-maynard-measure--766de60302e3ed9629ba5ad0.md) | 165 | `result-track:766de60302e3ed9629ba5ad0e63a095c58b2898fea45463fa3ccc6e63828b681` |
| 13 | `theorem` | [erdos_5.variants.merikoski](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-merikoski--b914248000a009c147fda8ae.md) | 177 | `result-track:b914248000a009c147fda8aee0903be03b7703011990986c02190d29453a91a0` |
| 14 | `theorem` | [erdos_5.variants.merikoski_measure](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-merikoski-measure--a432d4efe2af0cefe6b85c28.md) | 187 | `result-track:a432d4efe2af0cefe6b85c28a42679d80e5daa740b98b0a5820acd71806870d7` |
| 15 | `theorem` | [erdos_5.variants.merikoski_bounded_gaps](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-merikoski-bounded-gaps--5bc8952c8b98c2569b2b3c8e.md) | 198 | `result-track:5bc8952c8b98c2569b2b3c8e8b1a5e52ac1628e3038eb0db86848b350c9211d7` |
| 16 | `theorem` | [erdos_5.variants.dense](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-variants-dense--8e22cd79157de6a3602cd73a.md) | 207 | `result-track:8e22cd79157de6a3602cd73aa8d91b53af79d5faf430c5b410062c83de637b99` |
| 17 | `theorem` | [mem_limitPointSet_iff](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/mem-limitpointset-iff--7e312e0f0d3e9732c29751b6.md) | 215 | `result-track:7e312e0f0d3e9732c29751b60f0815cbf5b0c10e81613839d549556dc36f15bc` |
| 18 | `theorem` | [normalizedGap_nonneg](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/normalizedgap-nonneg--18bbe1fc3952c386b7a85c8d.md) | 221 | `result-track:18bbe1fc3952c386b7a85c8d542fbca84d00228bad4fffad663195747b3f13d9` |
| 19 | `theorem` | [limitPointSet_subset_Ici](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/limitpointset-subset-ici--c271edadaa81869852e3fa8d.md) | 226 | `result-track:c271edadaa81869852e3fa8d8afa9d63dcd967b6029496b8f0bca54291d4c90c` |
| 20 | `theorem` | [erdos_5_iff_limit_point_set](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/erdos-5-iff-limit-point-set--6c6f28199c2e167c190f62f6.md) | 237 | `result-track:6c6f28199c2e167c190f62f6d01f31ef8a60b22329802a400da361dffbe576fe` |
| 21 | `theorem` | [isClosed_limitPointSet](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/isclosed-limitpointset--e3b56d4cf8bd24ec95a3f769.md) | 247 | `result-track:e3b56d4cf8bd24ec95a3f769eea1021626ac5d37b677cd1530ee1dc8f1f6f6df` |
| 22 | `theorem` | [dense_iff_limit_point_set](../../../../../mathematics/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/declarations/dense-iff-limit-point-set--00a291c38bb2fc284cc19ae9.md) | 256 | `result-track:00a291c38bb2fc284cc19ae9dd146ee1dd73806cd91822e9d79026c446a8f33d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
