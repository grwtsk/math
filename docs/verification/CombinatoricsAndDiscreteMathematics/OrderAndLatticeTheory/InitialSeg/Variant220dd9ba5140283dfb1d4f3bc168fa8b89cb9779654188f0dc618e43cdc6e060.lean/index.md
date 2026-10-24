# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.InitialSeg.Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b099907d102108fcb2eb427272a1f994b2ffd0e5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b099907d102108fcb2eb427272a1f994b2ffd0e5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.InitialSeg` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Limit` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [apply_covBy_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/declarations/apply-covby-apply-iff--0cb4a65ecea9fdef4a5ae0cf.md) | 22 | `result-track:0cb4a65ecea9fdef4a5ae0cfa3f3cf87d133de056b480a78ec646bb3acb27c3e` |
| 2 | `theorem` | [apply_wCovBy_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/declarations/apply-wcovby-apply-iff--a2b7c2b8cbe38f36de3157bf.md) | 26 | `result-track:a2b7c2b8cbe38f36de3157bf146e8309eb9d1550575d8dc41d8d79aa0f3c2d81` |
| 3 | `theorem` | [map_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/declarations/map-succ--86f37da6a392b09cdb9cea4d.md) | 29 | `result-track:86f37da6a392b09cdb9cea4d06abd0c62546022c2ac18828706149c5e05b4e6c` |
| 4 | `theorem` | [map_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/declarations/map-pred--6d14ff783631740a652a6c0c.md) | 33 | `result-track:6d14ff783631740a652a6c0cfedb9b70b13329204c5c2435187b71001763f64e` |
| 5 | `theorem` | [isSuccPrelimit_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/declarations/issuccprelimit-apply-iff--9cb3686be578297a5e244d94.md) | 38 | `result-track:9cb3686be578297a5e244d9405e2eb523c57ca8426935685246d677a92b1c6f1` |
| 6 | `theorem` | [isSuccLimit_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/declarations/issucclimit-apply-iff--9e1f65e3faf6756355b38335.md) | 47 | `result-track:9e1f65e3faf6756355b38335cb6baa5d0463da3f1d198b7f043c5b6a5b9114af` |
| 7 | `theorem` | [apply_covBy_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/declarations/apply-covby-apply-iff--139624ed9d505efe5f0df104.md) | 58 | `result-track:139624ed9d505efe5f0df104b961044ab575eacae72b399fd1fcd657f5232147` |
| 8 | `theorem` | [apply_wCovBy_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/declarations/apply-wcovby-apply-iff--c393bcf56895ff9c15dc80cb.md) | 62 | `result-track:c393bcf56895ff9c15dc80cb7b61a8e443695764d1991af758cfdd1d4a011cad` |
| 9 | `theorem` | [map_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/declarations/map-succ--45ea32a3ed89975c43a8f5b0.md) | 65 | `result-track:45ea32a3ed89975c43a8f5b0aea63d3942879e32147d1bf729f9be2f45b562ba` |
| 10 | `theorem` | [map_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/declarations/map-pred--c5d363200210073aaa27070c.md) | 69 | `result-track:c5d363200210073aaa27070c12ff50653e9ce56a07c35b0a46a0fa0b5b0208d9` |
| 11 | `theorem` | [isSuccPrelimit_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/declarations/issuccprelimit-apply-iff--caf1baad650c50b6a7667ffd.md) | 74 | `result-track:caf1baad650c50b6a7667ffd76f55f97e0f0a9743b3c2b833e9d2fef5511feda` |
| 12 | `theorem` | [isSuccLimit_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060.lean/declarations/issucclimit-apply-iff--bbd7e0aa27cbfe632b19daa5.md) | 78 | `result-track:bbd7e0aa27cbfe632b19daa59b434bb1d8b483c3388da0063bfc700796feffe5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
