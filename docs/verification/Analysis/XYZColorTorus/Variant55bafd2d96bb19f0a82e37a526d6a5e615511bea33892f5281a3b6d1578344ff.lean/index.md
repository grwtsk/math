# Verification target: GRWTSK.Analysis.XYZColorTorus.Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d10a9b30f8626d9f9b862de11a712763a976892d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/index.md) · [Full source](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d10a9b30f8626d9f9b862de11a712763a976892d`.

Source path: `GRWTSK/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [flatColorTorusMapIdV1](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/flatcolortorusmapidv1--fda7ce713735a1fa4322cbad.md) | 47 | `declaration-track:fda7ce713735a1fa4322cbad4765de87cff7ad730ca19da2db2c4ebe996761f9` |
| 2 | `structure` | [FlatColorTorusRadii](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/flatcolortorusradii--98408ad7fe01962f0dffe8c3.md) | 55 | `declaration-track:98408ad7fe01962f0dffe8c3100eb65edebf304809f8d595d47f18128f96fdd0` |
| 3 | `abbrev` | [FlatColorTorusPosition](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/flatcolortorusposition--2f9ee63e5877b0a25903381a.md) | 62 | `declaration-track:2f9ee63e5877b0a25903381a1d3eae3e5da1fd3b20f0977ca2e34b3873413d45` |
| 4 | `def` | [flatColorTorusEmbedding](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/flatcolortorusembedding--6936d1906119bba1f729041f.md) | 70 | `declaration-track:6936d1906119bba1f729041fad6a9abfc1d742cb4ec8780c3e4f79a6f7cd2135` |
| 5 | `theorem` | [flatColorTorusEmbedding_continuous](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/flatcolortorusembedding-continuous--f4cd8914eb4ebed011ec2659.md) | 78 | `result-track:f4cd8914eb4ebed011ec26594f59c64491abc5e1c1bb40004b63c967aa306089` |
| 6 | `theorem` | [flatColorTorusEmbedding_periodic_u](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/flatcolortorusembedding-periodic-u--e46d5993952da99f17514c85.md) | 86 | `result-track:e46d5993952da99f17514c8518ced731db0abd3846ec160f329c881563d35584` |
| 7 | `theorem` | [flatColorTorusEmbedding_periodic_v](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/flatcolortorusembedding-periodic-v--44623ef92574cfcdc256e1a5.md) | 94 | `result-track:44623ef92574cfcdc256e1a5cce85f8187eddbb62e56e6ab0b89277fe68274d1` |
| 8 | `structure` | [ColorTorusView](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview--f3e38e10018a9cce3e6837ae.md) | 107 | `declaration-track:f3e38e10018a9cce3e6837ae9fce9fa563fa8ad5a8113804a603c569dc9d695e` |
| 9 | `def` | [colorTorusView](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview--5666f6c3938738876d51e429.md) | 113 | `declaration-track:5666f6c3938738876d51e429626736df341ec0cf50b05f6162056d28454451d0` |
| 10 | `def` | [ColorTorusView.normalizedPoint](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-normalizedpoint--aba2ab94077e7721df6ea7f0.md) | 120 | `declaration-track:aba2ab94077e7721df6ea7f085b9e0076e78c1650ef00202d20a583cf461a20f` |
| 11 | `def` | [ColorTorusView.flatCoordinates](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-flatcoordinates--a0e1df1a1c2ec67ed223c40a.md) | 127 | `declaration-track:a0e1df1a1c2ec67ed223c40ad4d3fe8fd9562eb4a4726c399056ff151d97d23c` |
| 12 | `def` | [ColorTorusView.u](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-u--321f562a9bfb894d3bfcf38f.md) | 133 | `declaration-track:321f562a9bfb894d3bfcf38fd2d9294862daf9e937745c7818445b5c9d6b3f06` |
| 13 | `def` | [ColorTorusView.v](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-v--270afcd5e40457f3616288d8.md) | 138 | `declaration-track:270afcd5e40457f3616288d8751f09230ad0b7a23ba13490d633282120dc8e2c` |
| 14 | `def` | [ColorTorusView.mapId](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-mapid--a7cfbd40f9466a022e186bd5.md) | 142 | `declaration-track:a7cfbd40f9466a022e186bd51efde2d2ad02e5e2dc87eb83e78adfd68d3cc2db` |
| 15 | `def` | [ColorTorusView.authority](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-authority--65d37592f31c3043cbe64b6c.md) | 146 | `declaration-track:65d37592f31c3043cbe64b6caecb59d4ac3b7d4ce2419c42d938c9b53ee9e51b` |
| 16 | `theorem` | [colorTorusView_preserves_xyz_revision](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-preserves-xyz-revision--9a1fa232995d0e5874b56d03.md) | 150 | `result-track:9a1fa232995d0e5874b56d03dd92a7792dc94161922d2406a1be05fe57713cdb` |
| 17 | `theorem` | [colorTorusView_preserves_xyz_payload](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-preserves-xyz-payload--0adc0cbe1d9729af951eb46e.md) | 157 | `result-track:0adc0cbe1d9729af951eb46e03489b6eab374e522e1b7e8e66e3fdcb0d660f6c` |
| 18 | `theorem` | [colorTorusView_uses_xyzToFlatColorTorus](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-uses-xyztoflatcolortorus--3d0176f7a758c07fc28da4da.md) | 164 | `result-track:3d0176f7a758c07fc28da4da46d4a14acce270befc41a3364a5f12aaed19c2dc` |
| 19 | `theorem` | [colorTorusView_angles](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-angles--01a4413d5e57d8be9f737cc9.md) | 172 | `result-track:01a4413d5e57d8be9f737cc905a8d108d7464a724beb6e6d6faa08452ffefea8` |
| 20 | `structure` | [ColorTorusRenderFrame](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusrenderframe--7ccdb42159f6abd4e7ef5d84.md) | 184 | `declaration-track:7ccdb42159f6abd4e7ef5d846a8f2e31db6103571d4331e1b3476e02f29bbaf1` |
| 21 | `def` | [colorTorusRenderFrame](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusrenderframe--518b3561b6375e64390f4edb.md) | 192 | `declaration-track:518b3561b6375e64390f4edbd8405350dee9f8182aa953920c1fa08b80031d00` |
| 22 | `def` | [ColorTorusRenderFrame.authority](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusrenderframe-authority--c15d4ccaa9c5a689758bc1e6.md) | 202 | `declaration-track:c15d4ccaa9c5a689758bc1e66973d01367847f0165811023dd6ef4eb9bd87f30` |
| 23 | `theorem` | [colorTorusRenderFrame_preserves_xyz_revision](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusrenderframe-preserves-xyz-revision--5b2e3acd3cb9901bcdcc0091.md) | 207 | `result-track:5b2e3acd3cb9901bcdcc00916f05fc89a520717bd456fd157d6c906a7b30e0a9` |
| 24 | `theorem` | [colorTorusRenderFrame_preserves_xyz_payload](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusrenderframe-preserves-xyz-payload--f0c3ea5b259763382c77af6e.md) | 214 | `result-track:f0c3ea5b259763382c77af6ecf65e19c6c52f62006ba3c0ad906048433f1a8b8` |
| 25 | `theorem` | [colorTorusRenderFrame_is_presentation_only](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusrenderframe-is-presentation-only--f62be259ee1ca353f584dfc8.md) | 220 | `result-track:f62be259ee1ca353f584dfc8193da119145e7033b7f50af122963fe70a679138` |
| 26 | `theorem` | [colorTorusRejectedProposal_preserves_admitted_view](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusrejectedproposal-preserves-admitted-view--6152df7f95d4e6305a05537a.md) | 230 | `result-track:6152df7f95d4e6305a05537a393f61eb6e9498025e758d792bbe8d0250db7e24` |
| 27 | `theorem` | [colorTorusView_has_no_torsion_authority](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-has-no-torsion-authority--e6efb2f29da5918b8449cd4e.md) | 241 | `result-track:e6efb2f29da5918b8449cd4e3403dcd7bac1e5ab2294129143390f064d5c28b4` |
| 28 | `theorem` | [colorTorusView_has_no_classical_hecke_authority](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-has-no-classical-hecke-authority--ad7cdf4f9626d542164e935e.md) | 248 | `result-track:ad7cdf4f9626d542164e935ef4cc8cd99c77024ea52ce048d9586ae9c058e9db` |
| 29 | `theorem` | [colorTorusView_has_no_grh_authority](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortorusview-has-no-grh-authority--a5479d9451a8dbed748356f8.md) | 254 | `result-track:a5479d9451a8dbed748356f8dd9bf38e5ee5ad518d291748274e1b598f221d8c` |
| 30 | `theorem` | [colorTorusPresentation_has_no_analytic_authority](../../../../mathematics/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/declarations/colortoruspresentation-has-no-analytic-authority--16ed6d8c736bd52254b06c35.md) | 260 | `result-track:16ed6d8c736bd52254b06c3561801b4a9b8fa502e9202efa8c83ce44d936c185` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
