# Verification target: GRWTSK.Algebra.LinearAlgebra.Exact.Variantf26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81b4d1a919335b53457e816306e8004ef13dc10f",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variantf26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variantf26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variantf26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81b4d1a919335b53457e816306e8004ef13dc10f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exact/Variantf26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exact/Variantf26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LocalizedModule.map_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variantf26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e.lean/declarations/localizedmodule-map-exact--ca24a268b0290e81056c8328.md) | 33 | `result-track:ca24a268b0290e81056c8328449cb428c9c1894010304758600c135b62d5594c` |
| 2 | `theorem` | [IsLocalizedModule.map_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variantf26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e.lean/declarations/islocalizedmodule-map-exact--c3d0dc4f324a416c12abe32e.md) | 52 | `result-track:c3d0dc4f324a416c12abe32e696684fd3d2713d0bea944e008bb4685571fb8e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
