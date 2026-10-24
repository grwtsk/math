# Verification target: GRWTSK.Algebra.LinearAlgebra.Boolean.Variant0c45810f5643607e18d8de915b35aa12c56bb54f634b768f04217559067025c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74486bff09867a31291c450d7ced3f7a1c050186",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Boolean/Variant0c45810f5643607e18d8de915b35aa12c56bb54f634b768f04217559067025c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Boolean/Variant0c45810f5643607e18d8de915b35aa12c56bb54f634b768f04217559067025c2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Boolean/Variant0c45810f5643607e18d8de915b35aa12c56bb54f634b768f04217559067025c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74486bff09867a31291c450d7ced3f7a1c050186`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Boolean/Variant0c45810f5643607e18d8de915b35aa12c56bb54f634b768f04217559067025c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Boolean/Variant0c45810f5643607e18d8de915b35aa12c56bb54f634b768f04217559067025c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Algebra.Bool` — import line 7; external provider; requires a separately pinned dependency.
- `Boolean.Algebra.Formula` — import line 8; external provider; requires a separately pinned dependency.
- `Boolean.Algebra.Laws` — import line 9; external provider; requires a separately pinned dependency.
- `Boolean.BDD` — import line 10; external provider; requires a separately pinned dependency.
- `Boolean.Formula` — import line 11; external provider; requires a separately pinned dependency.
- `Boolean.Formula.CNF` — import line 12; external provider; requires a separately pinned dependency.
- `Boolean.Formula.Enumeration` — import line 13; external provider; requires a separately pinned dependency.
- `Boolean.Formula.Eval` — import line 14; external provider; requires a separately pinned dependency.
- `Boolean.Formula.Laws` — import line 15; external provider; requires a separately pinned dependency.
- `Boolean.Formula.Semantics` — import line 16; external provider; requires a separately pinned dependency.
- `Boolean.Formula.Traversal` — import line 17; external provider; requires a separately pinned dependency.
- `Boolean.Tree` — import line 18; external provider; requires a separately pinned dependency.
- `Boolean.Tree.ANF` — import line 19; external provider; requires a separately pinned dependency.
- `Boolean.Tree.CNF` — import line 20; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Compile` — import line 21; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Completeness` — import line 22; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Eval` — import line 23; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Graph` — import line 24; external provider; requires a separately pinned dependency.
- `Boolean.Tree.List` — import line 25; external provider; requires a separately pinned dependency.
- `Boolean.Tree.MatrixEncoding` — import line 26; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Normalize` — import line 27; external provider; requires a separately pinned dependency.
- `Boolean.Tree.OrderedFactor` — import line 28; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Polish` — import line 29; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Size` — import line 30; external provider; requires a separately pinned dependency.
- `Boolean.Tree.SOP` — import line 31; external provider; requires a separately pinned dependency.
- `Boolean.Tree.SOP.Minimize` — import line 32; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Variadic` — import line 33; external provider; requires a separately pinned dependency.
- `Boolean.Matrix` — import line 34; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Count` — import line 35; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Cycle` — import line 36; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Encoding` — import line 37; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Ext` — import line 38; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Lattice` — import line 39; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Operations` — import line 40; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Relation` — import line 41; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Warshall` — import line 42; external provider; requires a separately pinned dependency.
- `Boolean.Runtime` — import line 43; external provider; requires a separately pinned dependency.
- `Boolean.Cube` — import line 44; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
