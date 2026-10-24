# Verification target: GRWTSK.Algebra.LinearAlgebra.VecUtil.Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dabbeb9c6c96e112ba99c0795fabbb4ccb460a3d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dabbeb9c6c96e112ba99c0795fabbb4ccb460a3d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FailIfNoProgress` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean/declarations/initialize--746e8eda798ed5042bac8c9a.md) | 36 | `declaration-track:746e8eda798ed5042bac8c9a449d9ef05fb45d72c5ac6c43ad713a4def9778ac` |
| 2 | `register_option` | [fuel](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean/declarations/fuel--20048c498198ca8f0a9c3b18.md) | 39 | `declaration-track:20048c498198ca8f0a9c3b188b6ecf612da6c80b12e9401cbabeca497075a43c` |
| 3 | `def` | [getFinVal?](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean/declarations/getfinval--440af23211579f1ed9f08d1b.md) | 47 | `declaration-track:440af23211579f1ed9f08d1bd23a14e0ee8c9286de6cba19754362f5492c60f0` |
| 4 | `def` | [getVecElem](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean/declarations/getvecelem--5c9a486da969e4510f1781a6.md) | 92 | `declaration-track:5c9a486da969e4510f1781a647e0a920fbf4f9ba192b62e37b3565bb89bdd1ad` |
| 5 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean/declarations/macro--013ef8bcc893c4b23d671d8f.md) | 224 | `declaration-track:013ef8bcc893c4b23d671d8f26f3171ba8c4ce00ba287acdda204d3f2c21ca1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
