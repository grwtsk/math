# Verification target: GRWTSK.Topology.GeneralTopology.Monotone.Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23d35d5c3ca30d052656db7925a4ecb329cc4c11",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23d35d5c3ca30d052656db7925a4ecb329cc4c11`.

Source path: `GRWTSK/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.IsLUB` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonotoneOn.map_csSup_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotoneon-map-cssup-of-continuouswithinat--d8bad1466aea8c38463c1ea2.md) | 38 | `result-track:d8bad1466aea8c38463c1ea29e46ff5fd4e892b6ef65de9a9f6e9a3583e394e1` |
| 2 | `theorem` | [Monotone.map_csSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotone-map-cssup-of-continuousat--b05f7eedd50d42e0890fd033.md) | 48 | `result-track:b05f7eedd50d42e0890fd03390a83c3c0d2393f24e94a585bcc8854b18145ada` |
| 3 | `theorem` | [Monotone.map_ciSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotone-map-cisup-of-continuousat--72e2bc9ab376e4dfeb27ace4.md) | 56 | `result-track:72e2bc9ab376e4dfeb27ace409f1b54972e61c9df5223875dd9f64b468171aa8` |
| 4 | `theorem` | [MonotoneOn.map_csInf_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotoneon-map-csinf-of-continuouswithinat--d1cb4aaf80c0ca091ba796c8.md) | 64 | `result-track:d1cb4aaf80c0ca091ba796c81ccdd46d0189dc3cfca9ee80f60f2bfc0e200566` |
| 5 | `theorem` | [Monotone.map_csInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotone-map-csinf-of-continuousat--afa804b2d62d9c76c88bbda4.md) | 72 | `result-track:afa804b2d62d9c76c88bbda49a67a683b61b081615c59d049138b2c0863b2fc5` |
| 6 | `theorem` | [Monotone.map_ciInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotone-map-ciinf-of-continuousat--93e9002d64683352cd76b214.md) | 79 | `result-track:93e9002d64683352cd76b214a7f97e483b2e88cffad2e0810de5af2026ac81a9` |
| 7 | `theorem` | [AntitoneOn.map_csInf_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitoneon-map-csinf-of-continuouswithinat--8669103b3ed7f5bb479322c0.md) | 87 | `result-track:8669103b3ed7f5bb479322c0add4f3df121281c6e8eed0dcb4e8e44fb248bf93` |
| 8 | `theorem` | [Antitone.map_csInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitone-map-csinf-of-continuousat--91a562e66421fd96c1914627.md) | 95 | `result-track:91a562e66421fd96c1914627f5b27b1467705019fad40bc4d9220de0487eb721` |
| 9 | `theorem` | [Antitone.map_ciInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitone-map-ciinf-of-continuousat--4398d739afdf35497a75d789.md) | 102 | `result-track:4398d739afdf35497a75d7893bb3ac4a8d0749d5dfce2dc0154ec0b2d5fa0a88` |
| 10 | `theorem` | [AntitoneOn.map_csSup_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitoneon-map-cssup-of-continuouswithinat--c69fa4500e6410414c6a5722.md) | 110 | `result-track:c69fa4500e6410414c6a572207e7efbb13c787fdde87ca41c074f727e285343f` |
| 11 | `theorem` | [Antitone.map_csSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitone-map-cssup-of-continuousat--5c237f780183de0597732942.md) | 118 | `result-track:5c237f780183de05977329424f248a088a3bc1934496f040c0c7abcadc605fdc` |
| 12 | `theorem` | [Antitone.map_ciSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitone-map-cisup-of-continuousat--2ffaf5f75040217094d8aefc.md) | 125 | `result-track:2ffaf5f75040217094d8aefc100d8aee022c08e2f066e069fd39cbb24deab608` |
| 13 | `theorem` | [sSup_mem_closure](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/ssup-mem-closure--735b03fbef6e562a1cc9bd6f.md) | 138 | `result-track:735b03fbef6e562a1cc9bd6fb71e00f913d4b3ee41728f720884564279f3eaf8` |
| 14 | `theorem` | [sInf_mem_closure](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/sinf-mem-closure--3449f641875f49db202e5508.md) | 141 | `result-track:3449f641875f49db202e5508a15bacde278d9fbc0ba18285ffdf77626980f17a` |
| 15 | `theorem` | [IsClosed.sSup_mem](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/isclosed-ssup-mem--3d7385f057e05aca528ae745.md) | 144 | `result-track:3d7385f057e05aca528ae745c5a496d7953e8ec62aa6de08a44bc970389a76b7` |
| 16 | `theorem` | [IsClosed.sInf_mem](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/isclosed-sinf-mem--3dc7338cdbc14cd4369f550e.md) | 147 | `result-track:3dc7338cdbc14cd4369f550e983c4632673174633aab18eca792fe447b4c9829` |
| 17 | `theorem` | [MonotoneOn.map_sSup_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotoneon-map-ssup-of-continuouswithinat--097265ef05a25b3480caa356.md) | 152 | `result-track:097265ef05a25b3480caa35641144171ef8f9db79280740814d510378b9760a9` |
| 18 | `theorem` | [Monotone.map_sSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotone-map-ssup-of-continuousat--b0545339cfbaa3906f83f95b.md) | 161 | `result-track:b0545339cfbaa3906f83f95b725023d0507629de266e579383429333b34375b5` |
| 19 | `theorem` | [Monotone.map_iSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotone-map-isup-of-continuousat--d58e3a18483afaeb4c90ac42.md) | 167 | `result-track:d58e3a18483afaeb4c90ac420fad8da88238865888472f85f63ea50f851f1daf` |
| 20 | `theorem` | [MonotoneOn.map_sInf_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotoneon-map-sinf-of-continuouswithinat--9acda1034c5e78a9ad0d14c4.md) | 174 | `result-track:9acda1034c5e78a9ad0d14c47f244a1f2c3994ce3e0248010d28397efb2acd88` |
| 21 | `theorem` | [Monotone.map_sInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotone-map-sinf-of-continuousat--c0035cc3c62c2328b98dc249.md) | 181 | `result-track:c0035cc3c62c2328b98dc2495dfd8e911a2b226a1f1f8fd6fb7ec280a9127b76` |
| 22 | `theorem` | [Monotone.map_iInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotone-map-iinf-of-continuousat--2fd511b85437e1bca5de30d3.md) | 187 | `result-track:2fd511b85437e1bca5de30d38280875ac6a81aa55b492de9885bd1d77e436a5a` |
| 23 | `theorem` | [AntitoneOn.map_sSup_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitoneon-map-ssup-of-continuouswithinat--ed061b13af9bfb8531191be6.md) | 193 | `result-track:ed061b13af9bfb8531191be6b0e8c5ee326e90397872022305463b23629bdce9` |
| 24 | `theorem` | [Antitone.map_sSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitone-map-ssup-of-continuousat--32e222896e1365d802afe6d6.md) | 201 | `result-track:32e222896e1365d802afe6d6d0d44381ebb5e927930ef314065d111efee14d90` |
| 25 | `theorem` | [Antitone.map_iSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitone-map-isup-of-continuousat--3213af17583c58fabd0b8105.md) | 208 | `result-track:3213af17583c58fabd0b81058231c2c2c3dc535e5849ee781b0dea74e7663849` |
| 26 | `theorem` | [AntitoneOn.map_sInf_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitoneon-map-sinf-of-continuouswithinat--dc5cc1be2300a4ff18064a28.md) | 216 | `result-track:dc5cc1be2300a4ff18064a28459c977f58a09ec128a07bc3a80cd4b93f302f60` |
| 27 | `theorem` | [Antitone.map_sInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitone-map-sinf-of-continuousat--b084a1f63d93d3dda320b053.md) | 224 | `result-track:b084a1f63d93d3dda320b053654345dbe85f7a4177f8dc4eaa67c4f4b5779e31` |
| 28 | `theorem` | [Antitone.map_iInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitone-map-iinf-of-continuousat--501da04bf67e77bdf76292d0.md) | 231 | `result-track:501da04bf67e77bdf76292d0b2fabf4a3dd10e8e81f2383e5804ce010e135dd9` |
| 29 | `theorem` | [csSup_mem_closure](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/cssup-mem-closure--338d7762a053ba74397ba9f7.md) | 242 | `result-track:338d7762a053ba74397ba9f7b52161f6a9343de2b2ae773e4e755493dc221daa` |
| 30 | `theorem` | [csInf_mem_closure](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/csinf-mem-closure--eb633052c32a2388deb469a1.md) | 245 | `result-track:eb633052c32a2388deb469a132dfc5a71531e761ef8a90ab45491093e5fc6cdb` |
| 31 | `theorem` | [IsClosed.csSup_mem](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/isclosed-cssup-mem--3f9d367180186536cbaf7bf0.md) | 248 | `result-track:3f9d367180186536cbaf7bf0e23bf51165388ab7631d9f0434d80b6af26c6de6` |
| 32 | `theorem` | [IsClosed.csInf_mem](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/isclosed-csinf-mem--f427d81668479040e4894b27.md) | 252 | `result-track:f427d81668479040e4894b2720338eca38db845560baf9738fe72403abd9d977` |
| 33 | `theorem` | [IsClosed.isLeast_csInf](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/isclosed-isleast-csinf--aa33763c10a230d2de4f3ece.md) | 256 | `result-track:aa33763c10a230d2de4f3ece7c4816f511d54d326b7d43bc7cabac710427dde7` |
| 34 | `theorem` | [IsClosed.isGreatest_csSup](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/isclosed-isgreatest-cssup--4fbd1d1410d3049a138970fd.md) | 260 | `result-track:4fbd1d1410d3049a138970fd0563162d00ab80862425140c6d7f83fd81a7133a` |
| 35 | `lemma` | [MonotoneOn.tendsto_nhdsWithin_Ioo_left](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotoneon-tendsto-nhdswithin-ioo-left--141851554669f12bf590aa3e.md) | 264 | `result-track:141851554669f12bf590aa3e8ca9f49cd2981e3d386cb72a513315df8bdd7f92` |
| 36 | `lemma` | [MonotoneOn.tendsto_nhdsWithin_Ioo_right](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotoneon-tendsto-nhdswithin-ioo-right--877179c1cbb036f893d069ec.md) | 279 | `result-track:877179c1cbb036f893d069ec4984f062331ba3b2ec5f20095d5972a5c9e1e452` |
| 37 | `lemma` | [MonotoneOn.tendsto_nhdsLT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotoneon-tendsto-nhdslt--b47a4a830cb05124528b60fb.md) | 294 | `result-track:b47a4a830cb05124528b60fb5215e81b4a284f8c23513a754bab62b646db3462` |
| 38 | `lemma` | [MonotoneOn.tendsto_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotoneon-tendsto-nhdsgt--c8054f8c7b3046f4ac1c3bc7.md) | 310 | `result-track:c8054f8c7b3046f4ac1c3bc739448d53d50a23aad675e6be93fd89cd94bd1ff9` |
| 39 | `theorem` | [Monotone.tendsto_nhdsLT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotone-tendsto-nhdslt--c7bf6e12b6562702c666e529.md) | 320 | `result-track:c7bf6e12b6562702c666e529ee1da06572b568b9d6e5c6ca130ee925b2f1daf0` |
| 40 | `theorem` | [Monotone.tendsto_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/monotone-tendsto-nhdsgt--c2058253d94473387ff853ce.md) | 329 | `result-track:c2058253d94473387ff853cefe5abb0417de22bc7b2328f2c0ba71e6e7909042` |
| 41 | `lemma` | [AntitoneOn.tendsto_nhdsWithin_Ioo_left](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitoneon-tendsto-nhdswithin-ioo-left--254724fe214dd4ac3297b9f6.md) | 337 | `result-track:254724fe214dd4ac3297b9f64706f74b90c7c285c5caf03f755b46f9c534a2d1` |
| 42 | `lemma` | [AntitoneOn.tendsto_nhdsWithin_Ioo_right](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitoneon-tendsto-nhdswithin-ioo-right--e6edd67eb1f3ea4b9a57ef42.md) | 344 | `result-track:e6edd67eb1f3ea4b9a57ef4284560f803a7c795a02ed1212746f229955bb3fc8` |
| 43 | `lemma` | [AntitoneOn.tendsto_nhdsLT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitoneon-tendsto-nhdslt--f8b911c6a9b5fba6b8ad8fd1.md) | 351 | `result-track:f8b911c6a9b5fba6b8ad8fd103cb44456bedfc1b473a44679e302948d234d1ec` |
| 44 | `lemma` | [AntitoneOn.tendsto_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitoneon-tendsto-nhdsgt--d7ee660189e6eff80f5420ff.md) | 360 | `result-track:d7ee660189e6eff80f5420ff082ed56eada5d21cb7099ea76ad742775d25592f` |
| 45 | `theorem` | [Antitone.tendsto_nhdsLT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitone-tendsto-nhdslt--9f2edcade8d23058a42df849.md) | 370 | `result-track:9f2edcade8d23058a42df84939d3bc8f720c11a04ff4dc040eeea60b556994da` |
| 46 | `theorem` | [Antitone.tendsto_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/declarations/antitone-tendsto-nhdsgt--fc89a945cf36c8ca7b69f833.md) | 379 | `result-track:fc89a945cf36c8ca7b69f8339ce230e699efceda8745b876c8e9ad205d6e6e20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
