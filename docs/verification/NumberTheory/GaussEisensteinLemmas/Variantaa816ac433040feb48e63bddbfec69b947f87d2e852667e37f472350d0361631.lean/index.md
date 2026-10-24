# Verification target: GRWTSK.NumberTheory.GaussEisensteinLemmas.Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4c6859663b5b9fb454c7f509fed5ad6dcf4c297",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4c6859663b5b9fb454c7f509fed5ad6dcf4c297`.

Source path: `GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/declarations/macro-rules--de7ae475051509386817fb8e.md) | 30 | `declaration-track:de7ae475051509386817fb8e0a40d0b230727f752f3fc33e585816acbd8eb8ed` |
| 2 | `theorem` | [Ico_map_valMinAbs_natAbs_eq_Ico_map_id](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/declarations/ico-map-valminabs-natabs-eq-ico-map-id--fe5662d10ff59f25a4bf277a.md) | 39 | `result-track:fe5662d10ff59f25a4bf277a586890c4b6b2c79f9d39c4c15301810166501537` |
| 3 | `theorem` | [gauss_lemma_aux₁](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/declarations/gauss-lemma-aux--88b88ff7bacb070fc7f886ff.md) | 73 | `result-track:88b88ff7bacb070fc7f886ff3cb90c045a2be4ac36fe27ace85f33d06493193f` |
| 4 | `theorem` | [gauss_lemma_aux](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/declarations/gauss-lemma-aux--fdf0b6064fc29dfe7599b7c8.md) | 104 | `result-track:fdf0b6064fc29dfe7599b7c84ebb78e8e9e0b481c5e01e599b09ab01179d2be7` |
| 5 | `theorem` | [gauss_lemma](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/declarations/gauss-lemma--06046c08ca2eb6bced51f953.md) | 115 | `result-track:06046c08ca2eb6bced51f9530f8f915ccb58d4adb22776bc5423814c9c23a0aa` |
| 6 | `theorem` | [eisenstein_lemma_aux₁](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/declarations/eisenstein-lemma-aux--ccfe1d402cc9fac3ead681e1.md) | 128 | `result-track:ccfe1d402cc9fac3ead681e1337e8a224788aa16188c5f82006eb6d0ae40b68f` |
| 7 | `theorem` | [eisenstein_lemma_aux](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/declarations/eisenstein-lemma-aux--2b66595189267aa589786854.md) | 156 | `result-track:2b66595189267aa589786854ef79054c5a24c51315d5f6551d224878bdcfc7ce` |
| 8 | `theorem` | [div_eq_filter_card](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/declarations/div-eq-filter-card--0f96e1ffe386f457db8d2e33.md) | 167 | `result-track:0f96e1ffe386f457db8d2e332568362c1772fa35cf01f313b89edb41393fc2b7` |
| 9 | `theorem` | [sum_Ico_eq_card_lt](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/declarations/sum-ico-eq-card-lt--658b1cb171444b68c42d90f8.md) | 179 | `result-track:658b1cb171444b68c42d90f867f83217c234b6214e2eac2031eec62399f376fd` |
| 10 | `theorem` | [sum_mul_div_add_sum_mul_div_eq_mul](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/declarations/sum-mul-div-add-sum-mul-div-eq-mul--a1ed3fc785679f0eaf32eedb.md) | 209 | `result-track:a1ed3fc785679f0eaf32eedb27461138cac7c3d5270ed998ef5ed256d4026c52` |
| 11 | `theorem` | [eisenstein_lemma](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/declarations/eisenstein-lemma--2f0c3731ab26d5defd1039eb.md) | 252 | `result-track:2f0c3731ab26d5defd1039ebfcc0a9b9027c261c01ef5974216e05cbea479eea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
