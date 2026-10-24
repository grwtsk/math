# Verification target: GRWTSK.Algebra.LinearAlgebra.Exact.Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d62e727b37ffb35b6cfb858aa16b30bd17b62485",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d62e727b37ffb35b6cfb858aa16b30bd17b62485`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LinearIndependent.linearIndependent_of_exact_of_retraction](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean/declarations/linearindependent-linearindependent-of-exact-of-retraction--34a1c388a92f43a602ffc652.md) | 28 | `result-track:34a1c388a92f43a602ffc652ef3b54116fe3bae33ce46a6c7f8442a3058b7d22` |
| 2 | `lemma` | [top_le_span_of_aux](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean/declarations/top-le-span-of-aux--de14db9f001e5660a6534652.md) | 48 | `result-track:de14db9f001e5660a65346523abc35a988a667a702b7dfd64c4916b5a3eb5892` |
| 3 | `lemma` | [Submodule.top_le_span_of_exact_of_retraction](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean/declarations/submodule-top-le-span-of-exact-of-retraction--bc38746d2c31772d6ab2e7e2.md) | 72 | `result-track:bc38746d2c31772d6ab2e7e249ae4bdcebb235e3f6d2d4adaa1ad50291cbe4ff` |
| 4 | `def` | [Basis.ofSplitExact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean/declarations/basis-ofsplitexact--cb6e84fd9ef54f95bdbb74ce.md) | 87 | `declaration-track:cb6e84fd9ef54f95bdbb74cefdde47a75411ad6240b96ea3e62c8c4ce18379c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
