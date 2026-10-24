# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Norm.Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bae2b3f7427d8ee7a8c4b332c14aa6952c981121",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bae2b3f7427d8ee7a8c4b332c14aa6952c981121`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_ofReal_le_lintegral_enorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean/declarations/lintegral-ofreal-le-lintegral-enorm--ddb7f8a783150dd91240f58c.md) | 25 | `result-track:ddb7f8a783150dd91240f58c79806d8edd73d8e3f25b9fdf214eb716058663b3` |
| 2 | `theorem` | [lintegral_enorm_of_ae_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean/declarations/lintegral-enorm-of-ae-nonneg--0329165afcf15cc42e40f35b.md) | 35 | `result-track:0329165afcf15cc42e40f35b4cf533011eaed5614db6ac35e9c96cdc71b9168a` |
| 3 | `theorem` | [lintegral_enorm_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean/declarations/lintegral-enorm-of-nonneg--e7f39aff39fbe430013d152b.md) | 44 | `result-track:e7f39aff39fbe430013d152b5758a53adf27aa0305081123ba0ea56086dee5fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
