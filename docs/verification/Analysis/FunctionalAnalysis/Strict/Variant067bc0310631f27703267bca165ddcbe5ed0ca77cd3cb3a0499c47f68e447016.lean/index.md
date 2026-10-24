# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Strict.Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec682618bfa293f81b08dd31e9813916a2e93f5f",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec682618bfa293f81b08dd31e9813916a2e93f5f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StrictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex--fbbceb4e93dbb2836da6d420.md) | 41 | `declaration-track:fbbceb4e93dbb2836da6d42000b529a46f44c8edb5a10f7d2d4b3fc84adaec26` |
| 2 | `theorem` | [strictConvex_iff_openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-iff-opensegment-subset--134a069fb6ef8f3e8cedf009.md) | 58 | `result-track:134a069fb6ef8f3e8cedf00937191c0e842a768e8c10733fcf140765ecd01a5b` |
| 3 | `theorem` | [StrictConvex.openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-opensegment-subset--36ac9c4ca06b478c267093ec.md) | 62 | `result-track:36ac9c4ca06b478c267093ece55e6776c83b22376e2fca5ce6547420605973d2` |
| 4 | `theorem` | [strictConvex_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-empty--d8cdedb8e554a7f9d40ea7f4.md) | 66 | `result-track:d8cdedb8e554a7f9d40ea7f45d01d332091fd9770661717b91fa47be7d24bea0` |
| 5 | `theorem` | [strictConvex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-univ--4d14548548a6558ff06a8456.md) | 69 | `result-track:4d14548548a6558ff06a84563bea1683f5b2d40390aae1679b747fbca8c85561` |
| 6 | `theorem` | [StrictConvex.eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-eq--11ff15b269bdf4d01e8a045d.md) | 74 | `result-track:11ff15b269bdf4d01e8a045d3d6178e69412e132b90a47207f842738623026cc` |
| 7 | `theorem` | [StrictConvex.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-inter--89fe8698af7eaff63d831dd0.md) | 78 | `result-track:89fe8698af7eaff63d831dd0744af3812556a713897f744eaee60b1f655c8587` |
| 8 | `theorem` | [Directed.strictConvex_iUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/directed-strictconvex-iunion--eaa329988d0392829c1ccd76.md) | 84 | `result-track:eaa329988d0392829c1ccd761bfe38fe46a2888affecba5ab8cd131731bae932` |
| 9 | `theorem` | [DirectedOn.strictConvex_sUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/directedon-strictconvex-sunion--43b72eb6182c42426620a2ac.md) | 93 | `result-track:43b72eb6182c42426620a2acdba3f921bb76e7a1e14a271b9ff86bafa39c3227` |
| 10 | `theorem` | [StrictConvex.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-convex--0f456ff452b042a613a09b63.md) | 104 | `result-track:0f456ff452b042a613a09b6317988d1e8296f9a92df199349d5d71d3d428b36c` |
| 11 | `theorem` | [Convex.strictConvex_of_isOpen](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/convex-strictconvex-of-isopen--0e4211403705bbcc1ca3c8ae.md) | 109 | `result-track:0e4211403705bbcc1ca3c8ae4dd1b9634ad017a4678768b2be6b00aa698f3040` |
| 12 | `theorem` | [IsOpen.strictConvex_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/isopen-strictconvex-iff--70637da9beeed2148f931b71.md) | 113 | `result-track:70637da9beeed2148f931b71811b6accf388c84982ca6babbc096d5624b28d57` |
| 13 | `theorem` | [strictConvex_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-singleton--bd21d1bf738f2fa3ee81c664.md) | 116 | `result-track:bd21d1bf738f2fa3ee81c664b0a2a6247a0ebfdb8b25d077f1bf378c0dab963f` |
| 14 | `theorem` | [Set.Subsingleton.strictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/set-subsingleton-strictconvex--1b113e629afe77e7b10ea823.md) | 119 | `result-track:1b113e629afe77e7b10ea823a5f09e0d088e23f4dc797accdfae9a869b0f245d` |
| 15 | `theorem` | [StrictConvex.linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-linear-image--a860ffebb3371a77d1c81bac.md) | 122 | `result-track:a860ffebb3371a77d1c81bac94632945e047d8f4a378ca877f8b301d4adcb429` |
| 16 | `theorem` | [StrictConvex.is_linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-is-linear-image--a51619069016ba5e9da5fe8f.md) | 129 | `result-track:a51619069016ba5e9da5fe8f874e5ed4952331eaaf8f4d9ed75d41c091db795e` |
| 17 | `theorem` | [StrictConvex.linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-linear-preimage--1d6c0a41004f4c1435d61da2.md) | 133 | `result-track:1d6c0a41004f4c1435d61da28f265804f30f7d7ea9f253d4b9acf24302a9894b` |
| 18 | `theorem` | [StrictConvex.is_linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-is-linear-preimage--d18371b422e821b018b314fc.md) | 140 | `result-track:d18371b422e821b018b314fca06fec36269f5238fde0ab6046bba1f7d58c1ce6` |
| 19 | `theorem` | [Set.OrdConnected.strictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/set-ordconnected-strictconvex--c4996614dd2276de75ac1bf5.md) | 150 | `result-track:c4996614dd2276de75ac1bf5d074438bcadc08640d76cac4ee36d72ad7b65a71` |
| 20 | `theorem` | [strictConvex_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-iic--099e7a43850ec8139b1ff8b5.md) | 158 | `result-track:099e7a43850ec8139b1ff8b5c0f56369b42d95e31d3ac2f33c0367d2d41ae575` |
| 21 | `theorem` | [strictConvex_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-ici--821a57fa93687c30ff044f10.md) | 161 | `result-track:821a57fa93687c30ff044f10871dc5763d5f91dd224d3fbf3802a6bd323ed1f4` |
| 22 | `theorem` | [strictConvex_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-iio--bf4050d26350f880c86ae542.md) | 164 | `result-track:bf4050d26350f880c86ae542100daea74a4c4e263ee02e80d678e8144903ddae` |
| 23 | `theorem` | [strictConvex_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-ioi--9c61c24b34fb0acd6a5db9cb.md) | 167 | `result-track:9c61c24b34fb0acd6a5db9cbd64c9230ad45827c84262754af8c778b2becb39b` |
| 24 | `theorem` | [strictConvex_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-icc--6fde2dc7becf1b61a9ed91a2.md) | 170 | `result-track:6fde2dc7becf1b61a9ed91a2b52f695be005a461946ed5a6120a0a0c081c0586` |
| 25 | `theorem` | [strictConvex_Ioo](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-ioo--93fbd51540bf5a40604e1bbd.md) | 173 | `result-track:93fbd51540bf5a40604e1bbd81ddfb9786976cdf5f21e6fb0254b46608689ed3` |
| 26 | `theorem` | [strictConvex_Ico](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-ico--4596e28c0e292a8cf81a70cf.md) | 176 | `result-track:4596e28c0e292a8cf81a70cfd5d29cc2e7d1ed314318803f5ed3dbeb8851b65d` |
| 27 | `theorem` | [strictConvex_Ioc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-ioc--248c4e8cf8a92d070e059be2.md) | 179 | `result-track:248c4e8cf8a92d070e059be200ca9aebefe9e484dc238163e716cae6375509d7` |
| 28 | `theorem` | [strictConvex_uIcc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-uicc--806b7fa369ec8c5eb9ebc2e4.md) | 182 | `result-track:806b7fa369ec8c5eb9ebc2e49ccec800c05b62fc5b0668d6938072ed044284ed` |
| 29 | `theorem` | [strictConvex_uIoc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-uioc--baa5e0f2ad58d516c922b069.md) | 185 | `result-track:baa5e0f2ad58d516c922b06960ccffc93c9d98382fad9a9f24e9020404b8864e` |
| 30 | `theorem` | [StrictConvex.preimage_add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-preimage-add-right--63caf1e4a805c13293b68040.md) | 199 | `result-track:63caf1e4a805c13293b68040418d451fa50952c0935717f10b56b22236c8a547` |
| 31 | `theorem` | [StrictConvex.preimage_add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-preimage-add-left--e603d81f52c5f86e450b855c.md) | 207 | `result-track:e603d81f52c5f86e450b855c16f222387e3671c988513a8b9cbf7a30cf310531` |
| 32 | `theorem` | [StrictConvex.add](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-add--e0b4a4acb4ae1ba8075fa275.md) | 221 | `result-track:e0b4a4acb4ae1ba8075fa275890a4be5be28c9462706b18d24989d1e7d89371b` |
| 33 | `theorem` | [StrictConvex.add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-add-left--5edcaed7360516f32a7d6faf.md) | 235 | `result-track:5edcaed7360516f32a7d6faf2e14e4811996354b535c7b740572bc32a06edfda` |
| 34 | `theorem` | [StrictConvex.add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-add-right--ae3b6049d5ccd84d118572fe.md) | 239 | `result-track:ae3b6049d5ccd84d118572fe280f151b2154c125a79b0d638c8f4b48a0050bae` |
| 35 | `theorem` | [StrictConvex.vadd](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-vadd--766e47f397eda4b9149e0d8d.md) | 243 | `result-track:766e47f397eda4b9149e0d8d5f0b6ffdfff5eda6b83e296ae69ca0ff758f00b9` |
| 36 | `theorem` | [StrictConvex.smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-smul--2125cd61c1d5e80175465bcd.md) | 253 | `result-track:2125cd61c1d5e80175465bcd22aeffedf94bd642d135e8cfbf8997dc3549a2e6` |
| 37 | `theorem` | [StrictConvex.affinity](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-affinity--8ec1a44a73efd4ed42cff4f9.md) | 258 | `result-track:8ec1a44a73efd4ed42cff4f9200ffe748f2af8cb7da942aa4ed6fcb821839faa` |
| 38 | `theorem` | [StrictConvex.preimage_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-preimage-smul--1c8a0279b48586f6d25c931b.md) | 277 | `result-track:1c8a0279b48586f6d25c931b70ef74ecec5149e71dfcb5b3e21f181f43d83be6` |
| 39 | `theorem` | [StrictConvex.eq_of_openSegment_subset_frontier](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-eq-of-opensegment-subset-frontier--cc66a014e72b38658b6af17a.md) | 301 | `result-track:cc66a014e72b38658b6af17a266709cb43357e477df7ed4a6795a89af74a20e9` |
| 40 | `theorem` | [StrictConvex.add_smul_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-add-smul-mem--a989aa2819bd128b7d5f8af3.md) | 312 | `result-track:a989aa2819bd128b7d5f8af3dd7534fc1ae437b1b3153aeeb27df0fbf7a223bb` |
| 41 | `theorem` | [StrictConvex.smul_mem_of_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-smul-mem-of-zero-mem--642227779b37fb0f85a208ce.md) | 320 | `result-track:642227779b37fb0f85a208ce944c9ac2218ddc76a3419c224f5286aba7419cbf` |
| 42 | `theorem` | [StrictConvex.add_smul_sub_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-add-smul-sub-mem--bf566a4d89a9a9cebe3b88a4.md) | 325 | `result-track:bf566a4d89a9a9cebe3b88a48738c21d5225a5b8353c5941c7628d578bb1d81f` |
| 43 | `theorem` | [StrictConvex.affine_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-affine-preimage--10df80a1e8671ae5364c077e.md) | 333 | `result-track:10df80a1e8671ae5364c077e6b617fd465d4c33b2596bb4a84692e598c671654` |
| 44 | `theorem` | [StrictConvex.affine_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-affine-image--7ef57de0221535343ec69dbb.md) | 341 | `result-track:7ef57de0221535343ec69dbb4da4b0115119872878b58ae38382b6671a94a5be` |
| 45 | `theorem` | [StrictConvex.neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-neg--c871590160b976a8e2f238fb.md) | 350 | `result-track:c871590160b976a8e2f238fb9afaef6a50a8219f470e83b09005ea4f1c19d2e9` |
| 46 | `theorem` | [StrictConvex.sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-sub--d67a4eb66c995e86400a83b2.md) | 353 | `result-track:d67a4eb66c995e86400a83b2b7d84c9dcf21a66a5a954717c9d8c181a2a8d565` |
| 47 | `theorem` | [strictConvex_iff_div](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-iff-div--2ee7fb1466de282041432ff4.md) | 369 | `result-track:2ee7fb1466de282041432ff40068d5d872c2f9ccf5a22138bafa3b6432837ac2` |
| 48 | `theorem` | [StrictConvex.mem_smul_of_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-mem-smul-of-zero-mem--bdff848f3595c44c1b0f5db4.md) | 377 | `result-track:bdff848f3595c44c1b0f5db42ed1d2e3135c52c7bad3c7ba85ec158cb1716874` |
| 49 | `theorem` | [strictConvex_iff_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-iff-convex--24364ad3a8f78c8951836518.md) | 400 | `result-track:24364ad3a8f78c8951836518f4c835cc6e4fdf8977a551e29ac71c9ad5f60e3d` |
| 50 | `theorem` | [strictConvex_iff_ordConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/declarations/strictconvex-iff-ordconnected--531f769eabf928c7c2e343c3.md) | 403 | `result-track:531f769eabf928c7c2e343c3ab4c31c6eb97f116b88ef7bf20732607b555b62b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
