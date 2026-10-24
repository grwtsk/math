# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.PID.Variantbd6328ae57f9b297b13823161dc53a5f66565ebd91ff8aa4a5926475ba8f1061

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef8e0ef50be77e22cf4b84baa097b43e04e7d214",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/PID/Variantbd6328ae57f9b297b13823161dc53a5f66565ebd91ff8aa4a5926475ba8f1061.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/PID/Variantbd6328ae57f9b297b13823161dc53a5f66565ebd91ff8aa4a5926475ba8f1061.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/PID/Variantbd6328ae57f9b297b13823161dc53a5f66565ebd91ff8aa4a5926475ba8f1061.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef8e0ef50be77e22cf4b84baa097b43e04e7d214`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/PID/Variantbd6328ae57f9b297b13823161dc53a5f66565ebd91ff8aa4a5926475ba8f1061.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/PID/Variantbd6328ae57f9b297b13823161dc53a5f66565ebd91ff8aa4a5926475ba8f1061.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.ClassNumber` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Cyclotomic.Rat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Cyclotomic.Embeddings` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [three_pid](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/PID/Variantbd6328ae57f9b297b13823161dc53a5f66565ebd91ff8aa4a5926475ba8f1061.lean/declarations/three-pid--dc5c8c83b28b76bcf25ba27a.md) | 38 | `result-track:dc5c8c83b28b76bcf25ba27a6d3b0fd68601f1ea060702ebc2beab03d3259ec8` |
| 2 | `theorem` | [five_pid](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/PID/Variantbd6328ae57f9b297b13823161dc53a5f66565ebd91ff8aa4a5926475ba8f1061.lean/declarations/five-pid--f8932b51119c26684d114fca.md) | 52 | `result-track:f8932b51119c26684d114fcab5e6f718ba2aaf153936393548dd6b1fcca57b3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
