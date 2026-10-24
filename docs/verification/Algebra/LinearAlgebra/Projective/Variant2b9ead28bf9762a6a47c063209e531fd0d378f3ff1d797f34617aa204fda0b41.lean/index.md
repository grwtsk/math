# Verification target: GRWTSK.Algebra.LinearAlgebra.Projective.Variant2b9ead28bf9762a6a47c063209e531fd0d378f3ff1d797f34617aa204fda0b41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a14924b07dddce2114c7bd087f9843f55da6fdd9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant2b9ead28bf9762a6a47c063209e531fd0d378f3ff1d797f34617aa204fda0b41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant2b9ead28bf9762a6a47c063209e531fd0d378f3ff1d797f34617aa204fda0b41.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant2b9ead28bf9762a6a47c063209e531fd0d378f3ff1d797f34617aa204fda0b41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a14924b07dddce2114c7bd087f9843f55da6fdd9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variant2b9ead28bf9762a6a47c063209e531fd0d378f3ff1d797f34617aa204fda0b41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variant2b9ead28bf9762a6a47c063209e531fd0d378f3ff1d797f34617aa204fda0b41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Projective` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FinsuppVectorSpace` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsProjective.iff_projective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant2b9ead28bf9762a6a47c063209e531fd0d378f3ff1d797f34617aa204fda0b41.lean/declarations/isprojective-iff-projective--040455d74b4111dc87f5462c.md) | 41 | `result-track:040455d74b4111dc87f5462cd2ef1489cbd1dfcacf1c998bc14ffe3a7eaea221` |
| 2 | `theorem` | [projective_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant2b9ead28bf9762a6a47c063209e531fd0d378f3ff1d797f34617aa204fda0b41.lean/declarations/projective-of-free--9b3cb40390eb0abc4cb50baa.md) | 60 | `result-track:9b3cb40390eb0abc4cb50baa4b5cee6ae2c31bd0729ae245125add461faf2c14` |
| 3 | `instance` | [moduleCat_enoughProjectives](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant2b9ead28bf9762a6a47c063209e531fd0d378f3ff1d797f34617aa204fda0b41.lean/declarations/modulecat-enoughprojectives--8c1f60a1453d2e0e0eab57dd.md) | 68 | `declaration-track:8c1f60a1453d2e0e0eab57dd080ca01062b5c74ebf50dbf5ec5b3523b944be5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
