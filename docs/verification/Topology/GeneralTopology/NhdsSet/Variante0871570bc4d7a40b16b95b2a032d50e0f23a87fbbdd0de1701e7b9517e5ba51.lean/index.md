# Verification target: GRWTSK.Topology.GeneralTopology.NhdsSet.Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfd29e7fee3683ce8dad50c2b294d06ea6d94f06",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfd29e7fee3683ce8dad50c2b294d06ea6d94f06`.

Source path: `GRWTSK/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/nhdsset--4f698d96acc8bffc8095d639.md) | 43 | `declaration-track:4f698d96acc8bffc8095d639502415b1f12a21f25790dcb9b09ee6bbbf1569bf` |
| 2 | `theorem` | [nhdsSet_diagonal](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/nhdsset-diagonal--8ce62d1e441e4a19539c35df.md) | 49 | `result-track:8ce62d1e441e4a19539c35df5ab30eeb44491ed7fe0bf30e5c3419c6722a8343` |
| 3 | `theorem` | [mem_nhdsSet_iff_forall](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/mem-nhdsset-iff-forall--392ce8a2569c5199714d2deb.md) | 55 | `result-track:392ce8a2569c5199714d2debf2c1dafe1b6dfac3295ac903c405dbfe4390b2a3` |
| 4 | `theorem` | [bUnion_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/bunion-mem-nhdsset--5bf6014979faa72d9567e8f2.md) | 59 | `result-track:5bf6014979faa72d9567e8f254cf725c681076e3a7b90444d24d7bb6978b7a47` |
| 5 | `theorem` | [subset_interior_iff_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/subset-interior-iff-mem-nhdsset--625f81c859d5b038659a83e1.md) | 64 | `result-track:625f81c859d5b038659a83e12403f71f4a22bbf461057b9b37bebb30cf926105` |
| 6 | `theorem` | [disjoint_principal_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/disjoint-principal-nhdsset--4189ce6f1905db26d04da365.md) | 68 | `result-track:4189ce6f1905db26d04da36587d67bb242be37435e688cd16b76b29149a84db7` |
| 7 | `theorem` | [disjoint_nhdsSet_principal](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/disjoint-nhdsset-principal--042d40c455a82bed51b5a35f.md) | 72 | `result-track:042d40c455a82bed51b5a35f438dc7f6075a7878ecea5efd2fabb7abdffc66ee` |
| 8 | `theorem` | [mem_nhdsSet_iff_exists](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/mem-nhdsset-iff-exists--7ad9c8c79bdd62666dacfc59.md) | 75 | `result-track:7ad9c8c79bdd62666dacfc5922e383136335e77ece8bfb8ed09d6dc8c39cce45` |
| 9 | `theorem` | [hasBasis_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/hasbasis-nhdsset--043b7ce7df9caa03796bccb4.md) | 79 | `result-track:043b7ce7df9caa03796bccb451a529bcd93b8a32ff7a8a229c189e0fe8dbf1a6` |
| 10 | `theorem` | [IsOpen.mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/isopen-mem-nhdsset--f18d3f1cb7bfffd990ef35fd.md) | 83 | `result-track:f18d3f1cb7bfffd990ef35fd5e97a965c020fa3be8c81a179a4200fc8b1ee1d1` |
| 11 | `theorem` | [principal_le_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/principal-le-nhdsset--fd6d3739b43b53da93c493ce.md) | 87 | `result-track:fd6d3739b43b53da93c493ce7236efac4b4b671b86c647259de1348ffa9cfda4` |
| 12 | `theorem` | [subset_of_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/subset-of-mem-nhdsset--2cea3b874ba2f5e6c1428229.md) | 91 | `result-track:2cea3b874ba2f5e6c14282290ede688ed021db081008a4cd6b6bef82b4627a25` |
| 13 | `theorem` | [Filter.Eventually.self_of_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/filter-eventually-self-of-nhdsset--97e34050a617bd4ddc2c6b47.md) | 93 | `result-track:97e34050a617bd4ddc2c6b474b87b5f4ed2d731d67a46064f496e22e0c68b7f0` |
| 14 | `theorem` | [Filter.EventuallyEq.self_of_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/filter-eventuallyeq-self-of-nhdsset--ddc7ab1ea69f0f976ea3007a.md) | 96 | `result-track:ddc7ab1ea69f0f976ea3007ac89901d9056a838770c42d16b7930faf68e6b175` |
| 15 | `theorem` | [nhdsSet_eq_principal_iff](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/nhdsset-eq-principal-iff--32127873975befbd4abccd18.md) | 100 | `result-track:32127873975befbd4abccd18546cf547f15ab6749439f23f471b40bcfb6a8cad` |
| 16 | `theorem` | [nhdsSet_interior](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/nhdsset-interior--05f9474c407b304e1d63e2a9.md) | 109 | `result-track:05f9474c407b304e1d63e2a95a0039ec4808f7ffe2097baad513cafe7fff6d95` |
| 17 | `theorem` | [nhdsSet_singleton](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/nhdsset-singleton--9adc74f1672d268a1099090e.md) | 114 | `result-track:9adc74f1672d268a1099090e5ef3cfe971f21dae659a594a3cab4013ccfa02be` |
| 18 | `theorem` | [mem_nhdsSet_interior](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/mem-nhdsset-interior--6f8dca8e0388aa78f0013f72.md) | 117 | `result-track:6f8dca8e0388aa78f0013f7287f2f9e007e15020bcd30a17250fbf9341534d36` |
| 19 | `theorem` | [nhdsSet_empty](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/nhdsset-empty--f21b46a6950de96f6360514f.md) | 122 | `result-track:f21b46a6950de96f6360514fea4c82b94795eb1ef316e49852cd5d11c1e8276e` |
| 20 | `theorem` | [mem_nhdsSet_empty](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/mem-nhdsset-empty--230ed5f97b8116b6a45e2df1.md) | 125 | `result-track:230ed5f97b8116b6a45e2df192591248ee7b3f1b7d4ef4189adacd93fcfaf97f` |
| 21 | `theorem` | [nhdsSet_univ](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/nhdsset-univ--6eebdeb000b98749791960c7.md) | 129 | `result-track:6eebdeb000b98749791960c71d778808936aed8bfed7b8beed3128cdbb3200bb` |
| 22 | `theorem` | [nhdsSet_mono](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/nhdsset-mono--13c68bdc202c06f3432ec0fa.md) | 133 | `result-track:13c68bdc202c06f3432ec0fadc732566a3563a26d6ac813a9c98f21d616b22a1` |
| 23 | `theorem` | [monotone_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/monotone-nhdsset--7f3a4d91337af091dbeccc26.md) | 137 | `result-track:7f3a4d91337af091dbeccc26d344de1073f3145c8048d97d359014f68b982fec` |
| 24 | `theorem` | [nhds_le_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/nhds-le-nhdsset--0ede91bd0c294b3a6c980f0d.md) | 140 | `result-track:0ede91bd0c294b3a6c980f0dfe44ed192d038885b03814a41dc7235c44854a7d` |
| 25 | `theorem` | [nhdsSet_union](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/nhdsset-union--9c7893a81ebdc97ca6e4b8e0.md) | 145 | `result-track:9c7893a81ebdc97ca6e4b8e04bdf97296e2f32007d4f9d964b98bbdb5f74b13b` |
| 26 | `theorem` | [union_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/union-mem-nhdsset--4cc95606640ad6757a3bfe1c.md) | 149 | `result-track:4cc95606640ad6757a3bfe1cf21e54806e815fd122f484fcf8769c91d9941c9c` |
| 27 | `theorem` | [nhdsSet_insert](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/nhdsset-insert--3d1a2e9e6d5887839d237317.md) | 155 | `result-track:3d1a2e9e6d5887839d2373174a41c2ea2ed78c697abef8ecaa28b2559bd8f8d8` |
| 28 | `theorem` | [Continuous.tendsto_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/declarations/continuous-tendsto-nhdsset--b4585d30c251117f06caf5a8.md) | 160 | `result-track:b4585d30c251117f06caf5a807b7fc0801e2732b6be63024835ca9023bb8f962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
