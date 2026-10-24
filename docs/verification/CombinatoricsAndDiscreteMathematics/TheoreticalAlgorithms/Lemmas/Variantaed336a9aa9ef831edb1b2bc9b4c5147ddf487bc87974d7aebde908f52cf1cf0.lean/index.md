# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eb5d83e4427118c39910a14598a40e7cc70970d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eb5d83e4427118c39910a14598a40e7cc70970d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.String.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Alias` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [congr_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0.lean/declarations/congr-append--be569d8948f790d3015ebfb8.md) | 17 | `result-track:be569d8948f790d3015ebfb8dfefb34024f978d75968bf4fde53f43c36e189d4` |
| 2 | `lemma` | [length_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0.lean/declarations/length-replicate--96c70f543c38a7119e85d604.md) | 20 | `result-track:96c70f543c38a7119e85d60452f8f36e7d2208cb13daae1bea8a1e1e15f24650` |
| 3 | `lemma` | [length_eq_list_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0.lean/declarations/length-eq-list-length--e285c0b425236c0cef101ab4.md) | 23 | `result-track:e285c0b425236c0cef101ab4c0373dfb600deb502c5e4fe2d7806ca7a6d2cd78` |
| 4 | `lemma` | [length_leftpad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0.lean/declarations/length-leftpad--6cd15d6d16ee611523bf841b.md) | 28 | `result-track:6cd15d6d16ee611523bf841bba929c1369dc541a609ffc880f5f84f3ab33233d` |
| 5 | `lemma` | [leftpad_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0.lean/declarations/leftpad-prefix--e88a9b01db1b52cc207b3fa9.md) | 35 | `result-track:e88a9b01db1b52cc207b3fa9499e5134d542cc98a702eacd6e0152bca44dcc4a` |
| 6 | `lemma` | [leftpad_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0.lean/declarations/leftpad-suffix--2c6ae5e6e5e4078b1b5dd549.md) | 38 | `result-track:2c6ae5e6e5e4078b1b5dd549070e4acd2222b4d91a8ce65f50972ccc3d7be6b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
