# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleFiniteRemoval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbfb5171d1cb9af65ae07cd5e1f9ab88648e645b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbfb5171d1cb9af65ae07cd5e1f9ab88648e645b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.FiniteRemovablePatching`](../../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleArgumentPrinciple`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart`](../../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicPrincipalPart.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rawRectangleRegularPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/rawrectangleregularpart--2565176bec8976ec225b446b.md) | 52 | `declaration-track:2565176bec8976ec225b446b2dd20c0337bda2a89814bf3ddf012b83410b91ab` |
| 2 | `theorem` | [mem_closedRectangle_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/mem-closedrectangle-iff--fb76ba0e9053bd176111941a.md) | 56 | `result-track:fb76ba0e9053bd176111941a2aecd23989e54f3673a8c212734f91a85158ed1c` |
| 3 | `theorem` | [mem_interior_or_boundary_of_mem_closedRectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/mem-interior-or-boundary-of-mem-closedrectangle--19994c62d8d76f54f7feaa5d.md) | 68 | `result-track:19994c62d8d76f54f7feaa5d1c6a97e7f96f6641d5d0a18775dce5396ec653c8` |
| 4 | `theorem` | [mem_singularHead_of_mem_closedRectangle_of_zero_or_pole](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/mem-singularhead-of-mem-closedrectangle-of-zero-or-pole--5ea23e3c32cc55048e459d75.md) | 86 | `result-track:5ea23e3c32cc55048e459d7586c4acfe7febd5540165a06354e76fabbf5210d1` |
| 5 | `theorem` | [zeta_ne_zero_of_mem_closedRectangle_of_not_mem_singularHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/zeta-ne-zero-of-mem-closedrectangle-of-not-mem-singularhead--a2c7d7ace37ff1523e269759.md) | 97 | `result-track:a2c7d7ace37ff1523e2697598916698c87254b378d5213db5a66936fe492975c` |
| 6 | `theorem` | [ne_one_of_not_mem_singularHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/ne-one-of-not-mem-singularhead--388c3397230a2409d906429a.md) | 105 | `result-track:388c3397230a2409d906429a9e63aaf452e671f72b6ee2567293519958439abb` |
| 7 | `theorem` | [nontrivialPrincipalPart_analyticAt_of_not_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/nontrivialprincipalpart-analyticat-of-not-mem--a5fbdf38768f0c580796b37a.md) | 113 | `result-track:a5fbdf38768f0c580796b37a133d474b8be50c8814e12868a38acd742058b69a` |
| 8 | `theorem` | [trivialPrincipalPart_analyticAt_of_not_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/trivialprincipalpart-analyticat-of-not-mem--edd05645d9e2c2d893bde812.md) | 131 | `result-track:edd05645d9e2c2d893bde8120070c8112dd3783b5c339372f39417e86eea74bf` |
| 9 | `theorem` | [polePrincipalPart_analyticAt_of_not_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/poleprincipalpart-analyticat-of-not-mem--f5e78656912fc7e4e97a1349.md) | 149 | `result-track:f5e78656912fc7e4e97a13490598d99a0a3b19a450ca4eb4d60ef2c924e0091d` |
| 10 | `theorem` | [rectanglePrincipalPart_analyticAt_of_not_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/rectangleprincipalpart-analyticat-of-not-mem--b3c1203809e61f488afac8d4.md) | 159 | `result-track:b3c1203809e61f488afac8d4741d7e9b09a48af80468b3d97dcc4013095fadff` |
| 11 | `theorem` | [rawRectangleRegularPart_analyticAt_of_not_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/rawrectangleregularpart-analyticat-of-not-mem--3187ad165653731774286a5f.md) | 169 | `result-track:3187ad165653731774286a5f15e6b48509941156ab429c38f826173d57f7bb05` |
| 12 | `theorem` | [trivial_zero_principal_part](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/trivial-zero-principal-part--d239055ffd47b2295e527c94.md) | 185 | `result-track:d239055ffd47b2295e527c940831174e3694f6686cfe6419c5428d4eb1a57970` |
| 13 | `abbrev` | [RectangleLocalRemovalData](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/rectanglelocalremovaldata--b0df62aacb6d7ebe18138cc5.md) | 211 | `declaration-track:b0df62aacb6d7ebe18138cc545b97ec6e210211ae289076fe186094d91bb8586` |
| 14 | `theorem` | [openRectangle_subset_closedRectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/openrectangle-subset-closedrectangle--22b91f179888597e7547ea63.md) | 217 | `result-track:22b91f179888597e7547ea634a2532ebea64d75c4341f9e156250e9622298c7e` |
| 15 | `def` | [toRegularExtension](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/toregularextension--18891fb96c2d21b9d3594c17.md) | 225 | `declaration-track:18891fb96c2d21b9d3594c17607f49d00bcaac31194d5d972aca82223798a36a` |
| 16 | `theorem` | [normalizedRectangleIndex_eq_expected](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/normalizedrectangleindex-eq-expected--4c9dbf5a4cf3ce0084878c06.md) | 241 | `result-track:4c9dbf5a4cf3ce0084878c068cc2b32e16cc1961c149ef5e53181447a537b7ba` |
| 17 | `def` | [toCanonicalRectangleIndexEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/declarations/tocanonicalrectangleindexenclosure--71728ddac48b8e7848a1e4d4.md) | 248 | `declaration-track:71728ddac48b8e7848a1e4d498cedb04f888e75ef22babd0f88db9e266705fc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
