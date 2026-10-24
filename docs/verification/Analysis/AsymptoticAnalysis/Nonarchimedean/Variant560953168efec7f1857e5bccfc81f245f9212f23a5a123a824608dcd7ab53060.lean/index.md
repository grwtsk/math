# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Nonarchimedean.Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffa841118a49c61b250ea9be0a9faf09f30f8f87",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffa841118a49c61b250ea9be0a9faf09f30f8f87`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.GroupCompletion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Completion` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cauchySeq_prod_of_tendsto_cofinite_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/declarations/cauchyseq-prod-of-tendsto-cofinite-one--f589b88e7bf9c3b838db8532.md) | 39 | `result-track:f589b88e7bf9c3b838db8532d1183dddf2fd1a0686ca0c1bb8dd9df78364ce3b` |
| 2 | `lemma` | [cauchySeq_of_tendsto_div_nhds_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/declarations/cauchyseq-of-tendsto-div-nhds-one--397754ec85d29682b2d82a9e.md) | 63 | `result-track:397754ec85d29682b2d82a9e9cca97f9a1b5337fa4794c45093d0b9848c0c842` |
| 3 | `theorem` | [multipliable_of_tendsto_cofinite_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/declarations/multipliable-of-tendsto-cofinite-one--b236684448cc3d5042053fb5.md) | 89 | `result-track:b236684448cc3d5042053fb5f7dfaddf016c71a26d286560166a1102ae6f5613` |
| 4 | `theorem` | [multipliable_iff_tendsto_cofinite_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/declarations/multipliable-iff-tendsto-cofinite-one--dbd6fd871cc85ac180f0f64f.md) | 98 | `result-track:dbd6fd871cc85ac180f0f64f5ea3f38ecd3e51b119283858f5e1b58451db266a` |
| 5 | `theorem` | [Summable.mul_of_complete_nonarchimedean](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/declarations/summable-mul-of-complete-nonarchimedean--767df8064b3e4d8b9e9411db.md) | 112 | `result-track:767df8064b3e4d8b9e9411db03feb32af7abb61cbc00af0ab93a75a47db49fc5` |
| 6 | `theorem` | [HasSum.mul_of_nonarchimedean](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/declarations/hassum-mul-of-nonarchimedean--a57a697b85a24fb18154b2c2.md) | 120 | `result-track:a57a697b85a24fb18154b2c24fe87db8baf9003ed58399bcdc45925c0efb3e9c` |
| 7 | `theorem` | [Summable.mul_of_nonarchimedean](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/declarations/summable-mul-of-nonarchimedean--e9017441dbd70971fe3eb971.md) | 129 | `result-track:e9017441dbd70971fe3eb971957e90ee8629e1a42249b1ff6a78daea5ca92ae1` |
| 8 | `theorem` | [tsum_mul_tsum_of_nonarchimedean](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant560953168efec7f1857e5bccfc81f245f9212f23a5a123a824608dcd7ab53060.lean/declarations/tsum-mul-tsum-of-nonarchimedean--d6e57789077bd560ce324818.md) | 133 | `result-track:d6e57789077bd560ce32481897b56a672997177627531a8070187daf6fbd2e1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
