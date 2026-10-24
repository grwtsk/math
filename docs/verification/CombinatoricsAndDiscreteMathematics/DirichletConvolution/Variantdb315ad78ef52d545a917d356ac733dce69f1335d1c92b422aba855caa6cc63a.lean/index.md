# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirichletConvolution.Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a33a2658eb12d9b7925bff25b892fde47b246bb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a33a2658eb12d9b7925bff25b892fde47b246bb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.MultiplicativeFunction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatDivisors` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletConv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a.lean/declarations/dirichletconv--90ff405b6842ebddd268f4b0.md) | 16 | `declaration-track:90ff405b6842ebddd268f4b0699b2ebcdcdd9de24286299440f3849befe77f85` |
| 2 | `def` | [dirichletEpsilon](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a.lean/declarations/dirichletepsilon--d3c347a80f7b0439c0c16469.md) | 21 | `declaration-track:d3c347a80f7b0439c0c16469e282ec2138e8b2aa9e8b1f9d5851e655e041ccce` |
| 3 | `theorem` | [dirichletConv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a.lean/declarations/dirichletconv-apply--e71f10d71a0f54f779473d7d.md) | 25 | `result-track:e71f10d71a0f54f779473d7d28456740b0df612bcf88ce45ff443105f5b81f93` |
| 4 | `theorem` | [dirichletEpsilon_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a.lean/declarations/dirichletepsilon-one--d6739f01f515589c04bcabc9.md) | 33 | `result-track:d6739f01f515589c04bcabc9739c16699d7b13c55960e6a871f0ebd31ae543b7` |
| 5 | `theorem` | [dirichletEpsilon_of_ne_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a.lean/declarations/dirichletepsilon-of-ne-one--1e9120aca1f1a1400f3d6a29.md) | 38 | `result-track:1e9120aca1f1a1400f3d6a297638526f9439202a80c09801c7207ca09721d8d0` |
| 6 | `theorem` | [dirichletConv_epsilon_left_at_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a.lean/declarations/dirichletconv-epsilon-left-at-one--c60d4cabf06fd19d11aa911b.md) | 45 | `result-track:c60d4cabf06fd19d11aa911bd3210d9a1d3aad39ab7c87d84382f3f2bab0f135` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
