# Verification target: GRWTSK.NumberTheory.FundamentalDiscriminant.Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d2be496eac6c11f86f77bb8870f493a6ea7f8df",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d2be496eac6c11f86f77bb8870f493a6ea7f8df`.

Source path: `GRWTSK/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFundamentalDiscr](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/declarations/isfundamentaldiscr--bb8ee953bdaf196a7aee14df.md) | 41 | `declaration-track:bb8ee953bdaf196a7aee14df619694672b7277077a7e7455b1e80833d1b254fb` |
| 2 | `theorem` | [isFundamentalDiscr_def](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/declarations/isfundamentaldiscr-def--ca68b61eaab258028364765b.md) | 47 | `result-track:ca68b61eaab258028364765b29e9528173027175ecf6755466829ded865ee495` |
| 3 | `theorem` | [IsFundamentalDiscr.ne_zero](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/declarations/isfundamentaldiscr-ne-zero--b51477e8eab1336cfa16d629.md) | 52 | `result-track:b51477e8eab1336cfa16d629672143ed58b48ebadd191dd9a149d60c3d4a72c8` |
| 4 | `theorem` | [IsFundamentalDiscr.emod_four_eq_zero_or_one](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/declarations/isfundamentaldiscr-emod-four-eq-zero-or-one--3a64b5d4e6ed8dd67e6d0781.md) | 55 | `result-track:3a64b5d4e6ed8dd67e6d078106d5e1ab5c88bbb63d851a36d72eca63ab556ce8` |
| 5 | `theorem` | [isFundamentalDiscr_iff_squarefree](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/declarations/isfundamentaldiscr-iff-squarefree--2d4ef577dc8a595ba3f301c9.md) | 60 | `result-track:2d4ef577dc8a595ba3f301c9ab69970c5966df5dc0688a13c4804187eeb51add` |
| 6 | `theorem` | [isFundamentalDiscr_iff_forall_prime](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/declarations/isfundamentaldiscr-iff-forall-prime--3dffd9b89534d15092c5fe53.md) | 79 | `result-track:3dffd9b89534d15092c5fe532d9eb82ab71fdb7c1e5c0ff0f8e590a75b47efff` |
| 7 | `theorem` | [isFundamentalDiscr_four_mul_add_one](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/declarations/isfundamentaldiscr-four-mul-add-one--c9c18d838db3be664645991c.md) | 91 | `result-track:c9c18d838db3be664645991c5408cbc67d6ff95775f07ca3fa26e49fb5219bc4` |
| 8 | `theorem` | [isFundamentalDiscr_four_mul](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/declarations/isfundamentaldiscr-four-mul--c94a1e0d0f94d0d5449d952a.md) | 95 | `result-track:c94a1e0d0f94d0d5449d952a3e492b5ab4317afe4eabdc0d18e4402764eac0e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
