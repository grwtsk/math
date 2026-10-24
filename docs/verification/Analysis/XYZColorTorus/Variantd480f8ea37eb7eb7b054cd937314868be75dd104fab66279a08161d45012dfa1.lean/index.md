# Verification target: GRWTSK.Analysis.XYZColorTorus.Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02febb46fbcd7b133ac9f1fd6bbf26d897f398e5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/index.md) · [Full source](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02febb46fbcd7b133ac9f1fd6bbf26d897f398e5`.

Source path: `GRWTSK/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [flatColorTorusMapIdV1](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/flatcolortorusmapidv1--eb0218cce29bb1b2e7ef1cc7.md) | 39 | `declaration-track:eb0218cce29bb1b2e7ef1cc7e787a92d5758bf38313e0ef094168c7baf0a10b1` |
| 2 | `structure` | [FlatColorTorusRadii](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/flatcolortorusradii--226c2303987ac82e28219c89.md) | 47 | `declaration-track:226c2303987ac82e28219c898a4bbd0a44444a21ca306fffb0a47392435d5d5f` |
| 3 | `abbrev` | [FlatColorTorusPosition](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/flatcolortorusposition--5f9005cc9e35919fc9628f8e.md) | 54 | `declaration-track:5f9005cc9e35919fc9628f8ef3ca907fd4141b6a36f58e26b0e063563901b082` |
| 4 | `def` | [flatColorTorusEmbedding](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/flatcolortorusembedding--cd59d47d2c6193f808be9f0e.md) | 62 | `declaration-track:cd59d47d2c6193f808be9f0e94f89c2d54f8df16c6656980032438c6da9f4c7c` |
| 5 | `theorem` | [flatColorTorusEmbedding_continuous](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/flatcolortorusembedding-continuous--d0edd09e93ed879e5eb7b9ad.md) | 70 | `result-track:d0edd09e93ed879e5eb7b9ad2cf44fbf7c180c09eb042975404cad4a974f6e1e` |
| 6 | `theorem` | [flatColorTorusEmbedding_periodic_u](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/flatcolortorusembedding-periodic-u--7dec3ba4363178f1fbcfa45f.md) | 78 | `result-track:7dec3ba4363178f1fbcfa45fa90c3204e75c0a23fe0554d4006fca93bcd0a4ae` |
| 7 | `theorem` | [flatColorTorusEmbedding_periodic_v](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/flatcolortorusembedding-periodic-v--3949f2eafc1318817124fa88.md) | 86 | `result-track:3949f2eafc1318817124fa8890da955052e09832b558b7d0588a16b88f15d9b7` |
| 8 | `structure` | [ColorTorusView](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview--667544895c91fceb48eb669c.md) | 99 | `declaration-track:667544895c91fceb48eb669c7387f05adef821a1d2607c50d82b3b51b25fb04b` |
| 9 | `def` | [colorTorusView](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview--de87a9728560171df1da794a.md) | 105 | `declaration-track:de87a9728560171df1da794a76d5bdf81e8678b2f03f734e7bf474fbf51721fe` |
| 10 | `def` | [ColorTorusView.normalizedPoint](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-normalizedpoint--e7965027f85eeff974fe9270.md) | 112 | `declaration-track:e7965027f85eeff974fe9270eb18c324b6e3d8572aa4cfd6c880458bdbcdce3a` |
| 11 | `def` | [ColorTorusView.flatCoordinates](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-flatcoordinates--0d61d8037859d56b5ddf387a.md) | 119 | `declaration-track:0d61d8037859d56b5ddf387a75a91c9ae4698c90ee1d38933db68f4b960ed80c` |
| 12 | `def` | [ColorTorusView.u](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-u--01ee44ed483aedf2c306c582.md) | 125 | `declaration-track:01ee44ed483aedf2c306c5822450aa5963627a67b6b8046b99fc9d7a0f49d0e0` |
| 13 | `def` | [ColorTorusView.v](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-v--2caac97108721e018909a70f.md) | 130 | `declaration-track:2caac97108721e018909a70f2ad6e2ec97842c490deb47ab0f9f1fc6dd23924c` |
| 14 | `def` | [ColorTorusView.mapId](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-mapid--c4401032e28a6de0b9ffa26b.md) | 134 | `declaration-track:c4401032e28a6de0b9ffa26b8569e13afa3629619e68037ea8bda6b148b085db` |
| 15 | `def` | [ColorTorusView.authority](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-authority--cd5ee2c9429610970c5e8cc2.md) | 138 | `declaration-track:cd5ee2c9429610970c5e8cc25b7cb6da4448041dd12319385c851c447341fe79` |
| 16 | `theorem` | [colorTorusView_preserves_xyz_revision](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-preserves-xyz-revision--46793558d305edb89bbb7faa.md) | 142 | `result-track:46793558d305edb89bbb7faa46243e93e3faa4eaccea01dacb4e9ae115f2b858` |
| 17 | `theorem` | [colorTorusView_preserves_xyz_payload](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-preserves-xyz-payload--c0e2aed5f2fd60d72389755e.md) | 149 | `result-track:c0e2aed5f2fd60d72389755ee071384146f1df33c987d4704e949a19dc27e1bf` |
| 18 | `theorem` | [colorTorusView_uses_xyzToFlatColorTorus](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-uses-xyztoflatcolortorus--353d06925495d32b6d83fc39.md) | 156 | `result-track:353d06925495d32b6d83fc39fb2bf05b53b289b7f2d33b33957371993fca8031` |
| 19 | `theorem` | [colorTorusView_angles](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-angles--a61f1fe2f0410dcf8e0ccc91.md) | 164 | `result-track:a61f1fe2f0410dcf8e0ccc9163e706513ef64996a3e548ac0c761f3b8486d63a` |
| 20 | `structure` | [ColorTorusRenderFrame](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusrenderframe--649a316687042810fb5d796e.md) | 176 | `declaration-track:649a316687042810fb5d796eca28d303d3723412e9a15ef54160f40cfeeff0e5` |
| 21 | `def` | [colorTorusRenderFrame](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusrenderframe--41cd225d46ca4b94c3c889b9.md) | 184 | `declaration-track:41cd225d46ca4b94c3c889b91dac8bd56aaa13e0f61174fe3e64bc0f3b3be56e` |
| 22 | `def` | [ColorTorusRenderFrame.authority](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusrenderframe-authority--1d6c837ac66486609ade42a9.md) | 194 | `declaration-track:1d6c837ac66486609ade42a9a822f0a8aafe9009e02cd734ea2558b691e2bd1a` |
| 23 | `theorem` | [colorTorusRenderFrame_preserves_xyz_revision](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusrenderframe-preserves-xyz-revision--1387f16ef43aaf93452fc6a6.md) | 199 | `result-track:1387f16ef43aaf93452fc6a60a0e9504db8235371d0f9cfc2c8a09c302b08406` |
| 24 | `theorem` | [colorTorusRenderFrame_preserves_xyz_payload](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusrenderframe-preserves-xyz-payload--e14f6125083f31a6ca478451.md) | 206 | `result-track:e14f6125083f31a6ca478451da00cd26d211902ba1561ae0d1a0b1e68a0be07c` |
| 25 | `theorem` | [colorTorusRenderFrame_is_presentation_only](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusrenderframe-is-presentation-only--d920cc008a02749305c03a34.md) | 212 | `result-track:d920cc008a02749305c03a34bbea39e097498398b931c4d8213e379b6237837b` |
| 26 | `theorem` | [colorTorusRejectedProposal_preserves_admitted_view](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusrejectedproposal-preserves-admitted-view--10994a2cb3c3f4118ce6f523.md) | 222 | `result-track:10994a2cb3c3f4118ce6f523238af15f7d0b1eeca1018b91ae77ebb37d92650d` |
| 27 | `theorem` | [colorTorusView_has_no_torsion_authority](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-has-no-torsion-authority--c4a9bafb49be29dc7419eba2.md) | 233 | `result-track:c4a9bafb49be29dc7419eba2b090a8435fc3fcf4ef374f9cb101f72268e61ed8` |
| 28 | `theorem` | [colorTorusView_has_no_classical_hecke_authority](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-has-no-classical-hecke-authority--e3cb829f6d03885e4fbfe98c.md) | 240 | `result-track:e3cb829f6d03885e4fbfe98ccb14d7cafaf302654902e9555babe9fba06fff4d` |
| 29 | `theorem` | [colorTorusView_has_no_grh_authority](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortorusview-has-no-grh-authority--9f56b0cae580f6bdaaba2f11.md) | 246 | `result-track:9f56b0cae580f6bdaaba2f113f1a0433949afedb966c335217bf4c550cd1ddd8` |
| 30 | `theorem` | [colorTorusPresentation_has_no_analytic_authority](../../../../mathematics/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/declarations/colortoruspresentation-has-no-analytic-authority--f4fbcb35ff8112533ff2800c.md) | 252 | `result-track:f4fbcb35ff8112533ff2800ce8a771796169ba1bb9988ade72002c18621b4349` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
