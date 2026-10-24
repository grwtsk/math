# Verification target: GRWTSK.Topology.GeneralTopology.Partial.Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b09c3cd41ecad10d051366c9ea1e22d9f3fcdce0",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b09c3cd41ecad10d051366c9ea1e22d9f3fcdce0`.

Source path: `GRWTSK/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Tendsto` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFun` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rmap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rmap--2663c664afcf599cca409711.md) | 56 | `declaration-track:2663c664afcf599cca409711edc2649c0c6dd87c17272ffb521089d8f96951c6` |
| 2 | `theorem` | [rmap_sets](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rmap-sets--ab9a341db971ad3684899810.md) | 65 | `result-track:ab9a341db971ad3684899810087b09af934d22695802762b838c87cdc2d1cab8` |
| 3 | `theorem` | [mem_rmap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/mem-rmap--76171abe59c10b5ae38ff2eb.md) | 69 | `result-track:76171abe59c10b5ae38ff2eb4e2d46f711326b8b872e3f693860d5ff1b2e91bc` |
| 4 | `theorem` | [rmap_rmap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rmap-rmap--20b8dd53d8a03878dd31617d.md) | 73 | `result-track:20b8dd53d8a03878dd31617d45d9b9dc47fdab72e574a58bfa8f82455bc20e14` |
| 5 | `theorem` | [rmap_compose](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rmap-compose--a38c98a9af1b1f5f85a4f314.md) | 78 | `result-track:a38c98a9af1b1f5f85a4f3149796e4dde8609b5ef3145042bd13ab738dd0ca36` |
| 6 | `def` | [RTendsto](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rtendsto--f979e17bf2525327104dd954.md) | 84 | `declaration-track:f979e17bf2525327104dd95424ec0c074036894eb974db08dc308737044f2263` |
| 7 | `theorem` | [rtendsto_def](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rtendsto-def--3af697999d75bc5e9f208796.md) | 87 | `result-track:3af697999d75bc5e9f2087966c4c8d0240832d6647a30772e765d79df134ebac` |
| 8 | `def` | [rcomap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rcomap--19385426b29f6d42661036e0.md) | 93 | `declaration-track:19385426b29f6d42661036e0a1d4d83d31bf63e1c9c80bd6c4442f17f4546f83` |
| 9 | `theorem` | [rcomap_sets](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rcomap-sets--db2c54b6e9d8d84052554066.md) | 100 | `result-track:db2c54b6e9d8d840525540669839a758f2838c49204db21e3899aa215c57f323` |
| 10 | `theorem` | [rcomap_rcomap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rcomap-rcomap--fbe320ef438dead69c0f4749.md) | 104 | `result-track:fbe320ef438dead69c0f4749d61ae895119f4418ffdf69d05ffca51427f8bc99` |
| 11 | `theorem` | [rcomap_compose](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rcomap-compose--deadaaeb0a07bdeb8ac6e487.md) | 115 | `result-track:deadaaeb0a07bdeb8ac6e487f67216b5d04f950e4da7ae721e646b72caf8762f` |
| 12 | `theorem` | [rtendsto_iff_le_rcomap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rtendsto-iff-le-rcomap--1bfd008804622aed7181443c.md) | 118 | `result-track:1bfd008804622aed7181443c729389fe2fda1bea5125373c483f5e079187f6de` |
| 13 | `def` | [rcomap'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rcomap--a48971c4ec123fc9653b0d41.md) | 131 | `declaration-track:a48971c4ec123fc9653b0d41b9c5d133da5fd964d3be91119518d801d7a658e1` |
| 14 | `theorem` | [mem_rcomap'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/mem-rcomap--71b70814e1c3b59d77c4571b.md) | 140 | `result-track:71b70814e1c3b59d77c4571b7e4b6fb3a05063702d2df7317c691deb1a32e8e5` |
| 15 | `theorem` | [rcomap'_sets](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rcomap-sets--614066c5814f5e32b8a8aed2.md) | 144 | `result-track:614066c5814f5e32b8a8aed2ce8f397d6ca5a5be638e23483a250aa91c187584` |
| 16 | `theorem` | [rcomap'_rcomap'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rcomap-rcomap--018ecf8838c5a644ba6fd0dd.md) | 149 | `result-track:018ecf8838c5a644ba6fd0dd6e00a7cd964eadcb974f158e02e67237d712f3bb` |
| 17 | `theorem` | [rcomap'_compose](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rcomap-compose--1abf311914161083e994c046.md) | 160 | `result-track:1abf311914161083e994c046712f0df72a68ee6885841a2144aff6400bc5a6ea` |
| 18 | `def` | [RTendsto'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rtendsto--1d4b4d26274e24bd604213e0.md) | 166 | `declaration-track:1d4b4d26274e24bd604213e0fd4d7b1eeb9faccf74a347261a7e2b3801601d3f` |
| 19 | `theorem` | [rtendsto'_def](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/rtendsto-def--6ed7607710dd4d2e126bdef7.md) | 169 | `result-track:6ed7607710dd4d2e126bdef7f8e79c870fce80760d2001cda5ffd3cf284e5f52` |
| 20 | `theorem` | [tendsto_iff_rtendsto](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/tendsto-iff-rtendsto--221f55caca9cf97847c49ca6.md) | 175 | `result-track:221f55caca9cf97847c49ca67f5ad25983ad64a1ba31ee69c730e964bcd85e01` |
| 21 | `theorem` | [tendsto_iff_rtendsto'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/tendsto-iff-rtendsto--683e0bb2a4257614c2701947.md) | 179 | `result-track:683e0bb2a4257614c2701947c91e79d2f691ba13a13ecb90544aad85f6d76d3c` |
| 22 | `def` | [pmap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/pmap--a6982bd2cd44464aa8d1b9f3.md) | 188 | `declaration-track:a6982bd2cd44464aa8d1b9f313dccc0c8099682f540dd1d22543869c1679b6fc` |
| 23 | `theorem` | [mem_pmap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/mem-pmap--5f614207cc9a1841dea19a4a.md) | 192 | `result-track:5f614207cc9a1841dea19a4abda221b04bf6ca8e2eb9226e7ea94558ab33bf1a` |
| 24 | `def` | [PTendsto](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/ptendsto--eddcadd453e3b5b2e44c1217.md) | 198 | `declaration-track:eddcadd453e3b5b2e44c121751f17f20e5aea1fe8719db66412e820088ab944d` |
| 25 | `theorem` | [ptendsto_def](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/ptendsto-def--407fb91020babf235046bc7d.md) | 201 | `result-track:407fb91020babf235046bc7d51b169a4a006de2aaf80d3b49108bbdee9d12027` |
| 26 | `theorem` | [ptendsto_iff_rtendsto](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/ptendsto-iff-rtendsto--cc5fa743f4534aec8b6e1b21.md) | 205 | `result-track:cc5fa743f4534aec8b6e1b21df7c2df69ee10393f02efb982d90394392a5ed78` |
| 27 | `theorem` | [pmap_res](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/pmap-res--25ef4d5fc00429633b03d499.md) | 209 | `result-track:25ef4d5fc00429633b03d4999b7644f2db68fb1fa99c64b0df7618bb7e6e953a` |
| 28 | `theorem` | [tendsto_iff_ptendsto](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/tendsto-iff-ptendsto--e46d5f84c41a0ce3961f2180.md) | 215 | `result-track:e46d5f84c41a0ce3961f2180b3007bd3517021e1b9e8991592865db3bd00b6c4` |
| 29 | `theorem` | [tendsto_iff_ptendsto_univ](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/tendsto-iff-ptendsto-univ--36b2ebfade170b42a620c4de.md) | 219 | `result-track:36b2ebfade170b42a620c4debf2546583cc39e0783c7b14b124df397f15453ff` |
| 30 | `def` | [pcomap'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/pcomap--c52043df1ed68157d886c82b.md) | 226 | `declaration-track:c52043df1ed68157d886c82b1819bf396f83fdd1f250202d552b4e46f984bdcc` |
| 31 | `def` | [PTendsto'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/ptendsto--9d3a603ba2f970e9bb9801fe.md) | 232 | `declaration-track:9d3a603ba2f970e9bb9801fe12df0248cded753511b011dd38377014b91f7d22` |
| 32 | `theorem` | [ptendsto'_def](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/ptendsto-def--a3a896eb1641b911b3b31320.md) | 235 | `result-track:a3a896eb1641b911b3b31320cf4067992c20dc03aa6dae3baf6c601cf0672efe` |
| 33 | `theorem` | [ptendsto_of_ptendsto'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/ptendsto-of-ptendsto--cd2918644caca4cfe909fb47.md) | 239 | `result-track:cd2918644caca4cfe909fb4745f016e4500b95978de31956705db13e5d900473` |
| 34 | `theorem` | [ptendsto'_of_ptendsto](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/declarations/ptendsto-of-ptendsto--8c6fb52dc989892dd65523c2.md) | 244 | `result-track:8c6fb52dc989892dd65523c226b496b2870870a31fbec26164a94e33087eae0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
