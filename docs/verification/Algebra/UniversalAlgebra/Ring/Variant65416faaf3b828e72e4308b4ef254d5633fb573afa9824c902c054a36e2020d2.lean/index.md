# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ring.Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46f5e767804e6ed6c511b1a1dee8db8969dfc882",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46f5e767804e6ed6c511b1a1dee8db8969dfc882`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.InjSurj` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean/declarations/isorderedaddmonoid--5c1b617e03a2b207868de103.md) | 43 | `declaration-track:5c1b617e03a2b207868de1034b80c47702ab8db4d38ffa80fd68afe2eb0801a4` |
| 2 | `instance` | [isOrderedCancelAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean/declarations/isorderedcanceladdmonoid--04ff5abf355a07e9795e9449.md) | 47 | `declaration-track:04ff5abf355a07e9795e9449f4b42636c9fb2c7174f900fb4fb7b0607a9f1ef0` |
| 3 | `instance` | [isOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean/declarations/isorderedring--08f193c6e4f1a63fdf2e1975.md) | 51 | `declaration-track:08f193c6e4f1a63fdf2e197543d1f18fe1eeba438b45abe11bdab302d6f68a58` |
| 4 | `instance` | [isStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean/declarations/isstrictorderedring--aefca50a6e86baada8eae1be.md) | 57 | `declaration-track:aefca50a6e86baada8eae1be3fb0183b00ee63bae0cf1748b82485bba5fbb983` |
| 5 | `instance` | [existsAddOfLE](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean/declarations/existsaddofle--543e9c9e806e761a9a7ba0a7.md) | 63 | `declaration-track:543e9c9e806e761a9a7ba0a7ef0a1ba34d924768770f65bfedc433b93a8e14f8` |
| 6 | `instance` | [nontrivial](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean/declarations/nontrivial--42c2bc4e7d6759a095126b17.md) | 72 | `declaration-track:42c2bc4e7d6759a095126b17b1bb8f606cb64a32440051762912af9c30d1c408` |
| 7 | `instance` | [linearOrderedCommMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean/declarations/linearorderedcommmonoidwithzero--4eae5c116261b914e5596f6e.md) | 76 | `declaration-track:4eae5c116261b914e5596f6e778920d74a2c203d502ffd1b91e4880196e0ecad` |
| 8 | `instance` | [canonicallyOrderedAdd](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean/declarations/canonicallyorderedadd--0f70cfbd5350fd98e8ecab6c.md) | 81 | `declaration-track:0f70cfbd5350fd98e8ecab6cb43a6bdb08d456d6332318ebe2efbee9011da3e9` |
| 9 | `instance` | [noZeroDivisors](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean/declarations/nozerodivisors--b634fc157342d25124be0a5e.md) | 87 | `declaration-track:b634fc157342d25124be0a5eaed6d41635af825a69abf88aff9b7bfbc5f25031` |
| 10 | `instance` | [orderedSub](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant65416faaf3b828e72e4308b4ef254d5633fb573afa9824c902c054a36e2020d2.lean/declarations/orderedsub--d89faa51775a1a4334d4e612.md) | 93 | `declaration-track:d89faa51775a1a4334d4e6123e99a3659c133fc869c117217906004f538bd7c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
