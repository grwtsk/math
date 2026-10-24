# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GaussEisensteinLemmas.Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e8fcfcba64e50763ab86f4f1b4a5fb820074a59",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e8fcfcba64e50763ab86f4f1b4a5fb820074a59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Factorial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ico_map_valMinAbs_natAbs_eq_Ico_map_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/declarations/ico-map-valminabs-natabs-eq-ico-map-id--b3170d1ea30f14690fd174ca.md) | 29 | `result-track:b3170d1ea30f14690fd174ca78783c87d09c7325af2f83e90538c16121855fa0` |
| 2 | `theorem` | [gauss_lemma_aux₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/declarations/gauss-lemma-aux--1e2e6f5f5a8c12be62f36e88.md) | 61 | `result-track:1e2e6f5f5a8c12be62f36e88f68cbac31546ff874348cbb1b4f0b93aee294538` |
| 3 | `theorem` | [gauss_lemma_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/declarations/gauss-lemma-aux--dc57637b1ef4764570494b17.md) | 90 | `result-track:dc57637b1ef4764570494b1727223642b1862199af75710067bb2d9cf4854803` |
| 4 | `theorem` | [gauss_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/declarations/gauss-lemma--56a499204d32ad45aa1941ac.md) | 100 | `result-track:56a499204d32ad45aa1941ac4171369874a15c77356f29197ddda2eafe6f91e9` |
| 5 | `theorem` | [eisenstein_lemma_aux₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/declarations/eisenstein-lemma-aux--0d8b556448b0bff8475b369e.md) | 110 | `result-track:0d8b556448b0bff8475b369ed4ac088b1626b80f8d974e4337d1d8bc9822072d` |
| 6 | `theorem` | [eisenstein_lemma_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/declarations/eisenstein-lemma-aux--852a40b729d693a906f3dfa4.md) | 139 | `result-track:852a40b729d693a906f3dfa4b80e713c795d5d3e2020ebc21d9c943bdfcbb568` |
| 7 | `theorem` | [div_eq_filter_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/declarations/div-eq-filter-card--3b056b0749af5b42228d9b83.md) | 149 | `result-track:3b056b0749af5b42228d9b83f55b39b0d26baad23ea32b79ee4f09d1401387cd` |
| 8 | `theorem` | [sum_Ico_eq_card_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/declarations/sum-ico-eq-card-lt--5bdbbb92ae61e1d3f75e6c59.md) | 160 | `result-track:5bdbbb92ae61e1d3f75e6c598dca6befd1ac5ce797f01db34f3ae0609c2d250a` |
| 9 | `theorem` | [sum_mul_div_add_sum_mul_div_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/declarations/sum-mul-div-add-sum-mul-div-eq-mul--35492917be229bca8c6a4ba3.md) | 183 | `result-track:35492917be229bca8c6a4ba34a77c1d9ced44aa9e5d93d3e6d749415ac5536bf` |
| 10 | `theorem` | [eisenstein_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/declarations/eisenstein-lemma--ea532bc636c28d9afba56486.md) | 218 | `result-track:ea532bc636c28d9afba564863a5a4da960dc72fc45af4933fc28e759ee2d4eaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
