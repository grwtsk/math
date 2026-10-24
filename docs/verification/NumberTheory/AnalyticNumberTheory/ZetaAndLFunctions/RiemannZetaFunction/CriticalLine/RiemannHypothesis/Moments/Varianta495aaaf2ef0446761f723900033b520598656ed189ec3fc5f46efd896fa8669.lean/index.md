# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Moments.Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b5ce24d2b678336f44cab3cd309621829ae60ad",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b5ce24d2b678336f44cab3cd309621829ae60ad`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.PrimeSide.Concrete` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Traces` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.Zeta23.Params.GpCW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/root-zeta23-params-gpcw--84faa857062799b5f36a4098.md) | 43 | `declaration-track:84faa857062799b5f36a40984073aa332c2f3958e29f945ba571fc5fd3d9da22` |
| 2 | `lemma` | [GpC_eq_GpCW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/gpc-eq-gpcw--e014385413d006b4e2baf8c1.md) | 46 | `result-track:e014385413d006b4e2baf8c1bc200f1ebb054ce42f13730c8ba5703b348e95f2` |
| 3 | `lemma` | [GentryCW_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/gentrycw-eq--dd90f86648e1d3d65d4ab368.md) | 48 | `result-track:dd90f86648e1d3d65d4ab368fbddfabb3e5fe6a1f96c4be6eae940c488f706a6` |
| 4 | `lemma` | [rtrace_tilde_GpCW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/rtrace-tilde-gpcw--64202c4b7f4b12ce7842b1dc.md) | 52 | `result-track:64202c4b7f4b12ce7842b1dc3650b9845412ca90e2e082340ae226d1f6f2e501` |
| 5 | `lemma` | [frobSq_tilde_GpCW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/frobsq-tilde-gpcw--5ea9d79ba1bc7c3738a007cc.md) | 59 | `result-track:5ea9d79ba1bc7c3738a007cc5b44c30d9732a2e4bb01527a94c09a319e89b0f1` |
| 6 | `lemma` | [rtrace_hat_GpCW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/rtrace-hat-gpcw--80735068db634369167b683b.md) | 65 | `result-track:80735068db634369167b683bf59acb631f6e22f049589bbecc8b8fb7308361b1` |
| 7 | `lemma` | [frobSq_hat_GpCW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/frobsq-hat-gpcw--3f2d02db5e4823921e5b4fe2.md) | 70 | `result-track:3f2d02db5e4823921e5b4fe277dae07da133ce900b59d81f0312abe684be5265` |
| 8 | `def` | [MomentsW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/momentsw--cd35e341f5a3022662228341.md) | 79 | `declaration-track:cd35e341f5a3022662228341528459b76992f3c94fdecad83703414809681603` |
| 9 | `lemma` | [coeffMoments_iff_momentsW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/coeffmoments-iff-momentsw--a9c34bf0c5afba44aa5fc695.md) | 86 | `result-track:a9c34bf0c5afba44aa5fc695f8991d2a8410232e25e44c88ad81d3c27cd704b7` |
| 10 | `theorem` | [momentsW_of_family](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/momentsw-of-family--9f20ac94ac74f10adc65b98f.md) | 96 | `result-track:9f20ac94ac74f10adc65b98f9c3a7cee73f6c2c5fded3e4c0759d210b66098c8` |
| 11 | `theorem` | [coeffMoments_of_family](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/coeffmoments-of-family--8ae43a11213a5c1847bb5b26.md) | 142 | `result-track:8ae43a11213a5c1847bb5b268639388a3fcbddc6dfdd083d654558cd77374a95` |
| 12 | `theorem` | [coeffMoments_flat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/coeffmoments-flat--074d7736a784bb1f0541ce6e.md) | 159 | `result-track:074d7736a784bb1f0541ce6e85826e6ace21d147da0a0a481a0ea91472446992` |
| 13 | `theorem` | [coeffMoments_atV](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.lean/declarations/coeffmoments-atv--7544a662c1f2abe98bd5e562.md) | 172 | `result-track:7544a662c1f2abe98bd5e5620ace6c9f86a7215e5ab4cebc9ec2e86d039d9e8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
