# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.AnchoredLocalJensen

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0597066244f0ecde390467f535b4c76acb9be81",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0597066244f0ecde390467f535b4c76acb9be81`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.LocalJensenCount`](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalJensenCount.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RightHalfPlaneModulus`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [upper_center_floor](../../../../../mathematics/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/declarations/upper-center-floor--b601bc043502523ec6692f0c.md) | 28 | `result-track:b601bc043502523ec6692f0cd722b96a4bf724abafeabce89f7fb29e933212e0` |
| 2 | `theorem` | [lower_center_floor](../../../../../mathematics/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/declarations/lower-center-floor--7cb1a6011a450833a4688c1b.md) | 31 | `result-track:7cb1a6011a450833a4688c1be005d2cde2adbf58cbe2893808f47b7dd6b95a94` |
| 3 | `theorem` | [bandMass_le_of_circle_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/declarations/bandmass-le-of-circle-bound--28bf1733b8b2404384ed76dd.md) | 35 | `result-track:28bf1733b8b2404384ed76dd61a001bca30f3563808608ce96a03f32205ac383` |
| 4 | `theorem` | [bandMass_le_of_exp_circle_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/declarations/bandmass-le-of-exp-circle-bound--084eff01fac06ef292276224.md) | 45 | `result-track:084eff01fac06ef2922762247e1783f2192e0a9ed61718fbf549fe2ad504394f` |
| 5 | `theorem` | [bandMass_le_of_polynomial_circle_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/declarations/bandmass-le-of-polynomial-circle-bound--5801b91f244bbace0208fc3d.md) | 55 | `result-track:5801b91f244bbace0208fc3df3449a2bffc5014df067df040c8679aeb710ed32` |
| 6 | `theorem` | [clearance_of_circle_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/declarations/clearance-of-circle-bound--bac94cae6e1e37d7e3bfa3b1.md) | 75 | `result-track:bac94cae6e1e37d7e3bfa3b110e2569781ef6497a75e1d05096b26714d95109f` |
| 7 | `theorem` | [local_principal_of_circle_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/declarations/local-principal-of-circle-bound--75c86e3da123cbc5c83a6baf.md) | 82 | `result-track:75c86e3da123cbc5c83a6bafec70dc908a34a03a74693cc2c3b70b2b649cbb0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
