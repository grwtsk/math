# Verification target: GRWTSK.Topology.GeneralTopology.Intrinsic.Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0587930538459c721c9b9b6c1412223bffc6029",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0587930538459c721c9b9b6c1412223bffc6029`.

Source path: `GRWTSK/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Affine.AddTorsorBases` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicinterior--966d32d177bf27a6c5f642fc.md) | 57 | `declaration-track:966d32d177bf27a6c5f642fcdf89ccc39894dbffc2694a7bb1a5d772863dc7b0` |
| 2 | `def` | [intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicfrontier--2c6250c819a436850777852a.md) | 61 | `declaration-track:2c6250c819a436850777852a9bccba24273d766a60bec5a27d612bada672c0f0` |
| 3 | `def` | [intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicclosure--4dcb1c64fb95b27fbed6032d.md) | 65 | `declaration-track:4dcb1c64fb95b27fbed6032da2063e2fbb15a57c43f6b11c9cbc1053fc0c6d04` |
| 4 | `theorem` | [mem_intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/mem-intrinsicinterior--52258116c6664d5843f270f8.md) | 71 | `result-track:52258116c6664d5843f270f8dde52162c9df4339cd5eff08be43ef6e3414e3e1` |
| 5 | `theorem` | [mem_intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/mem-intrinsicfrontier--e25c733ef0ad61ad859514cd.md) | 76 | `result-track:e25c733ef0ad61ad859514cd29cbc72402ac20f050eef4e926357924e4be432d` |
| 6 | `theorem` | [mem_intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/mem-intrinsicclosure--f3793d67315c8c2a4234540b.md) | 81 | `result-track:f3793d67315c8c2a4234540b5723907e57ae14735d0035c912cce6b38c36e835` |
| 7 | `theorem` | [intrinsicInterior_subset](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicinterior-subset--e54c9f3240cd4e5145c6c9b2.md) | 85 | `result-track:e54c9f3240cd4e5145c6c9b264833ed7fb393c3f756c3b1ac33b02cc20597933` |
| 8 | `theorem` | [intrinsicFrontier_subset](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicfrontier-subset--fa74a4dc3f91547ed77840b8.md) | 88 | `result-track:fa74a4dc3f91547ed77840b8de182703da4176b10050556860051dfdc7f60da1` |
| 9 | `theorem` | [intrinsicFrontier_subset_intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicfrontier-subset-intrinsicclosure--e72183df0f001cc7ca5e9bca.md) | 91 | `result-track:e72183df0f001cc7ca5e9bcae0706cbb8ad24a718b9b438590b4012d34da19a4` |
| 10 | `theorem` | [subset_intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/subset-intrinsicclosure--18b929184b44de10450fcdb7.md) | 94 | `result-track:18b929184b44de10450fcdb7450f9f8ecd15f90f66e6f6bd23ce4f122d9e2b17` |
| 11 | `theorem` | [intrinsicInterior_empty](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicinterior-empty--f63c437bbd4143006590222c.md) | 98 | `result-track:f63c437bbd4143006590222cf9feeb1b2d033f9f50a6faadc30ca4536e79f99b` |
| 12 | `theorem` | [intrinsicFrontier_empty](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicfrontier-empty--625c98890a6c2cfc809bc99c.md) | 101 | `result-track:625c98890a6c2cfc809bc99caa63570f917938d92ce369471f0d78453ae85363` |
| 13 | `theorem` | [intrinsicClosure_empty](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicclosure-empty--ca7ef97a581976d4e9fedefa.md) | 104 | `result-track:ca7ef97a581976d4e9fedefa20fa3b2320d7cca1cdc5e428542792823a9e5378` |
| 14 | `theorem` | [intrinsicClosure_nonempty](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicclosure-nonempty--ca207dbce0c15b39e105f949.md) | 107 | `result-track:ca207dbce0c15b39e105f9495ab270a762646f6a5eb686617d0415b48aef8e7a` |
| 15 | `theorem` | [intrinsicInterior_singleton](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicinterior-singleton--dd371ba3aa248c358f061a61.md) | 114 | `result-track:dd371ba3aa248c358f061a612971cb7f5ea1067020e3f20a94fe312012b85b59` |
| 16 | `theorem` | [intrinsicFrontier_singleton](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicfrontier-singleton--79c97650509219b39117d0a5.md) | 119 | `result-track:79c97650509219b39117d0a52feeb8d22c591c45ad916614b4a943f6652c1f70` |
| 17 | `theorem` | [intrinsicClosure_singleton](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicclosure-singleton--4e3532bbd23b723cefb20a25.md) | 123 | `result-track:4e3532bbd23b723cefb20a25bd03c163ac7a3785541e7075e4b59e08a494a40a` |
| 18 | `theorem` | [intrinsicClosure_mono](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicclosure-mono--64cc84cfb29a4f4b60306333.md) | 132 | `result-track:64cc84cfb29a4f4b60306333f46725d3db0188e62995e223c2bf7bac741c4072` |
| 19 | `theorem` | [interior_subset_intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/interior-subset-intrinsicinterior--8ebba151b33d6542c21bf96b.md) | 138 | `result-track:8ebba151b33d6542c21bf96b1fa6ba3fddf5fc3c4fde3d41630696e760c26f84` |
| 20 | `theorem` | [intrinsicClosure_subset_closure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicclosure-subset-closure--9810ad9bf3e9472acd618127.md) | 142 | `result-track:9810ad9bf3e9472acd61812728672bc3f4e45b91a0f703fc983ba56aad66ddd7` |
| 21 | `theorem` | [intrinsicFrontier_subset_frontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicfrontier-subset-frontier--c2ad4255126134a86f0758f5.md) | 145 | `result-track:c2ad4255126134a86f0758f552fe6aea1a9380ac4d939aeab74d7ca7dae271d3` |
| 22 | `theorem` | [intrinsicClosure_subset_affineSpan](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicclosure-subset-affinespan--5008ef4b99d7c2b2bcf55c16.md) | 148 | `result-track:5008ef4b99d7c2b2bcf55c162c851f8bdf7cc929d6fc3b544eefc0887dc36514` |
| 23 | `theorem` | [intrinsicClosure_diff_intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicclosure-diff-intrinsicfrontier--ad35cd6fd2bb7c829d7ad2a8.md) | 152 | `result-track:ad35cd6fd2bb7c829d7ad2a8857ead347616fdbf0abfa4509ab1d7bf920fdded` |
| 24 | `theorem` | [intrinsicClosure_diff_intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicclosure-diff-intrinsicinterior--5d6e783305143fa91f306a09.md) | 158 | `result-track:5d6e783305143fa91f306a09817fd4cff31a413da64f12ba281b649420e8a05b` |
| 25 | `theorem` | [intrinsicInterior_union_intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicinterior-union-intrinsicfrontier--7433dc7dc873220001d40f42.md) | 163 | `result-track:7433dc7dc873220001d40f42026b6b2955fbf212c1cbd5dc2a82e2d4e5ca0c6c` |
| 26 | `theorem` | [intrinsicFrontier_union_intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicfrontier-union-intrinsicinterior--7c100eb26ac7e35771f6c539.md) | 169 | `result-track:7c100eb26ac7e35771f6c53901d482909f8b45ff8047e4d25822384908c6e797` |
| 27 | `theorem` | [isClosed_intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/isclosed-intrinsicclosure--4ea5c0ab00e1ecf32fba5619.md) | 173 | `result-track:4ea5c0ab00e1ecf32fba561911d0be6f2726a6f5ce7653d8e7154532c63e334d` |
| 28 | `theorem` | [isClosed_intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/isclosed-intrinsicfrontier--8efd76c89396db9616d7cc4e.md) | 177 | `result-track:8efd76c89396db9616d7cc4e43335bee15ca17f481376d20e5afc56e5abbcd56` |
| 29 | `theorem` | [affineSpan_intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/affinespan-intrinsicclosure--cf35dc99800a948b03fde2fb.md) | 182 | `result-track:cf35dc99800a948b03fde2fbe2fabf91783c122d9f70300d0ce17e1c7d26912a` |
| 30 | `theorem` | [IsClosed.intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/isclosed-intrinsicclosure--639a3a43f5a3a0cd01902d9d.md) | 187 | `result-track:639a3a43f5a3a0cd01902d9d4a6c2ccfe446fc036a23b34fefbb10e019a05e00` |
| 31 | `theorem` | [intrinsicClosure_idem](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicclosure-idem--44b266964da667b3661ebe2b.md) | 193 | `result-track:44b266964da667b3661ebe2b7b8f84fe07e7955be1d2a9e862d213414061c2c6` |
| 32 | `theorem` | [image_intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/image-intrinsicinterior--04dbf535333307d8b2bfc001.md) | 214 | `result-track:04dbf535333307d8b2bfc00190d5d37893ec4e2895b796fbe63495b4869e6133` |
| 33 | `theorem` | [image_intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/image-intrinsicfrontier--293b8199628543664f0e7a90.md) | 227 | `result-track:293b8199628543664f0e7a9068f58fd2382941bf7c786e52c9292a73c1430960` |
| 34 | `theorem` | [image_intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/image-intrinsicclosure--c3d41ec18f816ee6193b3cf1.md) | 240 | `result-track:c3d41ec18f816ee6193b3cf150c51b3942919b29c59b68f5a5e88d5293110add` |
| 35 | `theorem` | [intrinsicClosure_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicclosure-eq-closure--c7e3c9bb32515861d89dbfb6.md) | 260 | `result-track:c7e3c9bb32515861d89dbfb69185768addc65de75654820563470e623237fc31` |
| 36 | `theorem` | [closure_diff_intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/closure-diff-intrinsicinterior--84ae68f79267ab120ad2fb39.md) | 277 | `result-track:84ae68f79267ab120ad2fb39d05cc855ad2f9879706291ddff1f4cb5079f1ea7` |
| 37 | `theorem` | [closure_diff_intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/closure-diff-intrinsicfrontier--903b1974daf59d929ecc80db.md) | 282 | `result-track:903b1974daf59d929ecc80dbcf5c49a024da8cd387728bf9deb3fc6b14428496` |
| 38 | `theorem` | [aux](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/aux--32d529df1327b05d9d5e1a29.md) | 288 | `result-track:32d529df1327b05d9d5e1a29073caccdb59b0fe4ecb11abfb96d9453b33b1ee3` |
| 39 | `theorem` | [Set.Nonempty.intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/set-nonempty-intrinsicinterior--cec92de20277d66eb41627dd.md) | 295 | `result-track:cec92de20277d66eb41627ddc084f2c51774f1dcb7bf2acb4af131d0d50b9540` |
| 40 | `theorem` | [intrinsicInterior_nonempty](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/declarations/intrinsicinterior-nonempty--303ebe58c42667f122bbaf61.md) | 308 | `result-track:303ebe58c42667f122bbaf610f6f7f871310363c2292c8d7df6f65bf67813c34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
