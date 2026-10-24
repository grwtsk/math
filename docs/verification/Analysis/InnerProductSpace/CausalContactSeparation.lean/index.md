# Verification target: GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c8bfe769e0033a783800ba92797cf983fadd417",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/CausalContactSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c8bfe769e0033a783800ba92797cf983fadd417`.

Source path: `GRWTSK/Analysis/InnerProductSpace/CausalContactSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/CausalContactSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.BilinearForm.ZeroCoordinateObstruction`](../../../../mathematics/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalResponseGram`](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.DilationResponseSeparation`](../../../../mathematics/Analysis/InnerProductSpace/DilationResponseSeparation.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.LinearAlgebra.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [windowResponse](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/declarations/windowresponse--cd565a9e214322ab996edf5f.md) | 44 | `declaration-track:cd565a9e214322ab996edf5fc0ef7f14b9d52b100d19694135f7890f6e4345c7` |
| 2 | `theorem` | [response_zero_before_or_at_contact](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/declarations/response-zero-before-or-at-contact--f757bc9aee5cb305bb246ccc.md) | 47 | `result-track:f757bc9aee5cb305bb246ccc26c362bba965d282724e83be7cc5c33d2ce9027f` |
| 3 | `theorem` | [window_response_eq_zero_of_before_contact](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/declarations/window-response-eq-zero-of-before-contact--14bfe2c40d8781db04f492fa.md) | 57 | `result-track:14bfe2c40d8781db04f492fa18b78f20e5ca7d8965d164115b504dd40c077de3` |
| 4 | `theorem` | [touching_window_response_eq_zero](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/declarations/touching-window-response-eq-zero--63ce84750824465f01d082ec.md) | 66 | `result-track:63ce84750824465f01d082ec2d5126f611146d349fa142b51f57d68339a1361e` |
| 5 | `theorem` | [native_before_contact_row_zero](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/declarations/native-before-contact-row-zero--0ccb0628d19b2cef01aff85d.md) | 71 | `result-track:0ccb0628d19b2cef01aff85d656c52cb4acb1a9d13bdc04aaf02d7be29072339` |
| 6 | `theorem` | [prescribed_source_vector_ne_zero](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/declarations/prescribed-source-vector-ne-zero--79190a982ed375204d709dd2.md) | 84 | `result-track:79190a982ed375204d709dd2d89fdb422f176a83e2a0f9e16905a1b569ba7f0f` |
| 7 | `theorem` | [zero_preserving_contact_map_ne_source](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/declarations/zero-preserving-contact-map-ne-source--a1cc360edaf94b9e8b0fabfe.md) | 93 | `result-track:a1cc360edaf94b9e8b0fabfe0dea35109b813ff0989d530d3bd7b19bd43746c2` |
| 8 | `theorem` | [linear_contact_map_ne_source](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/declarations/linear-contact-map-ne-source--6a48dae012cc8b5dc2f1842d.md) | 99 | `result-track:6a48dae012cc8b5dc2f1842dad78d4d37ad110e49f76e322fffd18737d9d3986` |
| 9 | `theorem` | [diagonal_scaled_native_ne_source](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/declarations/diagonal-scaled-native-ne-source--8010188f9c2de45ca8b10ee5.md) | 104 | `result-track:8010188f9c2de45ca8b10ee5bd15fc0eabc1c40e7cbc4e5407128564a677ba89` |
| 10 | `theorem` | [native_contact_no_source_quadratic_domination](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/declarations/native-contact-no-source-quadratic-domination--68d14d774875568c7a35a819.md) | 114 | `result-track:68d14d774875568c7a35a81914b22b4108421b118e78811ee74c3e8eb366b438` |
| 11 | `theorem` | [prescribed_horizon_restricted_obstructions](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/declarations/prescribed-horizon-restricted-obstructions--8286ef145115bb3f2a23a804.md) | 133 | `result-track:8286ef145115bb3f2a23a804f13dd6762bb5c8119e35b6040bd08c6fd50645c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
