# Verification target: GRWTSK.Topology.GeneralTopology.CocompactMap.Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bcb40fc7366b095b6ace1fd191b3ff5f9262a47",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bcb40fc7366b095b6ace1fd191b3ff5f9262a47`.

Source path: `GRWTSK/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CocompactMap](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/cocompactmap--2dc604282fca7af018ed3e56.md) | 31 | `declaration-track:2dc604282fca7af018ed3e563f9f63930be65780e8cf04ab73822adece7e5095` |
| 2 | `class` | [CocompactMapClass](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/cocompactmapclass--aacad4df8b32639f1960290a.md) | 42 | `declaration-track:aacad4df8b32639f1960290a9909290157f35dd5e4dc80df3d661b7eb7c1ad72` |
| 3 | `def` | [toCocompactMap](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/tococompactmap--f9fee5f732c4193409eea437.md) | 57 | `declaration-track:f9fee5f732c4193409eea437addf74e0a8fc837a3ac4a78aff1890bc39cfcbba` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/instance--064c4c92686d1f0a7487205b.md) | 61 | `declaration-track:064c4c92686d1f0a7487205b893ce63d8ae1650c7a7aea88ee0fe95238c9aad4` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/instance--5ed8131fe4980209a6a22ca0.md) | 75 | `declaration-track:5ed8131fe4980209a6a22ca0c6c46af6c20ff521572252087da3b09a55b5ff46` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/instance--77fb5dac307ed2381841f555.md) | 82 | `declaration-track:77fb5dac307ed2381841f55583c5a2204914ab0cf07693088d6e200d6cdca8ad` |
| 7 | `theorem` | [coe_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/coe-tocontinuousmap--feb7eeeeb5c2ec0c84d2d3e7.md) | 87 | `result-track:feb7eeeeb5c2ec0c84d2d3e75276991a8d5f1c90bf8bba9ba8de0fa48a8646e4` |
| 8 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/ext--267b0c1e75c9bb1558fcfe13.md) | 91 | `result-track:267b0c1e75c9bb1558fcfe13e951e2867711b9c72b1d0c3a31855ed745fdc1be` |
| 9 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/copy--630d26859fe9600363eabedb.md) | 96 | `declaration-track:630d26859fe9600363eabedb168f389ee43c4ab780e58a79b6008b9829a2ae10` |
| 10 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/coe-copy--f13294d2edb95780499cf5c2.md) | 106 | `result-track:f13294d2edb95780499cf5c24d6dc2749e6d13165f27a3092d758270bdc5e6e9` |
| 11 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/copy-eq--3f7dfb96616f16665f4f24d4.md) | 109 | `result-track:3f7dfb96616f16665f4f24d467d9c961c854c268e320705c0127abab3fddf607` |
| 12 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/coe-mk--282b609c5179c76dfe1abfd4.md) | 113 | `result-track:282b609c5179c76dfe1abfd49ad12f1450714dea21ffd0636ccf9e5e07b7faec` |
| 13 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/id--624cb66272b7c259b03cd27b.md) | 122 | `declaration-track:624cb66272b7c259b03cd27be1b69374d1ba3eba69810e535a52b2bdcc6f3262` |
| 14 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/coe-id--19fc647f7f5371678f04b08d.md) | 126 | `result-track:19fc647f7f5371678f04b08d13271a0c85a6a9bef2b1e941bd4bbf98fc9418be` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/instance--c936e3f4e0b54be71a28d69e.md) | 131 | `declaration-track:c936e3f4e0b54be71a28d69ec42c430c9fbb24c85bcf5b3a042018afb26b03e0` |
| 16 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/comp--0182ba0512ea9e91c20520ef.md) | 135 | `declaration-track:0182ba0512ea9e91c20520ef7cd606b56f91f4f22b488de9a0d1da010a7262df` |
| 17 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/coe-comp--6f41f379f004a72f9e17fb8f.md) | 139 | `result-track:6f41f379f004a72f9e17fb8f9b5f16668bb5946abd3969f222abfd9ae9d2f42e` |
| 18 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/comp-apply--b45ccd03728048db6594851d.md) | 143 | `result-track:b45ccd03728048db6594851d0bdf93249c161c33b0ba7374e427b8da577ea2c9` |
| 19 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/comp-assoc--d00b0eb4ead81f84ae3c6cee.md) | 147 | `result-track:d00b0eb4ead81f84ae3c6cee32c54009b5817e22b6126bc47cae909224018222` |
| 20 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/id-comp--9cd9e5ff55408d77e313b9e2.md) | 152 | `result-track:9cd9e5ff55408d77e313b9e275d1252cd462431ddb1ad46b9bf224176e4f04bb` |
| 21 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/comp-id--c1bd5be73c2ce7a7048904ac.md) | 156 | `result-track:c1bd5be73c2ce7a7048904ac934644a7a78a18a77d081d8cb9d4b53aaafc63d6` |
| 22 | `theorem` | [tendsto_of_forall_preimage](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/tendsto-of-forall-preimage--92de1440eb829dbf75d89047.md) | 159 | `result-track:92de1440eb829dbf75d8904718479428f04af0efca5ed08d614f50a995b7afbe` |
| 23 | `theorem` | [isCompact_preimage_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/iscompact-preimage-of-isclosed--230007e01bdd7e1b425577dd.md) | 166 | `result-track:230007e01bdd7e1b425577dd66dcaa7eba85155f2a4b5f8ccfc6f6450ecffe78` |
| 24 | `theorem` | [isCompact_preimage](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/iscompact-preimage--7d1ebf02cf8a3d7ddd6ec348.md) | 181 | `result-track:7d1ebf02cf8a3d7ddd6ec348d2b92e8e64164895d61f7f3338e62ceab9998d20` |
| 25 | `def` | [Homeomorph.toCocompactMap](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantecee5340200ffcfd479d5e6f6b825bf857af1c7759237bf4f7305fb7bc3db419.lean/declarations/homeomorph-tococompactmap--4fdbcb55f70dc9a274d27dc4.md) | 191 | `declaration-track:4fdbcb55f70dc9a274d27dc4efc56d100d65ac75d39fcf47be65f4f18c3e8aed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
