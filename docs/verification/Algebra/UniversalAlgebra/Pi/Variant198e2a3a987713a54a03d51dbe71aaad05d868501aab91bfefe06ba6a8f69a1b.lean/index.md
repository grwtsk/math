# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6e6f36941a8ea230936e81d0d05bbc53fed3641",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6e6f36941a8ea230936e81d0d05bbc53fed3641`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.SMul` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.IsSMulRegular.pi](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean/declarations/root-issmulregular-pi--b83e919791048dc49e40ee66.md) | 27 | `result-track:b83e919791048dc49e40ee6627a0ef18a5f9db4e2d5801c2980b22756c714cf9` |
| 2 | `instance` | [smulWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean/declarations/smulwithzero--bbcf583fd77ca4fef984051e.md) | 31 | `declaration-track:bbcf583fd77ca4fef984051e776a1a7c36445a00ebb2358adcf8885064f1d2a0` |
| 3 | `instance` | [smulWithZero'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean/declarations/smulwithzero--52a94a551dfe9d27531bca8e.md) | 37 | `declaration-track:52a94a551dfe9d27531bca8e1026112985e747a8029c9c227765f94c700d48b0` |
| 4 | `instance` | [mulActionWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean/declarations/mulactionwithzero--d8a7cf5a5cfc4cdaca0601de.md) | 43 | `declaration-track:d8a7cf5a5cfc4cdaca0601defcd530110593d4f357f92fbbbdda9a33cc9d7d83` |
| 5 | `instance` | [mulActionWithZero'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean/declarations/mulactionwithzero--ceac87eb49b5a6674b3810af.md) | 47 | `declaration-track:ceac87eb49b5a6674b3810af67254642bb53822e200723f2994c48e36e6ce42b` |
| 6 | `instance` | [module](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean/declarations/module--56b1e163cff0eec18aafbe2f.md) | 53 | `declaration-track:56b1e163cff0eec18aafbe2f5523781c9b50dd52169506e30af7b5e62d302b8b` |
| 7 | `instance` | [Function.module](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean/declarations/function-module--3c2d6075a0f5fc559a217732.md) | 68 | `declaration-track:3c2d6075a0f5fc559a217732d14432803b61507b94c75b8d54be3611b8f680f0` |
| 8 | `instance` | [module'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.lean/declarations/module--ac0dbff6979b1669588ab31a.md) | 74 | `declaration-track:ac0dbff6979b1669588ab31abdc76e8900ee0b746f7e211e07598755f4f592a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
