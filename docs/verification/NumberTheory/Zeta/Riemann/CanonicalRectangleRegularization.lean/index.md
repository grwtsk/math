# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleRegularization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ce76ec1e5d723bcae7f2380a2fd0de7ed6b24e8",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ce76ec1e5d723bcae7f2380a2fd0de7ed6b24e8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectanglePrincipalPartWinding`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [boundary_not_mem_interior](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/boundary-not-mem-interior--931f9273539d27455b36d127.md) | 47 | `result-track:931f9273539d27455b36d12751d0d131ac334dc581f194ac701446a08d8773ba` |
| 2 | `theorem` | [boundary_not_mem_singularHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/boundary-not-mem-singularhead--e3b2a5352029f9bbec452d30.md) | 59 | `result-track:e3b2a5352029f9bbec452d303efbb8d40bbcb6a0244d9bbdc9c69d1a68b99912` |
| 3 | `theorem` | [boundary_subset_closedRectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/boundary-subset-closedrectangle--7af5d043bd7150168de23f73.md) | 67 | `result-track:7af5d043bd7150168de23f73d95c62f6df20ee74da6da0a1f82be4355fea0d99` |
| 4 | `theorem` | [rectangleBoundaryIntegral_congr_on_boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/rectangleboundaryintegral-congr-on-boundary--5e8bb7f09d33002480c032a1.md) | 86 | `result-track:5e8bb7f09d33002480c032a19d1f31a0a45eee6a3f91bd623ddc7ed234fbb1ee` |
| 5 | `theorem` | [nontrivialPrincipalPart_boundaryIntegrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/nontrivialprincipalpart-boundaryintegrable--046f947ddf41a7dee3fda590.md) | 133 | `result-track:046f947ddf41a7dee3fda5901e45ada4eaf8fb21946af7dfc8e6b1ce33310bb1` |
| 6 | `theorem` | [trivialPrincipalPart_boundaryIntegrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/trivialprincipalpart-boundaryintegrable--c78f35afb822059b679df7cb.md) | 144 | `result-track:c78f35afb822059b679df7cbfadf4c1745d8296ecdde1ad72ca37ec2fde5ea49` |
| 7 | `theorem` | [polePrincipalPart_boundaryIntegrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/poleprincipalpart-boundaryintegrable--87fdfe3c5a8371505914b917.md) | 154 | `result-track:87fdfe3c5a8371505914b9177cd224a2b78af560f3e65ddf2d342380c0ded1b5` |
| 8 | `theorem` | [rectanglePrincipalPart_boundaryIntegrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/rectangleprincipalpart-boundaryintegrable--8694a3a683533874f80a7719.md) | 160 | `result-track:8694a3a683533874f80a77199770b2243f2893658822f4703dfd5eb435d3b890` |
| 9 | `structure` | [RectangleRegularExtension](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/rectangleregularextension--224a810b430b798bd8e21fca.md) | 169 | `declaration-track:224a810b430b798bd8e21fca35f24d73ce4e07c8edb7ea937a787dda0a88490d` |
| 10 | `theorem` | [regular_boundaryIntegrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/regular-boundaryintegrable--642b0808cc3caccb7e84881a.md) | 179 | `result-track:642b0808cc3caccb7e84881aa9f76307a066f734a691f1ab1c8ed6f4757706b1` |
| 11 | `theorem` | [agreement_on_boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/agreement-on-boundary--16c839b1e91043f0b02d2f15.md) | 213 | `result-track:16c839b1e91043f0b02d2f15bcd0fb10dad2d90cefa49dcfbe9ca6e08b1f0f3b` |
| 12 | `theorem` | [boundary_decomposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/boundary-decomposition--929a17216d32c94ff7ac6f58.md) | 225 | `result-track:929a17216d32c94ff7ac6f58c13cebf093050c067bae960cd1d9f2304d98911b` |
| 13 | `def` | [toRegularizationCertificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/toregularizationcertificate--a56d305908e3afce2e3fd40b.md) | 243 | `declaration-track:a56d305908e3afce2e3fd40bcf394d2d8a4026bd2645bfc10d114722844c5c72` |
| 14 | `theorem` | [normalizedRectangleIndex_eq_expected](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/normalizedrectangleindex-eq-expected--1ee7b57670177fe7f1112a05.md) | 254 | `result-track:1ee7b57670177fe7f1112a059049c6832666701b3dbf661ba72d7deb377ad719` |
| 15 | `def` | [toCanonicalRectangleIndexEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/tocanonicalrectangleindexenclosure--d5f5cc0b85db2897e5fa76fb.md) | 263 | `declaration-track:d5f5cc0b85db2897e5fa76fb15eec0be2c4e04644aa43acdd31b950574748fb6` |
| 16 | `theorem` | [singularHead_disjoint_boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/declarations/singularhead-disjoint-boundary--52d52119defa9f7b67c11f2e.md) | 276 | `result-track:52d52119defa9f7b67c11f2e1a51bb73c82232dbe07224badcf0d833a2a9c31a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
