# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Expr.Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79d603a4a17197918c58c0a7906bbbdda19e6174",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79d603a4a17197918c58c0a7906bbbdda19e6174`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Core.Id` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Core.IdElements.Digest` — import line 9; external provider; requires a separately pinned dependency.
- `Mathematics.Extractor.ExprElements.ExprId` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BinderClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean/declarations/binderclass--cb22ac9421833533b3a4b9a8.md) | 29 | `declaration-track:cb22ac9421833533b3a4b9a862e6e07fefc01c0b956d0e6146ad63faeb4f4506` |
| 2 | `inductive` | [CanonicalLevel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean/declarations/canonicallevel--1271edcc41ba0dcf5b5aa8c2.md) | 36 | `declaration-track:1271edcc41ba0dcf5b5aa8c2d7f607bdb4cf26cb50fdd46f00a0c37543f162e9` |
| 3 | `inductive` | [CanonicalLiteral](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean/declarations/canonicalliteral--db163f14a90ae0deee3d2b9e.md) | 46 | `declaration-track:db163f14a90ae0deee3d2b9e9d438feb4d7fcf0c85bb2e87a33ea301b43893bf` |
| 4 | `inductive` | [CanonicalExpr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean/declarations/canonicalexpr--3e43479b683258f4c124bae4.md) | 53 | `declaration-track:3e43479b683258f4c124bae42f2b1280fe85043a522d6087cf022bca9a9d11de` |
| 5 | `def` | [CanonicalExpr.childIds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean/declarations/canonicalexpr-childids--25137768476ea90161c48403.md) | 71 | `declaration-track:25137768476ea90161c48403da9b7c3d01b1a8efbe83d4ea64db20b4c3272111` |
| 6 | `structure` | [PresentationVariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean/declarations/presentationvariant--fa64de3223da28c1750fff41.md) | 80 | `declaration-track:fa64de3223da28c1750fff413708302ff9ab26731d16015f6ec8efd376b1082a` |
| 7 | `structure` | [ExpressionRecord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean/declarations/expressionrecord--d51d1c88f7461b23a081e2e5.md) | 85 | `declaration-track:d51d1c88f7461b23a081e2e54bb5dc160cdc9525abab0ff48458fa0d63405cb7` |
| 8 | `structure` | [ExprPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant56dd0bf57b54f2249a9581150710705918387103d6fabfc2c1e5f2ff26376c1e.lean/declarations/exprpath--37ae0cbaa10632a794a36f97.md) | 95 | `declaration-track:37ae0cbaa10632a794a36f972734a0c461fb142eb22cc99c7323e9cda5754c7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
