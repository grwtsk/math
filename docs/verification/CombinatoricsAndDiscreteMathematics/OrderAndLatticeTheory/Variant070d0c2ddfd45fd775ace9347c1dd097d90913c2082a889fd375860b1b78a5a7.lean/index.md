# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Order.Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0a96ef7a5ec9ba51c516670b2590cfa7f5d7a31",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0a96ef7a5ec9ba51c516670b2590cfa7f5d7a31`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Order/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Module` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/declarations/partialorder--c02f788f1b41057f806e5088.md) | 34 | `declaration-track:c02f788f1b41057f806e5088ffb84ffaea264569fd40999658db52393e51961f` |
| 2 | `theorem` | [le_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/declarations/le-def--b5eb0b74a94ec20a855ab17b.md) | 55 | `result-track:b5eb0b74a94ec20a855ab17b347dba421ee52c6f9a43d3c4ea4f502dbd3c5f2b` |
| 3 | `theorem` | [lt_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/declarations/lt-def--f96201c03c9b6efc4943099e.md) | 59 | `result-track:f96201c03c9b6efc4943099e3e136c1bb4ded635b22d6f4c3a6aeb8436a70bed` |
| 4 | `theorem` | [real_le_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/declarations/real-le-real--c59f3ec14255635948d3041c.md) | 65 | `result-track:c59f3ec14255635948d3041cae6cd78e84ee7ddea0a596d3e0fa1a0b9bb6e4b3` |
| 5 | `theorem` | [real_lt_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/declarations/real-lt-real--f15175a9ce7eba5e8260cd86.md) | 69 | `result-track:f15175a9ce7eba5e8260cd8681c66dc210023a655e42cf537f71fe4940d9d094` |
| 6 | `theorem` | [zero_le_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/declarations/zero-le-real--cf148ff381c7259cac1a5098.md) | 74 | `result-track:cf148ff381c7259cac1a509860a625aaa23b9ad3ecf802e7762e313f9e9027d7` |
| 7 | `theorem` | [zero_lt_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/declarations/zero-lt-real--56b886969b7473820f974763.md) | 79 | `result-track:56b886969b7473820f9747631a7b65180f0e3829fbd49e10402b68c1afeedfa1` |
| 8 | `theorem` | [not_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/declarations/not-le-iff--54c9983be078460841fa864c.md) | 83 | `result-track:54c9983be078460841fa864ce051ce5c0cb699a59e05b2bfd2dd01aad0f0631a` |
| 9 | `theorem` | [not_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/declarations/not-lt-iff--d32169eecf1aaf9f37050b3c.md) | 87 | `result-track:d32169eecf1aaf9f37050b3ca5ee1cbd9cc5c5935ddb3532284fd034bf81001d` |
| 10 | `theorem` | [not_le_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/declarations/not-le-zero-iff--db24b60579faa8b2cc0b9150.md) | 91 | `result-track:db24b60579faa8b2cc0b915008764e9bff67ce2dbdb6831158e9f9bd30c6858e` |
| 11 | `theorem` | [not_lt_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/declarations/not-lt-zero-iff--a4a3e497b637cd5baa19d988.md) | 95 | `result-track:a4a3e497b637cd5baa19d988250a555d98767e029c5736d12862dbd942505911` |
| 12 | `theorem` | [eq_re_ofReal_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant070d0c2ddfd45fd775ace9347c1dd097d90913c2082a889fd375860b1b78a5a7.lean/declarations/eq-re-ofreal-le--ccd718892acbf9656bfb92a3.md) | 99 | `result-track:ccd718892acbf9656bfb92a31d09507fe85ba83e444d9f5bf0be0eb162f1a25f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
