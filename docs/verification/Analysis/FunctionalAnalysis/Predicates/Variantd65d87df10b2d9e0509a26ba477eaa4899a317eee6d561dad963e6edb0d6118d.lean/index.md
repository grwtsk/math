# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Predicates.Variantd65d87df10b2d9e0509a26ba477eaa4899a317eee6d561dad963e6edb0d6118d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36542ce27c25ccf5209612f2b10e4819109f74d9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Predicates/Variantd65d87df10b2d9e0509a26ba477eaa4899a317eee6d561dad963e6edb0d6118d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantd65d87df10b2d9e0509a26ba477eaa4899a317eee6d561dad963e6edb0d6118d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantd65d87df10b2d9e0509a26ba477eaa4899a317eee6d561dad963e6edb0d6118d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36542ce27c25ccf5209612f2b10e4819109f74d9`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Predicates/Variantd65d87df10b2d9e0509a26ba477eaa4899a317eee6d561dad963e6edb0d6118d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Predicates/Variantd65d87df10b2d9e0509a26ba477eaa4899a317eee6d561dad963e6edb0d6118d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.SemiLocalDefect.WP1.All` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HilbertEnd](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantd65d87df10b2d9e0509a26ba477eaa4899a317eee6d561dad963e6edb0d6118d.lean/declarations/hilbertend--7a658d9bd59e14ba52067469.md) | 21 | `declaration-track:7a658d9bd59e14ba520674691963c9d4a05ef32791577adcd5c423232b8cdcdc` |
| 2 | `def` | [OperatorSelfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantd65d87df10b2d9e0509a26ba477eaa4899a317eee6d561dad963e6edb0d6118d.lean/declarations/operatorselfadjoint--fbf1e57469ad31d01ee62665.md) | 27 | `declaration-track:fbf1e57469ad31d01ee62665660903777a37df43eab7830b17906ff8cde40116` |
| 3 | `def` | [OperatorIdempotent](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantd65d87df10b2d9e0509a26ba477eaa4899a317eee6d561dad963e6edb0d6118d.lean/declarations/operatoridempotent--2e0daab3631bc25441550fe6.md) | 37 | `declaration-track:2e0daab3631bc25441550fe6b149b445d84bec968109a2545baa212919ca3c8b` |
| 4 | `def` | [OperatorNonnegative](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantd65d87df10b2d9e0509a26ba477eaa4899a317eee6d561dad963e6edb0d6118d.lean/declarations/operatornonnegative--ee60dcb61d4790215cf76b52.md) | 45 | `declaration-track:ee60dcb61d4790215cf76b52439c3d637b210a660d8c58fd86a34d170894486e` |
| 5 | `def` | [OperatorLE](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantd65d87df10b2d9e0509a26ba477eaa4899a317eee6d561dad963e6edb0d6118d.lean/declarations/operatorle--6d4bfe7ac14091f38d3db886.md) | 54 | `declaration-track:6d4bfe7ac14091f38d3db886949930f01c5c1a0e123789d67d0930de9f3a722a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
