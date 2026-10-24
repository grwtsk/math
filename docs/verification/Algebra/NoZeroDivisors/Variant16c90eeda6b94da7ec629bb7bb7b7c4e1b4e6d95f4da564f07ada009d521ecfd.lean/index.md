# Verification target: GRWTSK.Algebra.NoZeroDivisors.Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b486179bfa503a35a023b79e5f68970c1705ecd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NoZeroDivisors/Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NoZeroDivisors/Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd.lean/index.md) · [Full source](../../../../mathematics/Algebra/NoZeroDivisors/Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b486179bfa503a35a023b79e5f68970c1705ecd`.

Source path: `GRWTSK/Algebra/NoZeroDivisors/Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NoZeroDivisors/Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NoZeroDivisors/Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd.lean/declarations/instance--e9efe7d08e0a9d6ebdc237ab.md) | 40 | `declaration-track:e9efe7d08e0a9d6ebdc237ab289a89a186337141ebe3f42d20a5eb481b77c83c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NoZeroDivisors/Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd.lean/declarations/instance--820567a7be537c16c833f5c1.md) | 49 | `declaration-track:820567a7be537c16c833f5c1f19d09b486fd36db8fae05c0809f524d9ae697dd` |
| 3 | `theorem` | [span_X_isPrime](../../../../mathematics/Algebra/NoZeroDivisors/Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd.lean/declarations/span-x-isprime--0f9a925007d30091dd680f91.md) | 56 | `result-track:0f9a925007d30091dd680f9152d75d2eb8f06f924d957d3442cf4e3e0e9689e1` |
| 4 | `theorem` | [X_prime](../../../../mathematics/Algebra/NoZeroDivisors/Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd.lean/declarations/x-prime--7507e90ae1443d896f990518.md) | 65 | `result-track:7507e90ae1443d896f99051847298345899231f39c7a46fca648b268c24fb9d8` |
| 5 | `theorem` | [X_irreducible](../../../../mathematics/Algebra/NoZeroDivisors/Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd.lean/declarations/x-irreducible--fefabc42800d6ebd92168f71.md) | 72 | `result-track:fefabc42800d6ebd92168f71987124edc1ef41d6230ae6ba6310c57ef29fab36` |
| 6 | `theorem` | [rescale_injective](../../../../mathematics/Algebra/NoZeroDivisors/Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd.lean/declarations/rescale-injective--06cb1ef250f231ba38fd6f51.md) | 74 | `result-track:06cb1ef250f231ba38fd6f51acd0b58895e90828310cbb8e34845905110bffc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
