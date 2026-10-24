# Verification target: GRWTSK.Algebra.Basic.Variant87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a13790b05b0347963fdd723e71c5b3ddf7c2cce",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a13790b05b0347963fdd723e71c5b3ddf7c2cce`.

Source path: `GRWTSK/Algebra/Basic/Variant87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Insert` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [codomain_trivial_iff_range_eq_singleton_zero](../../../../mathematics/Algebra/Basic/Variant87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda.lean/declarations/codomain-trivial-iff-range-eq-singleton-zero--18e4fd2d1ae880c365e2f106.md) | 33 | `result-track:18e4fd2d1ae880c365e2f106b0eea66d78ffeb49ed2e886fcf0ef0dde2e57d95` |
| 2 | `theorem` | [map_dvd](../../../../mathematics/Algebra/Basic/Variant87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda.lean/declarations/map-dvd--052c400a44a3aea19f12ffc9.md) | 45 | `result-track:052c400a44a3aea19f12ffc928603a5d1a2dbfd22e23848c542e1d1ead974e71` |
| 3 | `theorem` | [Function.Injective.isDomain](../../../../mathematics/Algebra/Basic/Variant87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda.lean/declarations/function-injective-isdomain--c39aed0140abe22d20da35c4.md) | 53 | `result-track:c39aed0140abe22d20da35c4c46c27b3578b27335a0b684c31a379e77c11e11e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
