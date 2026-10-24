# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Inequalities.Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e599e8503d4f401d82159dc79d2824c9b9f43d06",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e599e8503d4f401d82159dc79d2824c9b9f43d06`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.WalshFourier.Analysis` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [KKLBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean/declarations/kklbound--ddfeb588bcc52e103bdebaf9.md) | 21 | `declaration-track:ddfeb588bcc52e103bdebaf9dee107ae95b6e78864a06acca810f6c50c1413ad` |
| 2 | `def` | [KKLHolds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean/declarations/kklholds--e99d3609bedeff77cf0d3de7.md) | 28 | `declaration-track:e99d3609bedeff77cf0d3de714c3529c7ade25a95d5b7b6135bc53bba2601666` |
| 3 | `structure` | [KKLCertificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean/declarations/kklcertificate--19578615ed3b18ea423427aa.md) | 34 | `declaration-track:19578615ed3b18ea423427aa05787b1b8436d219a474e8edbbf87ea5971581c8` |
| 4 | `theorem` | [kkl_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean/declarations/kkl-bound--8bfca3b4105c467d5e8e0132.md) | 38 | `result-track:8bfca3b4105c467d5e8e0132bcbab37d535ea19c7fc734f9167f7e61e5dd6f98` |
| 5 | `structure` | [BonamiBecknerBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean/declarations/bonamibecknerbound--80935099a225949e2d9c592f.md) | 51 | `declaration-track:80935099a225949e2d9c592f93d5fe8a3d8fba02060ef358939b33f5dc1c577a` |
| 6 | `def` | [BonamiBecknerHolds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean/declarations/bonamibecknerholds--7d09da82398648d0ce7ca290.md) | 61 | `declaration-track:7d09da82398648d0ce7ca290fd2402130bd887f42e9458b17066425b780cf2ea` |
| 7 | `structure` | [BonamiBecknerCertificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean/declarations/bonamibecknercertificate--a8f5e42b0a07ec759f2bb605.md) | 68 | `declaration-track:a8f5e42b0a07ec759f2bb6052d5715df42b59c1048888b356c789c0d11bed4ed` |
| 8 | `theorem` | [bonami_beckner_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Inequalities/Variant4210b0a7fa5bf2138a0f6c32f58b9d599bc556163095d1728c4a00b5f8ed27b3.lean/declarations/bonami-beckner-bound--5fa20a54f706bf6f7b5c0b60.md) | 73 | `result-track:5fa20a54f706bf6f7b5c0b600c79b545bb5e95065e03484054a2c9d6bcbd0f93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
