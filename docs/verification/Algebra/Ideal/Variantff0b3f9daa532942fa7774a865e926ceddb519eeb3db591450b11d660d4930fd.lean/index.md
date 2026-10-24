# Verification target: GRWTSK.Algebra.Ideal.Variantff0b3f9daa532942fa7774a865e926ceddb519eeb3db591450b11d660d4930fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef516e53060a589659d3612fba8fde581e7f4869",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variantff0b3f9daa532942fa7774a865e926ceddb519eeb3db591450b11d660d4930fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variantff0b3f9daa532942fa7774a865e926ceddb519eeb3db591450b11d660d4930fd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variantff0b3f9daa532942fa7774a865e926ceddb519eeb3db591450b11d660d4930fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef516e53060a589659d3612fba8fde581e7f4869`.

Source path: `GRWTSK/Algebra/Ideal/Variantff0b3f9daa532942fa7774a865e926ceddb519eeb3db591450b11d660d4930fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variantff0b3f9daa532942fa7774a865e926ceddb519eeb3db591450b11d660d4930fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonoidAlgebra.mem_ideal_span_of_image](../../../../mathematics/Algebra/Ideal/Variantff0b3f9daa532942fa7774a865e926ceddb519eeb3db591450b11d660d4930fd.lean/declarations/monoidalgebra-mem-ideal-span-of-image--b26dfb0d5126b7bd1e429861.md) | 30 | `result-track:b26dfb0d5126b7bd1e429861aadeab557c8c1c92b405bb26a8d3e51af18fc3b9` |
| 2 | `theorem` | [AddMonoidAlgebra.mem_ideal_span_of'_image](../../../../mathematics/Algebra/Ideal/Variantff0b3f9daa532942fa7774a865e926ceddb519eeb3db591450b11d660d4930fd.lean/declarations/addmonoidalgebra-mem-ideal-span-of-image--f7574c3baaf3963e31e4ee3e.md) | 69 | `result-track:f7574c3baaf3963e31e4ee3e4753e67e253a75bcd306845fcff309767c4425c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
