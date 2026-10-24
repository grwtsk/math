# Verification target: GRWTSK.Algebra.LinearAlgebra.OrzechProperty.Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2409ce73bc0e3ef8917f520a21d8e84f915abb1c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2409ce73bc0e3ef8917f520a21d8e84f915abb1c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Equiv.TransferInstance` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Cardinality` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrzechProperty](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean/declarations/orzechproperty--c3afa15b82a77d1fabc0dbc7.md) | 67 | `declaration-track:c3afa15b82a77d1fabc0dbc7073b19a6f839492dcffc0be4fafb8c206c3340e4` |
| 2 | `theorem` | [injective_of_surjective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean/declarations/injective-of-surjective-of-injective--ed3d06b1387547147d15fb2b.md) | 77 | `result-track:ed3d06b1387547147d15fb2b9a4febf1c87db6a3334f7df71a35f5da673217d6` |
| 3 | `theorem` | [injective_of_surjective_of_submodule](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean/declarations/injective-of-surjective-of-submodule--9c6e3de6870c177ce44bede8.md) | 92 | `result-track:9c6e3de6870c177ce44bede884edd2326f0763f871f02fe5db23b7139a1268a4` |
| 4 | `theorem` | [injective_of_surjective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean/declarations/injective-of-surjective-endomorphism--2febd42f815f194827bd9d65.md) | 96 | `result-track:2febd42f815f194827bd9d65009bca6d721c9c6df0baf4d2b5f698769a3d14e1` |
| 5 | `theorem` | [bijective_of_surjective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean/declarations/bijective-of-surjective-endomorphism--5bb3957e750cd5ecba629453.md) | 100 | `result-track:5bb3957e750cd5ecba629453335af2ef54fffd7ed7d794cb7307d769ae9f6d1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
