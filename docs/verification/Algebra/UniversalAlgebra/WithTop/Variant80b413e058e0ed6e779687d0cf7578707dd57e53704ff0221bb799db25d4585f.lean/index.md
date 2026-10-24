# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13808469a1a915e31bbc5c8bd0313559842531de",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13808469a1a915e31bbc5c8bd0313559842531de`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Sub.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sub](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean/declarations/sub--6cd0d25186e75e01ab9e1f25.md) | 25 | `declaration-track:6cd0d25186e75e01ab9e1f25e10109c4ad9785684ddbb9fc003e6cd7a91d4c1c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean/declarations/instance--d7175988dff6f83723519c0e.md) | 31 | `declaration-track:d7175988dff6f83723519c0e9f2254be33e3dc465c44a99e5f1ab3e8ece4c32b` |
| 3 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean/declarations/coe-sub--a4b9554c8d6c06a8cb3f2045.md) | 35 | `result-track:a4b9554c8d6c06a8cb3f204553fc595d7f1b7f1017dbaa2d9f7376c738803096` |
| 4 | `theorem` | [top_sub_coe](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean/declarations/top-sub-coe--dd5306f1709d0c228f62e429.md) | 40 | `result-track:dd5306f1709d0c228f62e4290e3107d6d4c6c5595a5e2a7125e086ca2af0121f` |
| 5 | `theorem` | [sub_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean/declarations/sub-top--751240002991cada88de020f.md) | 45 | `result-track:751240002991cada88de020f037fec1db76ae26bc15f74cd506da9bf9fa74878` |
| 6 | `theorem` | [sub_eq_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean/declarations/sub-eq-top-iff--2c500e9d363ec0d3fbe69c56.md) | 48 | `result-track:2c500e9d363ec0d3fbe69c562f07e410c01ddca1fdef6606502ea89e999f756d` |
| 7 | `theorem` | [map_sub](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean/declarations/map-sub--91af9a6a6fb21132acecc17f.md) | 54 | `result-track:91af9a6a6fb21132acecc17fdf3e11ce573f021ee2aea90682e975266cd896c9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant80b413e058e0ed6e779687d0cf7578707dd57e53704ff0221bb799db25d4585f.lean/declarations/instance--f946869d7d55aa40a7b13822.md) | 65 | `declaration-track:f946869d7d55aa40a7b138225a48d28ce5c32c92acbd0ea2e4b2922213753e6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
