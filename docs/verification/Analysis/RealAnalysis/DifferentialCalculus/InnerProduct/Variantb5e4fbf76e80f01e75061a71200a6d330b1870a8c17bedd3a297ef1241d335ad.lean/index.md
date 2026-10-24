# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InnerProduct.Variantb5e4fbf76e80f01e75061a71200a6d330b1870a8c17bedd3a297ef1241d335ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cfd7cb69410a66e891579ea6042f745f506f0e6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variantb5e4fbf76e80f01e75061a71200a6d330b1870a8c17bedd3a297ef1241d335ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variantb5e4fbf76e80f01e75061a71200a6d330b1870a8c17bedd3a297ef1241d335ad.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variantb5e4fbf76e80f01e75061a71200a6d330b1870a8c17bedd3a297ef1241d335ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cfd7cb69410a66e891579ea6042f745f506f0e6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variantb5e4fbf76e80f01e75061a71200a6d330b1870a8c17bedd3a297ef1241d335ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variantb5e4fbf76e80f01e75061a71200a6d330b1870a8c17bedd3a297ef1241d335ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [conformalAt_iff'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variantb5e4fbf76e80f01e75061a71200a6d330b1870a8c17bedd3a297ef1241d335ad.lean/declarations/conformalat-iff--623f6130eca566d45c22817b.md) | 31 | `result-track:623f6130eca566d45c22817b01f907d599af71cff07289f554086769938b225c` |
| 2 | `theorem` | [conformalAt_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variantb5e4fbf76e80f01e75061a71200a6d330b1870a8c17bedd3a297ef1241d335ad.lean/declarations/conformalat-iff--d9ae754e5cd0c20cd642d77f.md) | 37 | `result-track:d9ae754e5cd0c20cd642d77f39d7777fdd09d77d46e9f95a915fdfe251ecc2b9` |
| 3 | `def` | [conformalFactorAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variantb5e4fbf76e80f01e75061a71200a6d330b1870a8c17bedd3a297ef1241d335ad.lean/declarations/conformalfactorat--2f06cbf58741a474d11806d7.md) | 43 | `declaration-track:2f06cbf58741a474d11806d70fb772d6c05380c1beac802d52d8d48342c4a844` |
| 4 | `theorem` | [conformalFactorAt_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variantb5e4fbf76e80f01e75061a71200a6d330b1870a8c17bedd3a297ef1241d335ad.lean/declarations/conformalfactorat-pos--285876c3a048fe7c7daf42a0.md) | 46 | `result-track:285876c3a048fe7c7daf42a02b6fbd03478724e190a1f358c4bc1515da22e34f` |
| 5 | `theorem` | [conformalFactorAt_inner_eq_mul_inner'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variantb5e4fbf76e80f01e75061a71200a6d330b1870a8c17bedd3a297ef1241d335ad.lean/declarations/conformalfactorat-inner-eq-mul-inner--d3b87b483d0349af0f0f8d26.md) | 49 | `result-track:d3b87b483d0349af0f0f8d26dbb47142d291850d562404bf7e9784eda6188578` |
| 6 | `theorem` | [conformalFactorAt_inner_eq_mul_inner](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variantb5e4fbf76e80f01e75061a71200a6d330b1870a8c17bedd3a297ef1241d335ad.lean/declarations/conformalfactorat-inner-eq-mul-inner--130b0fb27fc6f29bbc6fbd41.md) | 53 | `result-track:130b0fb27fc6f29bbc6fbd4100dcd5eee8403bbf673c492da1543e460d112c24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
