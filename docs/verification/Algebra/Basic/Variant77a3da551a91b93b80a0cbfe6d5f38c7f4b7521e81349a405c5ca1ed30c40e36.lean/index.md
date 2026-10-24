# Verification target: GRWTSK.Algebra.Basic.Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08a94ca546b1b67ec27273366b31e6cb43312908",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08a94ca546b1b67ec27273366b31e6cb43312908`.

Source path: `GRWTSK/Algebra/Basic/Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Int` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsDiscrete](../../../../mathematics/Algebra/Basic/Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36.lean/declarations/isdiscrete--7fc33e4b83cd30db0cd50ee1.md) | 44 | `declaration-track:7fc33e4b83cd30db0cd50ee1320b886048244f9b34a0b825c29a2212c6d15cc8` |
| 2 | `lemma` | [IsDiscrete.surj](../../../../mathematics/Algebra/Basic/Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36.lean/declarations/isdiscrete-surj--433612c1b7f2b3ec69aedcb7.md) | 50 | `result-track:433612c1b7f2b3ec69aedcb7445210de907ce7c1738f73d7ff6e42ec292be2ee` |
| 3 | `lemma` | [isDiscrete_iff_surjective](../../../../mathematics/Algebra/Basic/Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36.lean/declarations/isdiscrete-iff-surjective--db8535dc7a92c0e2d91eed3e.md) | 58 | `result-track:db8535dc7a92c0e2d91eed3e90a32819d6f562ef565c9671a8aaa7449d8bdfdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
