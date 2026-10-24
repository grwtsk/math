# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Card.Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "983e299b3eb549e7ae600e231e98a258df7e4390",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `983e299b3eb549e7ae600e231e98a258df7e4390`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sym` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [e1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/declarations/e1--2e598dfd2ce5b925a9cd3f73.md) | 67 | `declaration-track:2e598dfd2ce5b925a9cd3f731bb45afddac92089041c366d6a3f4ed0c45e5af4` |
| 2 | `def` | [e2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/declarations/e2--94e5ad7a27c9e76d331aa1d7.md) | 77 | `declaration-track:94e5ad7a27c9e76d331aa1d762d4fe78cd4a846702a807bbb130ce653a54d127` |
| 3 | `theorem` | [card_sym_fin_eq_multichoose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/declarations/card-sym-fin-eq-multichoose--e6e9872a73c1d1bce886bf6c.md) | 90 | `result-track:e6e9872a73c1d1bce886bf6cad51b22c2e3a519f966ba5c506ad95d088208ae3` |
| 4 | `theorem` | [card_sym_eq_multichoose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/declarations/card-sym-eq-multichoose--8751a26c9fe2897f88140066.md) | 102 | `result-track:8751a26c9fe2897f88140066ac1131d9c58e519c41e5d13f5d5e8dc68685f767` |
| 5 | `theorem` | [card_sym_eq_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/declarations/card-sym-eq-choose--1e9cd97a9ce183343da88616.md) | 109 | `result-track:1e9cd97a9ce183343da88616be1849708b54e39a833ba70aed025ae069b31694` |
| 6 | `theorem` | [card_image_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/declarations/card-image-diag--1b080990e1c773cd9b825869.md) | 122 | `result-track:1b080990e1c773cd9b825869055fc41ddd9d3c0cf1edb6e222cae621291e6cb9` |
| 7 | `lemma` | [two_mul_card_image_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/declarations/two-mul-card-image-offdiag--ca340a12c55b9a61be81b931.md) | 130 | `result-track:ca340a12c55b9a61be81b93185076160a3615cf1d6e725143683a2304b5ca36b` |
| 8 | `theorem` | [card_image_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/declarations/card-image-offdiag--84b7f1fea9c51a4985e8accb.md) | 152 | `result-track:84b7f1fea9c51a4985e8accbf83ff438229da373276ce1e798cf7176b06b27a7` |
| 9 | `theorem` | [card_subtype_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/declarations/card-subtype-diag--6220b297bb66bf80e13a5a6a.md) | 156 | `result-track:6220b297bb66bf80e13a5a6a9f71542a46a0f8c4698eb1b2d1f06c7776a4445b` |
| 10 | `theorem` | [card_subtype_not_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/declarations/card-subtype-not-diag--e0ce1d88927f2186b6e71e3e.md) | 164 | `result-track:e0ce1d88927f2186b6e71e3e52557124a95c6246d2267bbfaa4387c417ec29df` |
| 11 | `theorem` | [card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/declarations/card--d81817d8dde61ba45cb58af0.md) | 174 | `result-track:d81817d8dde61ba45cb58af039470d22f857f48034719659f70673c443faa01b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
