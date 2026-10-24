# Verification target: GRWTSK.NumberTheory.GaussEisensteinLemmas.Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc54faba7afc40e533581d7dca05000d2498378f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc54faba7afc40e533581d7dca05000d2498378f`.

Source path: `GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/declarations/macro-rules--a31960ca035e182f0c52b995.md) | 22 | `declaration-track:a31960ca035e182f0c52b995856fd5440bf59d10a66d5cf8556cfada924d8e7b` |
| 2 | `theorem` | [Ico_map_valMinAbs_natAbs_eq_Ico_map_id](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/declarations/ico-map-valminabs-natabs-eq-ico-map-id--fc616d8702d59fcfc2978cfe.md) | 31 | `result-track:fc616d8702d59fcfc2978cfe56afe972fbf4216e8a522306587e91f9eae195a4` |
| 3 | `theorem` | [gauss_lemma_aux₁](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/declarations/gauss-lemma-aux--b34c151883e938dfcc529264.md) | 65 | `result-track:b34c151883e938dfcc529264b75b6363f46d1004a79a2683e09926d0f2fb134a` |
| 4 | `theorem` | [gauss_lemma_aux](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/declarations/gauss-lemma-aux--1bbfcf800df10329b2cb3bd4.md) | 96 | `result-track:1bbfcf800df10329b2cb3bd4e8832fac0935632613b0afae8fc123b687286a63` |
| 5 | `theorem` | [gauss_lemma](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/declarations/gauss-lemma--ccedd16bfdc3e997aceaf4a0.md) | 107 | `result-track:ccedd16bfdc3e997aceaf4a099bd344fe6f5b74667ec1207a4be8218f22e1b35` |
| 6 | `theorem` | [eisenstein_lemma_aux₁](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/declarations/eisenstein-lemma-aux--154634887e27f8c06732d7e9.md) | 120 | `result-track:154634887e27f8c06732d7e969fb9b6e2237146b0ff337e08ce4c80b04429768` |
| 7 | `theorem` | [eisenstein_lemma_aux](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/declarations/eisenstein-lemma-aux--9b864b6b9a7b77af1576c53e.md) | 148 | `result-track:9b864b6b9a7b77af1576c53e0a5ca4d6a185b3ad24d3cec84e02c38cbd5b2be5` |
| 8 | `theorem` | [div_eq_filter_card](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/declarations/div-eq-filter-card--12c10c35090737a4964175fd.md) | 159 | `result-track:12c10c35090737a4964175fddb167b1e766686833eaa06f6dc64b4669e6230b1` |
| 9 | `theorem` | [sum_Ico_eq_card_lt](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/declarations/sum-ico-eq-card-lt--fd6b03653fd347ba6ff37cfe.md) | 171 | `result-track:fd6b03653fd347ba6ff37cfee10d0476477a4c3ba2e41dffe9fdfac56598e739` |
| 10 | `theorem` | [sum_mul_div_add_sum_mul_div_eq_mul](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/declarations/sum-mul-div-add-sum-mul-div-eq-mul--dbaf064174450833d64a98ce.md) | 201 | `result-track:dbaf064174450833d64a98ce784f906a7ebb9e0b0275af71fdae6cf9538c49bd` |
| 11 | `theorem` | [eisenstein_lemma](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/declarations/eisenstein-lemma--06142508d8613b6c3f80ad68.md) | 244 | `result-track:06142508d8613b6c3f80ad681c2cf05d6dd58f6367962db2628b9a723e566cf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
