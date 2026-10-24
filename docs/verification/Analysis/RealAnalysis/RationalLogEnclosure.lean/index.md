# Verification target: GRWTSK.Analysis.Real.RationalLogEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b240a6bfa660e8396ad14beb4ef3948a21c4b09",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/RationalLogEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b240a6bfa660e8396ad14beb4ef3948a21c4b09`.

Source path: `GRWTSK/Analysis/Real/RationalLogEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/RationalLogEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ratio](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/ratio--5b6a990685b94431ca3c4d29.md) | 29 | `declaration-track:5b6a990685b94431ca3c4d29fc0be9482913e8b6ee44fb1ee11977c5251b76ad` |
| 2 | `def` | [lower](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/lower--2b3525da8214fba441ff7d83.md) | 32 | `declaration-track:2b3525da8214fba441ff7d83bcbfe8d67ef9446c838443c6ac1ffeffb6f70f0d` |
| 3 | `def` | [width](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/width--5efe8ca0f37a4158e402c04a.md) | 36 | `declaration-track:5efe8ca0f37a4158e402c04a7e1834b2dea4e7f102fd872f6b8e475e5e01e3ff` |
| 4 | `theorem` | [ratio_bounds](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/ratio-bounds--682a51860088d7b85039df9d.md) | 39 | `result-track:682a51860088d7b85039df9d42f976c430462fcfc64124ebb565f3fd06aa1caa` |
| 5 | `theorem` | [ratio_le_third](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/ratio-le-third--64eec5499d52a43293ba1b96.md) | 46 | `result-track:64eec5499d52a43293ba1b96f60f6a6f67fc926f4d0fd4783bc533198938f0a0` |
| 6 | `theorem` | [width_nonneg](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/width-nonneg--223a34f38dcf23120ee68979.md) | 51 | `result-track:223a34f38dcf23120ee68979d28531f2a21934064334b09e3648e3fa2c07a295` |
| 7 | `theorem` | [source_of_ratio](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/source-of-ratio--c1389ee80b3595a7422787d7.md) | 57 | `result-track:c1389ee80b3595a7422787d71bb1164c0d750ea057a8d5e312fa0ee4fe2a0829` |
| 8 | `theorem` | [log_bounds](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/log-bounds--c242e60d81fda72080f6b8ab.md) | 67 | `result-track:c242e60d81fda72080f6b8ab36f75b893275fc6d09e18e804da8dd0cb0a99d68` |
| 9 | `theorem` | [width_le_geometric](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/width-le-geometric--ae29f242c3ed7673980d2962.md) | 88 | `result-track:ae29f242c3ed7673980d2962ed65688f396306e04002c02d1c4f480480a9240b` |
| 10 | `structure` | [DyadicInput](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/dyadicinput--77f968955e2380bd0d54600d.md) | 108 | `declaration-track:77f968955e2380bd0d54600dcb59bdf1b2879d0689a2bbe1da987c902deeb6f0` |
| 11 | `def` | [lowerValue](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/lowervalue--4e3913dc8784c29c8bb835ba.md) | 119 | `declaration-track:4e3913dc8784c29c8bb835ba53e2eef702231570131ca73a286f758b9b24498d` |
| 12 | `def` | [totalWidth](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/totalwidth--436d7f3e649182198af21667.md) | 122 | `declaration-track:436d7f3e649182198af2166795ea7deb4aac0ff6988dd7657fb3c092f51a315c` |
| 13 | `def` | [center](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/center--044e81c2ec2a812547dbd65c.md) | 125 | `declaration-track:044e81c2ec2a812547dbd65c19d44332475ae5004e49b87cd02b4e781ac5be29` |
| 14 | `def` | [error](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/error--4fea732e3e59f4f941cdec4d.md) | 127 | `declaration-track:4fea732e3e59f4f941cdec4d4ceea89b485fe590cafa1284390a12ed57244844` |
| 15 | `theorem` | [totalWidth_nonneg](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/totalwidth-nonneg--d284d6678456aa748e99f5c6.md) | 129 | `result-track:d284d6678456aa748e99f5c652e8be6498429024b7c827289b07481dd8669125` |
| 16 | `theorem` | [error_nonneg](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/error-nonneg--3c0a19a250b990ed709215b4.md) | 134 | `result-track:3c0a19a250b990ed709215b4f59271c2496b14d2b2d0da28b64b974ff8f4c173` |
| 17 | `theorem` | [source_pos](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/source-pos--864adb923da9c3a3b0b5a1f9.md) | 137 | `result-track:864adb923da9c3a3b0b5a1f9591522764c6a81b57618add3e3fccdd2bbe0e748` |
| 18 | `theorem` | [bounds](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/bounds--78eb2082fadb49ce775f9fb1.md) | 145 | `result-track:78eb2082fadb49ce775f9fb150ace8221f7b88ce526a25db62698b544825b420` |
| 19 | `theorem` | [sound](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/sound--083b761460226a4e15b19d26.md) | 166 | `result-track:083b761460226a4e15b19d2601a2b012929b49049d19f6a76f6b23e54187dccf` |
| 20 | `def` | [direct](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/direct--305de8f964e7c428adcd06d5.md) | 174 | `declaration-track:305de8f964e7c428adcd06d5c67dfee411415e6de9cd5a2d5d2d0e9710bcff72` |
| 21 | `def` | [reduced](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/reduced--d272551d0e6a5612f1eea19a.md) | 182 | `declaration-track:d272551d0e6a5612f1eea19a44715a10c4beb64c3f5554649c448cac047ae6f9` |
| 22 | `def` | [withTerms](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/withterms--e6f9c57fe4baf4a63093ae0b.md) | 194 | `declaration-track:e6f9c57fe4baf4a63093ae0bb291805d44a98baa7d6766d4f22716666b4e9d04` |
| 23 | `theorem` | [reduced_error_le](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/reduced-error-le--43c9bb59656ae16f44b99661.md) | 196 | `result-track:43c9bb59656ae16f44b996615362e7014ade81e183697ee733113ed646f91c6e` |
| 24 | `theorem` | [error_tendsto_zero](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/declarations/error-tendsto-zero--1e2d0a428e37a7c3611d3317.md) | 205 | `result-track:1e2d0a428e37a7c3611d33178a3e352ca89c37507070bcaaef625a8b36c9abaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
