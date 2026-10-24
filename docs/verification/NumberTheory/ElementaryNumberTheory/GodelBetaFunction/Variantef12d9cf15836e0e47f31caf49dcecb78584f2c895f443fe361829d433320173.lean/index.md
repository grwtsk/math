# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.GodelBetaFunction.Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01807462efb94c54814f7abbe681e45ff6bf38d7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01807462efb94c54814f7abbe681e45ff6bf38d7`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.ModEq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ChineseRemainder` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pairing` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [coprime_mul_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean/declarations/coprime-mul-succ--ba9effccdf154a4842bc63b3.md) | 49 | `result-track:ba9effccdf154a4842bc63b3f45c8417fbfeb634d6e06ec68029d4655e90ee98` |
| 2 | `def` | [supOfSeq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean/declarations/supofseq--fd5c13ca39451d4f8d9d027f.md) | 63 | `declaration-track:fd5c13ca39451d4f8d9d027fff2cf1ad0b5a1f2f3917fdf91867810d1656e1da` |
| 3 | `def` | [coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean/declarations/coprimes--39b501aebc5248d7f9ef81c7.md) | 65 | `declaration-track:39b501aebc5248d7f9ef81c7e3d4a3b6372bba05c7cc33b6de237ac26d66b2d1` |
| 4 | `lemma` | [coprimes_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean/declarations/coprimes-lt--55ae9194161d4ae5ce748279.md) | 67 | `result-track:55ae9194161d4ae5ce748279e621e684a92e445e5ab234ec1a275e60bb917545` |
| 5 | `lemma` | [pairwise_coprime_coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean/declarations/pairwise-coprime-coprimes--010bc8ccf21fba333d7dbcfc.md) | 76 | `result-track:010bc8ccf21fba333d7dbcfc711e13dfac05fb7b11e48fb37749bd5abdc1e219` |
| 6 | `def` | [beta](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean/declarations/beta--a76dd4ead348fb6d4efd29db.md) | 88 | `declaration-track:a76dd4ead348fb6d4efd29dbd1f709cdd2750c5a73799381ede141324a37cee4` |
| 7 | `def` | [unbeta](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean/declarations/unbeta--db0d2a44fcdec910c811acc8.md) | 92 | `declaration-track:db0d2a44fcdec910c811acc88478ebcd60a3a5ea9a69544641d81a6977d3afeb` |
| 8 | `lemma` | [beta_unbeta_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variantef12d9cf15836e0e47f31caf49dcecb78584f2c895f443fe361829d433320173.lean/declarations/beta-unbeta-coe--90b983d40351edabba69ce6b.md) | 99 | `result-track:90b983d40351edabba69ce6bf89c76a10d44dfb0ee7f81b46f03064e880eb93e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
