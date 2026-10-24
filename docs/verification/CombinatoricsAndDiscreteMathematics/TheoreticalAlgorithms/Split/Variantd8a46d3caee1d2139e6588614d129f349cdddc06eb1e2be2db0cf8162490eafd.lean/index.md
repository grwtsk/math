# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Split.Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81fbcb73a7a33e0d5570bca16c0e1b92445ff46e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81fbcb73a7a33e0d5570bca16c0e1b92445ff46e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Intro` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Util` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.CasesMatch` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Internalize` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.MapIdx` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Grind.Util` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SplitStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/splitstatus--7221365ee89176e03a06f93e.md) | 28 | `declaration-track:7221365ee89176e03a06f93e04aed1e151ff7e5a027716936aa4801dad0c33bb` |
| 2 | `def` | [checkIteCondStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/checkitecondstatus--5edc4465a74203a5ae2f57f0.md) | 35 | `declaration-track:5edc4465a74203a5ae2f57f098e7053383ac208757c52b6e43739b23eba1dbdd` |
| 3 | `def` | [checkDisjunctStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/checkdisjunctstatus--b0495c7932dfe497d7f9dd2f.md) | 45 | `declaration-track:b0495c7932dfe497d7f9dd2f19bc3f20a0c80942d0f7fce7280373d0649cb32a` |
| 4 | `def` | [checkConjunctStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/checkconjunctstatus--f07979e3e806cf979a69de56.md) | 60 | `declaration-track:f07979e3e806cf979a69de565470cf2a9ef5fcdf709eae1d4a2cf76e87d048ef` |
| 5 | `def` | [checkIffStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/checkiffstatus--09b45e329a3f878fca445e09.md) | 77 | `declaration-track:09b45e329a3f878fca445e096131fcb61222dd05fbcfb879380552c6204571d5` |
| 6 | `def` | [isCongrToPrevSplit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/iscongrtoprevsplit--4857ac5c2b7dbb18a3b20d63.md) | 92 | `declaration-track:4857ac5c2b7dbb18a3b20d6324b6c5a10d6a4b16dea2831665345c1b4f4f0556` |
| 7 | `def` | [checkDefaultSplitStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/checkdefaultsplitstatus--4fb6d56646ecee46f98977dd.md) | 100 | `declaration-track:4fb6d56646ecee46f98977dde7882088a5d405b69a52d772e9a65a8bee1dcacb` |
| 8 | `def` | [checkSplitInfoArgStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/checksplitinfoargstatus--b15a8d8113ff421372ddd4b9.md) | 132 | `declaration-track:b15a8d8113ff421372ddd4b9a82573498602ee0031f5771b688fa7050909c243` |
| 9 | `def` | [checkForallStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/checkforallstatus--2e241000b3d7cf2da26c0f27.md) | 155 | `declaration-track:2e241000b3d7cf2da26c0f27da82fea9be8f020f2de8a6557e141f30230c807d` |
| 10 | `def` | [checkSplitStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/checksplitstatus--8149604f4b0a39c4bf043ff9.md) | 170 | `declaration-track:8149604f4b0a39c4bf043ff90a77a1a5ce1f5d8b32ba6ea336e8b65415403473` |
| 11 | `inductive` | [SplitCandidate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/splitcandidate--7ff8e432079fe30737f437c3.md) | 176 | `declaration-track:7ff8e432079fe30737f437c390cc85fabbf749f0674751a92e6887d5e48b33f8` |
| 12 | `def` | [checkAnchorRefs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/checkanchorrefs--fa1a1b721ad8bdad57166519.md) | 184 | `declaration-track:fa1a1b721ad8bdad57166519aad1a85fba2cdac820c74dd481dbe9b0dd84d7b8` |
| 13 | `def` | [selectNextSplit?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/selectnextsplit--16587edc0d6bbf9b80d3a0d4.md) | 190 | `declaration-track:16587edc0d6bbf9b80d3a0d43094f9e2bc515e0569ff74f3cd8544878f719bf6` |
| 14 | `def` | [mkGrindEM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/mkgrindem--c8127027f51ae288ae6925ce.md) | 242 | `declaration-track:c8127027f51ae288ae6925ceb05b034d37068acee4bbb61ec876517535d1596d` |
| 15 | `def` | [mkCasesMajor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/mkcasesmajor--8c9af60cc4a454c76b9aacde.md) | 246 | `declaration-track:8c9af60cc4a454c76b9aacde098b14cfcf61f9c6e09a41afc80115c19ee36acc` |
| 16 | `def` | [casesWithTrace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/caseswithtrace--ea09dca7f12a404c9d6185fd.md) | 267 | `declaration-track:ea09dca7f12a404c9d6185fd664479cd0269574929cdbc412336965bb0bd1427` |
| 17 | `structure` | [SplitCandidateWithAnchor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/splitcandidatewithanchor--bf5c82e9ac63dc638495b94e.md) | 273 | `declaration-track:bf5c82e9ac63dc638495b94eee3835ab03a16c940f1f03e57b0ebe9a1a2d00a8` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/instance--98d78b37a0e8197cfd939a68.md) | 280 | `declaration-track:98d78b37a0e8197cfd939a687b85c9c1ad5402b196d397df9f292f34c739197f` |
| 19 | `structure` | [SplitCandidateAnchors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/splitcandidateanchors--1947d6ff0d75599c0ed58dcc.md) | 283 | `declaration-track:1947d6ff0d75599c0ed58dcc3e626199ef48d3feb5e4e0d8fbdff9842c312980` |
| 20 | `def` | [getSplitCandidateAnchors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/getsplitcandidateanchors--4b501cdd6b2d977aa49f4c3f.md) | 294 | `declaration-track:4b501cdd6b2d977aa49f4c3f53963e4a6143f263b5089450e3eb41a07190c438` |
| 21 | `structure` | [SplitAnchorRefInfo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/splitanchorrefinfo--2a08dae0f997ebef652531c3.md) | 324 | `declaration-track:2a08dae0f997ebef652531c313e06818db865dc1c6183735ef408ab4958c2923` |
| 22 | `def` | [mkSplitAnchorRefInfo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/mksplitanchorrefinfo--14d247751bd3e0f683daff24.md) | 335 | `declaration-track:14d247751bd3e0f683daff24c52f0fe50e49e65198b650126d35d160f6dbbed2` |
| 23 | `def` | [SplitAnchorRefInfo.toSyntax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/splitanchorrefinfo-tosyntax--05416709721b80868a55de3e.md) | 351 | `declaration-track:05416709721b80868a55de3e72c988a4f5c17a95525daf5cf10052503ce0a861` |
| 24 | `def` | [getFalseProof?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/getfalseproof--43470c1ed67b5fecd7f9f0df.md) | 368 | `declaration-track:43470c1ed67b5fecd7f9f0df8f7ee7ab5bb898814d3c4c8c6dbbecdea3e5b229` |
| 25 | `def` | [isCompressibleSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/iscompressibleseq--2c8418e991cd074d3ec3ccae.md) | 395 | `declaration-track:2c8418e991cd074d3ec3ccae3e3de6de9a4c91a9ebfaa5f3f2b053e4c0110061` |
| 26 | `def` | [mkAndThenSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/mkandthenseq--12747b2145682191b7b15b66.md) | 404 | `declaration-track:12747b2145682191b7b15b66a72bfb7e92db3ca664e1aa547978be4c09ca5209` |
| 27 | `def` | [mkCasesAndThen](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/mkcasesandthen--113236aaaf25c267d59e9d56.md) | 412 | `declaration-track:113236aaaf25c267d59e9d5658546b39f61dfba7474d1b2c202d096ab85f8efd` |
| 28 | `def` | [isCompressibleAlts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/iscompressiblealts--2922e6f23f90fe5a3554990a.md) | 419 | `declaration-track:2922e6f23f90fe5a3554990aeddfa9cec1e5f9189e884f5196741147c6963841` |
| 29 | `def` | [isSorryAlt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/issorryalt--df28548463edf60921dacfa4.md) | 426 | `declaration-track:df28548463edf60921dacfa42a8e976d025a7b585e9532ee6c75a85cfd22bd50` |
| 30 | `def` | [mkCasesResultSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/mkcasesresultseq--322b237c06ae0f3d784e0325.md) | 433 | `declaration-track:322b237c06ae0f3d784e0325adaf255a2514a05776077190e08352bd21f1ad5d` |
| 31 | `def` | [splitCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/splitcore--1c4f02ac7d99975253631cd4.md) | 458 | `declaration-track:1c4f02ac7d99975253631cd4da6b6c9a5969e4780d839899121bc8e7e1ea93f7` |
| 32 | `def` | [splitNext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/declarations/splitnext--f955db39c4b2ee68491623b4.md) | 559 | `declaration-track:f955db39c4b2ee68491623b4a5e470dcbe9099cc8058cbfe586449080ad5b8d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
