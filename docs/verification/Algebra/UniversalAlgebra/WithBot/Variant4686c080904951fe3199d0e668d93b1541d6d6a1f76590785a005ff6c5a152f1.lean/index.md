# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithBot.Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f523f068f8d40a1afa713dce23981a195b7c2dc3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f523f068f8d40a1afa713dce23981a195b7c2dc3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean/declarations/instance--bee780d29354c900cf0aef1b.md) | 23 | `declaration-track:bee780d29354c900cf0aef1b1eadf4eaf6020c4e0f391982ea54b081875d42e9` |
| 2 | `theorem` | [add_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean/declarations/add-eq-zero-iff--99a0d1d55d092f097aa6dc5e.md) | 27 | `result-track:99a0d1d55d092f097aa6dc5e273d3dfa4e9dd3d98253ca0d165f42b55f3c011f` |
| 3 | `theorem` | [add_eq_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean/declarations/add-eq-one-iff--7dfd02af9cae7488ec15373e.md) | 35 | `result-track:7dfd02af9cae7488ec15373e462ca92c364372bfa6bc42b5368f1043652e40cf` |
| 4 | `theorem` | [add_eq_two_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean/declarations/add-eq-two-iff--dc1493ccf336891cd0d47e75.md) | 42 | `result-track:dc1493ccf336891cd0d47e75d641c4f1763a9879497a62787e2ea2df49c0eecc` |
| 5 | `theorem` | [add_eq_three_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean/declarations/add-eq-three-iff--9a611ea61e899365d9805588.md) | 50 | `result-track:9a611ea61e899365d9805588504c0e2260a427df040b897724964c9cf901f746` |
| 6 | `theorem` | [coe_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean/declarations/coe-nonneg--07c872b79cb61491f5f19e4e.md) | 58 | `result-track:07c872b79cb61491f5f19e4e5e617167179a977db295a27e35c4f8012095ee80` |
| 7 | `theorem` | [lt_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean/declarations/lt-zero-iff--bdddb6519a3cc6ec6dce3a14.md) | 64 | `result-track:bdddb6519a3cc6ec6dce3a14596dfd296d8b0dc4d7e45d3d20f448a955fcef2b` |
| 8 | `theorem` | [one_le_iff_zero_lt](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean/declarations/one-le-iff-zero-lt--9fe6271b08b52feb2d68e6e3.md) | 76 | `result-track:9fe6271b08b52feb2d68e6e329d623773cb4c0c55f7662d370e0fc02c28fc82f` |
| 9 | `theorem` | [lt_one_iff_le_zero](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean/declarations/lt-one-iff-le-zero--438539eb220f7c013408f225.md) | 83 | `result-track:438539eb220f7c013408f22549441e83ef09a85541803ff3db16989c3ac7bffa` |
| 10 | `theorem` | [add_one_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean/declarations/add-one-le-of-lt--aa8b1fd7f0c7d38b4d0acb71.md) | 87 | `result-track:aa8b1fd7f0c7d38b4d0acb71c8d7dfb036966abddd8a6b44ea538cac3e55126f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
