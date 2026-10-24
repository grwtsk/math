# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Antidiagonal.Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3cc6f813d245a45c884b19d2dd56e3239e7df0c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3cc6f813d245a45c884b19d2dd56e3239e7df0c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NatAntidiagonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Antidiagonal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean/declarations/antidiagonal--d0b586d3002137297b7c4809.md) | 28 | `declaration-track:d0b586d3002137297b7c4809d882433cbabe490c36a63f9d9c489b8bdb9d9984` |
| 2 | `instance` | [instHasAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean/declarations/insthasantidiagonal--ac0dd8d9e774bae2b78830fe.md) | 34 | `declaration-track:ac0dd8d9e774bae2b78830fe625af323a7d17e5a4e264709999953e1832830d6` |
| 3 | `theorem` | [antidiagonal_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean/declarations/antidiagonal-zero--f33e5cb9883945fbe1563025.md) | 42 | `result-track:f33e5cb9883945fbe1563025f96b7ffe048b5b46201a556f43d3be2f4d0690d8` |
| 4 | `theorem` | [prod_antidiagonal_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean/declarations/prod-antidiagonal-swap--db4d8c0a50f8232d34f6b782.md) | 45 | `result-track:db4d8c0a50f8232d34f6b78282b7cbc95306e2c34058616e45fbb11ae1486710` |
| 5 | `theorem` | [antidiagonal_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265.lean/declarations/antidiagonal-single--8f71d85297a3afda93f4b5b2.md) | 51 | `result-track:8f71d85297a3afda93f4b5b24048a1cd59fc0b786d83c9d2baaa3c1e0354d12b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
