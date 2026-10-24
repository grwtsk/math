# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Selmer.Variant455c906b532e6c637e866bbca84d32667619773978a1ae968ba1da5c7abc43d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "366c558bd60336a65f9cbc7ea9edeeecb707ac10",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Selmer/Variant455c906b532e6c637e866bbca84d32667619773978a1ae968ba1da5c7abc43d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Selmer/Variant455c906b532e6c637e866bbca84d32667619773978a1ae968ba1da5c7abc43d8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Selmer/Variant455c906b532e6c637e866bbca84d32667619773978a1ae968ba1da5c7abc43d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `366c558bd60336a65f9cbc7ea9edeeecb707ac10`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Selmer/Variant455c906b532e6c637e866bbca84d32667619773978a1ae968ba1da5c7abc43d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Selmer/Variant455c906b532e6c637e866bbca84d32667619773978a1ae968ba1da5c7abc43d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.UnitTrinomial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.GaussLemma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Selmer/Variant455c906b532e6c637e866bbca84d32667619773978a1ae968ba1da5c7abc43d8.lean/declarations/macro-rules--dd7994855ad581f89a48f317.md) | 37 | `declaration-track:dd7994855ad581f89a48f317c52d00ed2ed6546457fec5e5824c43f8483a42c2` |
| 2 | `theorem` | [X_pow_sub_X_sub_one_irreducible_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Selmer/Variant455c906b532e6c637e866bbca84d32667619773978a1ae968ba1da5c7abc43d8.lean/declarations/x-pow-sub-x-sub-one-irreducible-aux--ac47dd3c8e31e2054e701c84.md) | 41 | `result-track:ac47dd3c8e31e2054e701c8425ccf9e0fe6d8593f34b48affe5287f2c27e711a` |
| 3 | `theorem` | [X_pow_sub_X_sub_one_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Selmer/Variant455c906b532e6c637e866bbca84d32667619773978a1ae968ba1da5c7abc43d8.lean/declarations/x-pow-sub-x-sub-one-irreducible--e7b924c8a1f743342838a6bb.md) | 59 | `result-track:e7b924c8a1f743342838a6bb4106e4c617f3a93671fa3cb08b79cc4901f8c895` |
| 4 | `theorem` | [X_pow_sub_X_sub_one_irreducible_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Selmer/Variant455c906b532e6c637e866bbca84d32667619773978a1ae968ba1da5c7abc43d8.lean/declarations/x-pow-sub-x-sub-one-irreducible-rat--7423cc3be9fac1d8271f3800.md) | 81 | `result-track:7423cc3be9fac1d8271f38000b1057faba3ef720d0b164611f150c9ec8e3cce2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
