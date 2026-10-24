# Verification target: GRWTSK.Algebra.Invertible.Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85422d0d7530adddc883065cd80acb8aa9a6501f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean/index.md) · [Full source](../../../../mathematics/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85422d0d7530adddc883065cd80acb8aa9a6501f`.

Source path: `GRWTSK/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invertibleNeg](../../../../mathematics/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean/declarations/invertibleneg--4a8fd37dde067d074e6a5120.md) | 26 | `declaration-track:4a8fd37dde067d074e6a5120e27a8c3add0a928204b63aee59f63a8e20dfad23` |
| 2 | `theorem` | [invOf_neg](../../../../mathematics/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean/declarations/invof-neg--fd6bb61dcf1fcfbfca6657c6.md) | 30 | `result-track:fd6bb61dcf1fcfbfca6657c6e6417313c03f8a723c9b2f43f78d127e55c350d5` |
| 3 | `theorem` | [one_sub_invOf_two](../../../../mathematics/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean/declarations/one-sub-invof-two--2e11d017519532962ab26d05.md) | 35 | `result-track:2e11d017519532962ab26d0563213aaecc6fc65e8c3cb926a9017bdbf8cf4955` |
| 4 | `theorem` | [invOf_two_add_invOf_two](../../../../mathematics/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean/declarations/invof-two-add-invof-two--058d6ce074b87afee77783db.md) | 40 | `result-track:058d6ce074b87afee77783dbf0876728c8eac44754a82e3f17c19dbdd7b46d6a` |
| 5 | `theorem` | [pos_of_invertible_cast](../../../../mathematics/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean/declarations/pos-of-invertible-cast--b1615a02ec0912bbaef10f87.md) | 43 | `result-track:b1615a02ec0912bbaef10f8794286a61ebb9e3d13a61f01ef23079322a91b67b` |
| 6 | `theorem` | [invOf_add_invOf](../../../../mathematics/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean/declarations/invof-add-invof--aae4bdebff79ef3991abac10.md) | 47 | `result-track:aae4bdebff79ef3991abac1053f50d0627e8f34a29b2d80556339fa9f18b383b` |
| 7 | `theorem` | [invOf_sub_invOf](../../../../mathematics/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean/declarations/invof-sub-invof--3e229d5dafee1b4fc7385444.md) | 52 | `result-track:3e229d5dafee1b4fc73854449e42f68aebfd88843e83a42f924c19564526b1a0` |
| 8 | `theorem` | [Ring.inverse_add_inverse](../../../../mathematics/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean/declarations/ring-inverse-add-inverse--5948f1c517ce8642fad1e58a.md) | 57 | `result-track:5948f1c517ce8642fad1e58a910af075ec685cf440bcbb4a5af82a4bac45a0ae` |
| 9 | `theorem` | [Ring.inverse_sub_inverse](../../../../mathematics/Algebra/Invertible/Variantbb9457610433f4150219010affce7843235275aa604ac53fe93e0f5da2585c92.lean/declarations/ring-inverse-sub-inverse--c87b27a94f7dfe3f4100f4a4.md) | 68 | `result-track:c87b27a94f7dfe3f4100f4a4780c72178669c79d3213193cb019f06d5a128961` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
