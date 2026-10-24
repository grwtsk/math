# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Enumerate.Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0c43519098f5ea661cf658cfcca8d3b5a720e4f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0c43519098f5ea661cf658cfcca8d3b5a720e4f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Insert` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [enumerate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661.lean/declarations/enumerate--0ce9f557cbb02d2da4b1b4df.md) | 32 | `declaration-track:0ce9f557cbb02d2da4b1b4df1321473434324697cc4b4818ec0b1a964c1167ac` |
| 2 | `theorem` | [enumerate_eq_none_of_sel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661.lean/declarations/enumerate-eq-none-of-sel--1c93e180072366f41a995c28.md) | 38 | `result-track:1c93e180072366f41a995c28a0f3d521611ad14a70ca4f677dca9748a1ac8203` |
| 3 | `theorem` | [enumerate_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661.lean/declarations/enumerate-eq-none--7e0dc050a36d70da56c3d64a.md) | 42 | `result-track:7e0dc050a36d70da56c3d64ae785a9c59a1c0584b4eef148595c26e96b7b0a26` |
| 4 | `theorem` | [enumerate_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661.lean/declarations/enumerate-mem--dbba30b3a741caf0b906ddcc.md) | 56 | `result-track:dbba30b3a741caf0b906ddccc0c536466aab840fcb5e237aa0afb9eba1825077` |
| 5 | `theorem` | [enumerate_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661.lean/declarations/enumerate-inj--4206885b91f8ff747944310b.md) | 68 | `result-track:4206885b91f8ff747944310bff4bbf27c84f40efcbd610a77b1018882ee8310d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
