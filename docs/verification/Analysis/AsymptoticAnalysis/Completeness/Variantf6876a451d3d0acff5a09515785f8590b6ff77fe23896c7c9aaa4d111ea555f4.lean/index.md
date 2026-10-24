# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Completeness.Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b7d4e7ad15f002b2dcea99cff75cada24ca325e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b7d4e7ad15f002b2dcea99cff75cada24ca325e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Uniform` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Metric.exists_subseq_summable_dist_of_cauchySeq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean/declarations/metric-exists-subseq-summable-dist-of-cauchyseq--150519d711bd55ffd30db0d4.md) | 47 | `result-track:150519d711bd55ffd30db0d418b116b09e4dcee821ccbbad9c38622b686544c7` |
| 2 | `lemma` | [NormedAddCommGroup.completeSpace_of_summable_imp_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean/declarations/normedaddcommgroup-completespace-of-summable-imp-tendsto--ce14c56f8ca8a2ed3a56f531.md) | 63 | `result-track:ce14c56f8ca8a2ed3a56f5315f09299774161ccbf09709ec8d184a12a1756c5f` |
| 3 | `lemma` | [NormedAddCommGroup.summable_imp_tendsto_of_complete](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean/declarations/normedaddcommgroup-summable-imp-tendsto-of-complete--30135716d9cc64ebd293d7f2.md) | 85 | `result-track:30135716d9cc64ebd293d7f20bca18065371a63787891e414de94664f9faa1df` |
| 4 | `lemma` | [NormedAddCommGroup.summable_imp_tendsto_iff_completeSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean/declarations/normedaddcommgroup-summable-imp-tendsto-iff-completespace--9520c5d3d4d250c155f4cce7.md) | 92 | `result-track:9520c5d3d4d250c155f4cce76d9453767f1fa8b847d8c9f4e6d420ecc889750c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
