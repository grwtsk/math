# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Pi.Variant947a6ecf66173255866bf9147c8d3952c867801ce45370159716a5654c0c8a8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3596bb3a05decf7bd8a122dc338a382c2767658e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Pi/Variant947a6ecf66173255866bf9147c8d3952c867801ce45370159716a5654c0c8a8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant947a6ecf66173255866bf9147c8d3952c867801ce45370159716a5654c0c8a8e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant947a6ecf66173255866bf9147c8d3952c867801ce45370159716a5654c0c8a8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3596bb3a05decf7bd8a122dc338a382c2767658e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Pi/Variant947a6ecf66173255866bf9147c8d3952c867801ce45370159716a5654c0c8a8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Pi/Variant947a6ecf66173255866bf9147c8d3952c867801ce45370159716a5654c0c8a8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fin_nat_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant947a6ecf66173255866bf9147c8d3952c867801ce45370159716a5654c0c8a8e.lean/declarations/fin-nat-prod--878d589c15e598200b945cfa.md) | 36 | `result-track:878d589c15e598200b945cfa7d3c169eb6d00817bbe84884cb6fe45d99a5914a` |
| 2 | `theorem` | [fintype_prod_dep](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant947a6ecf66173255866bf9147c8d3952c867801ce45370159716a5654c0c8a8e.lean/declarations/fintype-prod-dep--d948d150aff288283c2d608b.md) | 55 | `result-track:d948d150aff288283c2d608ba5fdf49a4fe0a25df56087008d00c13ba567ca52` |
| 3 | `theorem` | [fintype_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant947a6ecf66173255866bf9147c8d3952c867801ce45370159716a5654c0c8a8e.lean/declarations/fintype-prod--9e0851b4b9a2dd8e3a759fc7.md) | 68 | `result-track:9e0851b4b9a2dd8e3a759fc7d920252d8d4f046fd4c2c76eb861e63dfff7889d` |
| 4 | `theorem` | [integral_fin_nat_prod_eq_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant947a6ecf66173255866bf9147c8d3952c867801ce45370159716a5654c0c8a8e.lean/declarations/integral-fin-nat-prod-eq-prod--2b4c9101c21388589015819e.md) | 79 | `result-track:2b4c9101c21388589015819e0b9743afcd2ddb6fd744569fb8034b0c75957f97` |
| 5 | `theorem` | [integral_fintype_prod_eq_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant947a6ecf66173255866bf9147c8d3952c867801ce45370159716a5654c0c8a8e.lean/declarations/integral-fintype-prod-eq-prod--b3fecfcaa99215776c249dfe.md) | 100 | `result-track:b3fecfcaa99215776c249dfee1bae1c520971cbbe1131ae057f3de0e0981b213` |
| 6 | `theorem` | [integral_fintype_prod_eq_pow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant947a6ecf66173255866bf9147c8d3952c867801ce45370159716a5654c0c8a8e.lean/declarations/integral-fintype-prod-eq-pow--cedadd67023381b328aeb41c.md) | 108 | `result-track:cedadd67023381b328aeb41ce9d8df894decaaa8f5480534de6144461e0919ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
