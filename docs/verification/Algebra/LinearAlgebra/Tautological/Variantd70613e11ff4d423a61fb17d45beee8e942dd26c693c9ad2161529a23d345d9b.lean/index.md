# Verification target: GRWTSK.Algebra.LinearAlgebra.Tautological.Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68720e2830aedd62cbc3cdbe504d70baa52ef6ed",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Tautological/Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68720e2830aedd62cbc3cdbe504d70baa52ef6ed`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Tautological/Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Tautological/Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [tautological.R](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b.lean/declarations/tautological-r--08b33fd8442cf94be9b5cd8a.md) | 35 | `declaration-track:08b33fd8442cf94be9b5cd8a9f2ff0308905da6a3b9d8a8b22b02facdeff66e4` |
| 2 | `def` | [tautologicalRelations](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b.lean/declarations/tautologicalrelations--f902c863445783aab05bb062.md) | 41 | `declaration-track:f902c863445783aab05bb0623a35cde852b82d1971b48b6d764402da03cc95c8` |
| 3 | `def` | [tautologicalRelationsSolutionEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b.lean/declarations/tautologicalrelationssolutionequiv--2c9119fc54fecfbb591618e5.md) | 50 | `declaration-track:2c9119fc54fecfbb591618e5b205a2d7d683bdad5d5d6c388836d6bb558725a9` |
| 4 | `def` | [tautologicalSolution](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b.lean/declarations/tautologicalsolution--7a9152104851652585584c3c.md) | 70 | `declaration-track:7a9152104851652585584c3cb34f529df9c7ace101de117b7836a23b42352495` |
| 5 | `def` | [tautologicalSolutionIsPresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b.lean/declarations/tautologicalsolutionispresentationcore--8b56c0ddaaad07e52f1ab2af.md) | 74 | `declaration-track:8b56c0ddaaad07e52f1ab2af5df6cce530e241e5b39f3f5726d35233e99ad4a1` |
| 6 | `lemma` | [tautologicalSolution_isPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b.lean/declarations/tautologicalsolution-ispresentation--e3950ccf66b4c18be78d1205.md) | 82 | `result-track:e3950ccf66b4c18be78d12059a6f307e01f92ffa6feebb63334d7b6e093a51e5` |
| 7 | `def` | [tautological](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variantd70613e11ff4d423a61fb17d45beee8e942dd26c693c9ad2161529a23d345d9b.lean/declarations/tautological--d5afb8c5b84001160d8cc807.md) | 91 | `declaration-track:d5afb8c5b84001160d8cc807fb4d5c983f3056125ba305252933f1a7d2034f7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
