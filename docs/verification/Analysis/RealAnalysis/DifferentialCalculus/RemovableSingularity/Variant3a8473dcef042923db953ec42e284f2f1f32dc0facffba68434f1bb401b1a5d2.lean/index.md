# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RemovableSingularity.Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "513775a05a8fb616fbd6b8220de2c17ed8ea2b29",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `513775a05a8fb616fbd6b8220de2c17ed8ea2b29`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean/declarations/analyticat-of-differentiable-on-punctured-nhds-of-continuousat--f5ca817fd730c47ff1d27871.md) | 40 | `result-track:f5ca817fd730c47ff1d27871975cac6905a247f1002e9afc4f0a2dcd8e646ba5` |
| 2 | `theorem` | [differentiableOn_compl_singleton_and_continuousAt_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean/declarations/differentiableon-compl-singleton-and-continuousat-iff--797a5678ec8a884c8100df98.md) | 51 | `result-track:797a5678ec8a884c8100df9843110b6753a2da84e7b980d73180f88d09278454` |
| 3 | `theorem` | [differentiableOn_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean/declarations/differentiableon-dslope--d07f967f1334fe7c23f12347.md) | 64 | `result-track:d07f967f1334fe7c23f12347106c06fd47a46be32394a783b484f115d6a19d9b` |
| 4 | `theorem` | [differentiableOn_update_limUnder_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean/declarations/differentiableon-update-limunder-of-islittleo--6a498cadc1875c15ce0efc48.md) | 74 | `result-track:6a498cadc1875c15ce0efc48860ecb36f9f6f6d3990005c0c1201086fc06fc83` |
| 5 | `theorem` | [differentiableOn_update_limUnder_insert_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean/declarations/differentiableon-update-limunder-insert-of-islittleo--fee350458c0f1ace41b5e2e8.md) | 95 | `result-track:fee350458c0f1ace41b5e2e8f6bac081c8f1eb61bca77fa9e65fdfa57e351304` |
| 6 | `theorem` | [differentiableOn_update_limUnder_of_bddAbove](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean/declarations/differentiableon-update-limunder-of-bddabove--ae63b3f6b5eaf948c5e8656c.md) | 105 | `result-track:ae63b3f6b5eaf948c5e8656cd458f204c85ae201d70fe6dfa2482012c950c395` |
| 7 | `theorem` | [tendsto_limUnder_of_differentiable_on_punctured_nhds_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean/declarations/tendsto-limunder-of-differentiable-on-punctured-nhds-of-islittleo--7406e60ffcd8dffc16668305.md) | 115 | `result-track:7406e60ffcd8dffc166683058cf3ccd6e8e6c92f88e5db58495f22d3ad4f9a1c` |
| 8 | `theorem` | [tendsto_limUnder_of_differentiable_on_punctured_nhds_of_bounded_under](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean/declarations/tendsto-limunder-of-differentiable-on-punctured-nhds-of-bounded-under--c0e1bb202deae0674495af56.md) | 127 | `result-track:c0e1bb202deae0674495af56e442f1b11dec8f7d3c013ed36f5c40d4ee7b1948` |
| 9 | `theorem` | [two_pi_I_inv_smul_circleIntegral_sub_sq_inv_smul_of_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant3a8473dcef042923db953ec42e284f2f1f32dc0facffba68434f1bb401b1a5d2.lean/declarations/two-pi-i-inv-smul-circleintegral-sub-sq-inv-smul-of-differentiable--5a6291cd7e71ff616dd920e6.md) | 134 | `result-track:5a6291cd7e71ff616dd920e6618bad687202377311ff6179aea5c33aae9ae7bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
