# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Newton.Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.TaylorModel` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimize` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [newtonStepTM](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newtonsteptm--8873589aad086d04537a9236.md) | 54 | `declaration-track:8873589aad086d04537a9236817ce0e92c9227329131677ed8fd6d3888a2ebd5` |
| 2 | `def` | [newtonStepSimple](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newtonstepsimple--888ff79bdac85a76f0182ca8.md) | 90 | `declaration-track:888ff79bdac85a76f0182ca8bf3f2d12cb75e3257f663c19e5a5c4b5c5e426be` |
| 3 | `def` | [newtonStep](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newtonstep--6b07fe373cfb9bc33aedcb22.md) | 114 | `declaration-track:6b07fe373cfb9bc33aedcb226612c14e760f459fd5f40a98bf2c7b4448944460` |
| 4 | `def` | [newtonIntervalGo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newtonintervalgo--1ef04234601a2e78ba1f204a.md) | 122 | `declaration-track:1ef04234601a2e78ba1f204ab75544c73d9fbec2410d0e239a34bca86e360504` |
| 5 | `def` | [newtonIntervalTM](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newtonintervaltm--15dd1f41351689f5542f0466.md) | 170 | `declaration-track:15dd1f41351689f5542f0466e7bee8778cd588995d8ce316714621d008919c2c` |
| 6 | `def` | [newtonInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newtoninterval--4af43ab989eb54b60da714bf.md) | 176 | `declaration-track:4af43ab989eb54b60da714bf523afd9ab05d64ad1f40e6c68bf9cba7426682bd` |
| 7 | `theorem` | [deriv_in_derivInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/deriv-in-derivinterval--f98a4c3eaf057679c7789b99.md) | 185 | `result-track:f98a4c3eaf057679c7789b9994fe14f8e3cf9f2859959edfd6ddc50df99107d5` |
| 8 | `theorem` | [mvt_for_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/mvt-for-eval--7b72c482b3b4b73d52737b26.md) | 192 | `result-track:7b72c482b3b4b73d52737b262b0a4844c9dcfda18a857d03f036fb8924d72c3e` |
| 9 | `theorem` | [between_mem_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/between-mem-interval--7836d1593995f744068ea7ec.md) | 238 | `result-track:7836d1593995f744068ea7eccdbc45d692c861129daa2f4581fc87cb53d42da2` |
| 10 | `theorem` | [newton_operator_preserves_root](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newton-operator-preserves-root--b8cdbd4a4cc70f86c483ac05.md) | 254 | `result-track:b8cdbd4a4cc70f86c483ac05011d1a11014a9734977a9cebf090138f09731668` |
| 11 | `theorem` | [newton_preserves_root](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newton-preserves-root--2e0c039ca986a31c3d2912e4.md) | 370 | `result-track:2e0c039ca986a31c3d2912e47a25706874584b89398bc4d00bea872a062c3b3a` |
| 12 | `theorem` | [newton_step_at_most_one_root](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newton-step-at-most-one-root--479f762cfa7fcb1636b17b1f.md) | 517 | `result-track:479f762cfa7fcb1636b17b1f87b91853dd6260eb625a62cd48ff66bbb0e9dd92` |
| 13 | `structure` | [NewtonContractionData](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newtoncontractiondata--ea2ab579b504fe985d7734c2.md) | 604 | `declaration-track:ea2ab579b504fe985d7734c2c28095cf35381ab746eaa923f203fdc6264ab48b` |
| 14 | `lemma` | [contraction_newton_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/contraction-newton-bounds--34d275841bcdef2c30e52152.md) | 618 | `result-track:34d275841bcdef2c30e521521a993bd80384c89c1471242c9c94dd0699041f35` |
| 15 | `lemma` | [newtonStepSimple_extract](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newtonstepsimple-extract--54553a5f0e76a9a91602a5ae.md) | 646 | `result-track:54553a5f0e76a9a91602a5ae6c4f66c19187488635b00a609fbff8e53f45b61c` |
| 16 | `lemma` | [newtonStepTM_structure](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newtonsteptm-structure--6c0775120cea1354678c69b2.md) | 683 | `result-track:6c0775120cea1354678c69b2f7000e50d39fd1dd04336fdeac85d6e461242ab9` |
| 17 | `lemma` | [newtonStepTM_fc_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/declarations/newtonsteptm-fc-correct--6b3eba3dcfab74a6840cfa91.md) | 733 | `result-track:6b3eba3dcfab74a6840cfa916942484d5ce5da8c4e7102a5805a834b5edbf4fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
