# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.RectangleDivisorControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b661046b9c222faf096e3b94f53630348b3e5557",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b661046b9c222faf096e3b94f53630348b3e5557`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleIndex`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitRectangle](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/unitrectangle--886eeafae626508fbb0e1065.md) | 24 | `declaration-track:886eeafae626508fbb0e1065a3ad1fb9116faf7f4ff507671e8679b1d93616ce` |
| 2 | `theorem` | [zero_interior](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/zero-interior--5690c36f1f2923540d1d762b.md) | 26 | `result-track:5690c36f1f2923540d1d762b61c04b98f111e1bbccaa4b5d035aecf6faa75a2d` |
| 3 | `theorem` | [linear_index_one](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/linear-index-one--2ebb12598f8bda8afd87632f.md) | 29 | `result-track:2ebb12598f8bda8afd87632f158769f463532a6e14c9e17924234eb0e32bdf4a` |
| 4 | `theorem` | [cubic_index_three](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/cubic-index-three--29f0cc9db6c9511d8bc5e90f.md) | 34 | `result-track:29f0cc9db6c9511d8bc5e90fea9a19c99c0538be78421ad9d7cc4e11c00f966c` |
| 5 | `theorem` | [reversed_linear_index](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/reversed-linear-index--547848b51b9f5462ff5eacd0.md) | 42 | `result-track:547848b51b9f5462ff5eacd061dea4a82f1ceb99612afde2d07c057699cf298f` |
| 6 | `theorem` | [boundary_only_is_insufficient](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/boundary-only-is-insufficient--eb95071246c6788f1b19f1d2.md) | 52 | `result-track:eb95071246c6788f1b19f1d2fa10a116f4607f0c36d4accecdb4879edec8044c` |
| 7 | `theorem` | [boundary_root_not_interior](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/boundary-root-not-interior--a6fa6d2b5a6a0a1f92b4f55b.md) | 56 | `result-track:a6fa6d2b5a6a0a1f92b4f55be58b3228cbbd1231fb61e224aaec20e8ebd88103` |
| 8 | `theorem` | [double_root_has_extended_quotient](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/double-root-has-extended-quotient--e48dda53feceb0049049ab5f.md) | 61 | `result-track:e48dda53feceb0049049ab5f479a3a6ea290d271c0236dd8c8c31ecbb96c5e56` |
| 9 | `theorem` | [raw_quotient_at_removed_point](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/raw-quotient-at-removed-point--01197de61ba904d46b0e2669.md) | 77 | `result-track:01197de61ba904d46b0e2669ba0800ea4cec5064e36c33055ddda8c605407413` |
| 10 | `theorem` | [missing_factor_leaves_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/missing-factor-leaves-zero--783ee1fe3a149d4c6d8d5516.md) | 80 | `result-track:783ee1fe3a149d4c6d8d5516ebac1d7609bc181754bd2faef20b52c23b2fb5e5` |
| 11 | `theorem` | [exponential_multiplier_index_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/exponential-multiplier-index-zero--ccbe2d427931c97f674172d4.md) | 84 | `result-track:ccbe2d427931c97f674172d46d0d33142099d303572b3815b5d070c9501abb81` |
| 12 | `theorem` | [full_location_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/full-location-control--19118e205cc0c24a86712350.md) | 92 | `result-track:19118e205cc0c24a867123505f8f8320936d4d30412ae4c1c8fc7866a5e81a55` |
| 13 | `theorem` | [removed_pole_not_counted](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/removed-pole-not-counted--5db1f058fdf7936e1ae99e2f.md) | 101 | `result-track:5db1f058fdf7936e1ae99e2f99cd41e86d60811d8a3498d1b00d27951f981752` |
| 14 | `theorem` | [reversal_not_endpoint_preserving](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/declarations/reversal-not-endpoint-preserving--f8c0223bff138ef0b97329ae.md) | 107 | `result-track:f8c0223bff138ef0b97329ae737c3574bef0d053bb1857041b7c67482df93bac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
