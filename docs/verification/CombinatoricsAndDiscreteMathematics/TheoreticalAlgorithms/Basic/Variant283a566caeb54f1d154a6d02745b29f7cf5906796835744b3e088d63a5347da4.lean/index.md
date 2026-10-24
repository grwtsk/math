# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35ef1b46111255c51ad11bc3b88c7fbf2b000e03",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35ef1b46111255c51ad11bc3b88c7fbf2b000e03`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FormulaTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean/declarations/formulatree--fd1cb64581ee644e2f3138b2.md) | 23 | `declaration-track:fd1cb64581ee644e2f3138b2e8b194898260d22d1819e20e61d65c14b2d7fbce` |
| 2 | `def` | [FormulaTree.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean/declarations/formulatree-eval--15f406a27261e1516552c4bd.md) | 36 | `declaration-track:15f406a27261e1516552c4bd41dcd026ef02cd03fb73cdc7e03ef7799c97af11` |
| 3 | `def` | [FormulaTree.toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean/declarations/formulatree-toformula--9f7ba13fd6d23a4b77eb4779.md) | 48 | `declaration-track:9f7ba13fd6d23a4b77eb47796b6effbb0e577cab2f91b5e61bfc1034225f7b15` |
| 4 | `theorem` | [FormulaTree.eval_toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean/declarations/formulatree-eval-toformula--47d16e6fb8b022aa3b3f4f49.md) | 59 | `result-track:47d16e6fb8b022aa3b3f4f49590d683dd814984526ddecc16cfe3dd6c54d7b15` |
| 5 | `def` | [FormulaTree.nodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean/declarations/formulatree-nodecount--01d9e4ee7d468d47c4b5864c.md) | 75 | `declaration-track:01d9e4ee7d468d47c4b5864c5734f739f251a1e733273b3453244c2010daeddd` |
| 6 | `def` | [FormulaTree.conjList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean/declarations/formulatree-conjlist--e1582e075f76de275de3be04.md) | 87 | `declaration-track:e1582e075f76de275de3be04f39ab8960cbd0ac6f760d3a8fcd8c3cec6d2fbc8` |
| 7 | `def` | [FormulaTree.disjList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean/declarations/formulatree-disjlist--35666e1199c70a0a2acd2987.md) | 92 | `declaration-track:35666e1199c70a0a2acd29874c128426476e024958d48cae4b3786901807e495` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
