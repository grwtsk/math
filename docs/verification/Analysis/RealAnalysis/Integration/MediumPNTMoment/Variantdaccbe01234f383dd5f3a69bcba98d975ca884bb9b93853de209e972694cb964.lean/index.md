# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNTMoment.Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "958b5ab8bbcc66805ea776ef5aa8fd1323fb5823",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `958b5ab8bbcc66805ea776ef5aa8fd1323fb5823`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MediumPNTLogError` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [psiRelativeError_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean/declarations/psirelativeerror-measurable--5b746ba7db4e86473325d553.md) | 11 | `result-track:5b746ba7db4e86473325d553120e6787d64b86b88259fe80f73782ee8384b7f6` |
| 2 | `theorem` | [psiRelativeError_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean/declarations/psirelativeerror-bound--f50e3f2f51bc06a4ac8bb0d2.md) | 17 | `result-track:f50e3f2f51bc06a4ac8bb0d220b23676b55918178dcce4eff888e381ee2c1456` |
| 3 | `theorem` | [inverse_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean/declarations/inverse-square-integrable--79d5c6fef9e4b8533b210177.md) | 33 | `result-track:79d5c6fef9e4b8533b210177b3d637cecac5526e6ae6a8d983ccd7e19f42adbb` |
| 4 | `theorem` | [psiRelativeError_mul_pow_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean/declarations/psirelativeerror-mul-pow-integrable--14f3fdd03576d0ee4d246146.md) | 42 | `result-track:14f3fdd03576d0ee4d2461460386f8f057f7331f82df46ca4561387077a17ff6` |
| 5 | `theorem` | [psiRelativeError_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean/declarations/psirelativeerror-integrable--4643f417846caa5ee1aef09b.md) | 79 | `result-track:4643f417846caa5ee1aef09bed7b4fdb54ba4895ad4ceb3ef39b555dddd74af4` |
| 6 | `theorem` | [psiRelativeError_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean/declarations/psirelativeerror-first-moment-integrable--dab12b9607f7f6410a3b8965.md) | 83 | `result-track:dab12b9607f7f6410a3b8965b88b6a9e4c05457d69a28a42cefc70e57a2e4f61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
