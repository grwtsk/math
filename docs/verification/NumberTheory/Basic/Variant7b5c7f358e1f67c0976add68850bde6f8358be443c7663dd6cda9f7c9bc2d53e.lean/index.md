# Verification target: GRWTSK.NumberTheory.Basic.Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bd99569ade2624419a996ddd1f7add9c7494605",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bd99569ade2624419a996ddd1f7add9c7494605`.

Source path: `GRWTSK/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.DenomsClearable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Liouville](../../../../mathematics/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean/declarations/liouville--f1f71880af137386062daccb.md) | 39 | `declaration-track:f1f71880af137386062daccb6846009fd33dd6162522f691763a31747ed30874` |
| 2 | `theorem` | [irrational](../../../../mathematics/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean/declarations/irrational--72736d15018aa8d723351382.md) | 44 | `result-track:72736d15018aa8d723351382c2d0cd650c9f936ddbca21993a7452370622fcff` |
| 3 | `theorem` | [exists_one_le_pow_mul_dist](../../../../mathematics/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean/declarations/exists-one-le-pow-mul-dist--58322095b255bb72956d123a.md) | 99 | `result-track:58322095b255bb72956d123a40392a1be7e137fb99acc5899007cb804a046385` |
| 4 | `theorem` | [exists_pos_real_of_irrational_root](../../../../mathematics/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean/declarations/exists-pos-real-of-irrational-root--e6bcf93fc543f71cd47848bb.md) | 129 | `result-track:e6bcf93fc543f71cd47848bba33cc0125f8763a2c44608ab56a055833c7b892f` |
| 5 | `theorem` | [transcendental](../../../../mathematics/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean/declarations/transcendental--9ff048f526cfad4f3349e2e4.md) | 182 | `result-track:9ff048f526cfad4f3349e2e41c44d8cede199612026095b1877231f5a92e20a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
