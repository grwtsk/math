# Verification target: GRWTSK.Algebra.UniversalAlgebra.Star.Variant98ad3bac33e8ecc8a53110bab20c96b53b5b97f62ef6f7c3c32b25e1d00ead8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc2eb7ce8e7ce0db6fbec6884d64c7717834627a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Star/Variant98ad3bac33e8ecc8a53110bab20c96b53b5b97f62ef6f7c3c32b25e1d00ead8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant98ad3bac33e8ecc8a53110bab20c96b53b5b97f62ef6f7c3c32b25e1d00ead8d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant98ad3bac33e8ecc8a53110bab20c96b53b5b97f62ef6f7c3c32b25e1d00ead8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc2eb7ce8e7ce0db6fbec6884d64c7717834627a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Star/Variant98ad3bac33e8ecc8a53110bab20c96b53b5b97f62ef6f7c3c32b25e1d00ead8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Star/Variant98ad3bac33e8ecc8a53110bab20c96b53b5b97f62ef6f7c3c32b25e1d00ead8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Submonoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [addSubmonoid_closure_range_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant98ad3bac33e8ecc8a53110bab20c96b53b5b97f62ef6f7c3c32b25e1d00ead8d.lean/declarations/addsubmonoid-closure-range-pow--4a27b1231f32a0f47345cdef.md) | 30 | `result-track:4a27b1231f32a0f47345cdefa67555dac1e90442fb7d5928fadeaf9b12a82c91` |
| 2 | `lemma` | [addSubmonoid_closure_range_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant98ad3bac33e8ecc8a53110bab20c96b53b5b97f62ef6f7c3c32b25e1d00ead8d.lean/declarations/addsubmonoid-closure-range-mul-self--b0a8272c350f8fe4b7b24c1f.md) | 38 | `result-track:b0a8272c350f8fe4b7b24c1f0e4031354db6b9f686b6e8891d08fd600436f315` |
| 3 | `instance` | [instStarOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant98ad3bac33e8ecc8a53110bab20c96b53b5b97f62ef6f7c3c32b25e1d00ead8d.lean/declarations/inststarorderedring--3578414b1e2777757f723a9e.md) | 41 | `declaration-track:3578414b1e2777757f723a9e0b6ecb90b906334fdba69ba5e7263be9b2ce67ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
