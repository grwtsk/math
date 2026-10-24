# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CubicCircleGeometry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de4d3fc751818d5e38ae5a391dc7add991016d63",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de4d3fc751818d5e38ae5a391dc7add991016d63`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.AnchoredLocalJensen`](../../../../../mathematics/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.Positivity` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disk_geometry](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean/declarations/disk-geometry--a01c1879af17b17d5796dd81.md) | 30 | `result-track:a01c1879af17b17d5796dd816e4de9164371d8101054eef6be5029bcb0736122` |
| 2 | `theorem` | [norm_inverse_sub_one_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean/declarations/norm-inverse-sub-one-le--e88028905cdf170fca4beaec.md) | 64 | `result-track:e88028905cdf170fca4beaec87b74fab995952db8a8fd422760b2fa1e9f6dfc3` |
| 3 | `theorem` | [scalar_cubic_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean/declarations/scalar-cubic-budget--1851c3027b2e4c18ec9cc66c.md) | 75 | `result-track:1851c3027b2e4c18ec9cc66c928ccdd697171ef4ada1f4c0db41213fad78cdfa` |
| 4 | `theorem` | [norm_le_cube_of_cubic_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean/declarations/norm-le-cube-of-cubic-identity--0251789779a1d423381215c7.md) | 85 | `result-track:0251789779a1d423381215c78ceb865d73ee7d574e9eca21d84fbe5caef01243` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
