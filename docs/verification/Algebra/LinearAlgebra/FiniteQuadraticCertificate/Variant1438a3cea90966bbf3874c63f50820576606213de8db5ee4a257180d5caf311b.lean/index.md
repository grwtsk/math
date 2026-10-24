# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteQuadraticCertificate.Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21f4897705c4c6d98068eadaa2db68eaa34e95cf",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21f4897705c4c6d98068eadaa2db68eaa34e95cf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/quadratic--92ed4efe855492be3c7e5daf.md) | 28 | `declaration-track:92ed4efe855492be3c7e5daf0c2c7283178f9c1bc626e01e073ce492f62cc0ad` |
| 2 | `structure` | [Problem](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/problem--727711a5f3aa79a546a85b6a.md) | 31 | `declaration-track:727711a5f3aa79a546a85b6abd159e65360492fdbf2a30a10204d6d7c6ddeda5` |
| 3 | `def` | [Problem.Admissible](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/problem-admissible--f2d24a0d1fa9c4a77ec14e32.md) | 37 | `declaration-track:f2d24a0d1fa9c4a77ec14e3210e6cababffb3a7c53af67bf855403efbdd14ca9` |
| 4 | `structure` | [Certificate](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/certificate--39874bcc2fee58d5eb7c46fe.md) | 42 | `declaration-track:39874bcc2fee58d5eb7c46fef835a044b76b3be8dd9a5dfb61e6f785f6c26786` |
| 5 | `def` | [Valid](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/valid--a8e77618d241cac5b3357d0b.md) | 48 | `declaration-track:a8e77618d241cac5b3357d0b177ff6686961952bc3b23773ea1d223fef675031` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/instance--1d195dc430a985191f6c8991.md) | 54 | `declaration-track:1d195dc430a985191f6c8991f1c98667d103317e68f0abb1ab3051178dde875e` |
| 7 | `def` | [check](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/check--e125a0f04d5549d6ddf91404.md) | 59 | `declaration-track:e125a0f04d5549d6ddf91404492c860ca9c0f4a4dc254e00168e635040ea19cd` |
| 8 | `theorem` | [quadratic_add](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/quadratic-add--7901d2ee1c4a67c2a9b8cde7.md) | 63 | `result-track:7901d2ee1c4a67c2a9b8cde7128f093aa6e9e4e0b8b1c62212b125e6ee447db4` |
| 9 | `theorem` | [quadratic_smul](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/quadratic-smul--a3f3e51310c5e6787c746877.md) | 68 | `result-track:a3f3e51310c5e6787c74687740dbdb71b16c66d059641e44c83ad93404b55ae5` |
| 10 | `theorem` | [quadratic_sum](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/quadratic-sum--4f9baa4d410e2698bcbd370e.md) | 73 | `result-track:4f9baa4d410e2698bcbd370e2d3b9ef83075d190e291e31704c87c61cc6070ec` |
| 11 | `theorem` | [gram_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/gram-nonnegative--da031ea061d6f191f6b156bc.md) | 79 | `result-track:da031ea061d6f191f6b156bc3c3e3fa269a039e84b0a5ec1ef43686442fbdb25` |
| 12 | `theorem` | [sound](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/sound--dcee2aba34acf2271c092f19.md) | 86 | `result-track:dcee2aba34acf2271c092f1944a8bb8619fd276ed91e248cc44459f45691a5e2` |
| 13 | `theorem` | [check_sound](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/check-sound--793ddf6552a927d12be52f1e.md) | 100 | `result-track:793ddf6552a927d12be52f1e89a92387342a82722c611428a680603f1400ac05` |
| 14 | `def` | [congruence](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/congruence--030b5f6c6502b3e8f01840b4.md) | 110 | `declaration-track:030b5f6c6502b3e8f01840b492395dbe8065828e9857305c6c127c51a7633fc5` |
| 15 | `def` | [Problem.pullback](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/problem-pullback--e5aef8449f2835f9e8202b1c.md) | 116 | `declaration-track:e5aef8449f2835f9e8202b1cbc8bfc5cd6438d5b66ab7b224e6dae2a10fe22b7` |
| 16 | `def` | [Certificate.pullback](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/certificate-pullback--f3e72b25f8b36a1e5f19b0fb.md) | 122 | `declaration-track:f3e72b25f8b36a1e5f19b0fbfd5fcbd6b243cd9262d7765c8401cf456c48f124` |
| 17 | `theorem` | [valid_pullback](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/valid-pullback--2982a65cdc9efe9b526b94d5.md) | 131 | `result-track:2982a65cdc9efe9b526b94d51d59d0f5889f694d9d4ba8857fe74a4b4a68dfde` |
| 18 | `theorem` | [check_pullback](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/declarations/check-pullback--e4d454bff0d7fbbd88f68445.md) | 142 | `result-track:e4d454bff0d7fbbd88f684456a810cac728f220608358d7be13246eac6f871f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
