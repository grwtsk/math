# Verification target: GRWTSK.Algebra.LinearAlgebra.Goursat.Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f67ed2725a9485630d3fdbea898a7078d2c9cef7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Goursat/Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f67ed2725a9485630d3fdbea898a7078d2c9cef7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Goursat/Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Goursat/Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Goursat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goursatFst](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8.lean/declarations/goursatfst--08f7ae6239aeaa17e7eaec62.md) | 35 | `declaration-track:08f7ae6239aeaa17e7eaec628a0776636bcce0f74070bfac9a756b127948c5c8` |
| 2 | `def` | [goursatSnd](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8.lean/declarations/goursatsnd--ae09fd0600d86136a24a9cc3.md) | 44 | `declaration-track:ae09fd0600d86136a24a9cc3f0b3858a57a728748f7d13a3c815c2a36503f9a3` |
| 3 | `lemma` | [goursatFst_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8.lean/declarations/goursatfst-toaddsubgroup--ec3490d0a54b1f38abc1917c.md) | 47 | `result-track:ec3490d0a54b1f38abc1917c98c134ca117fe03c3b604ba3718137a9cb390613` |
| 4 | `lemma` | [goursatSnd_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8.lean/declarations/goursatsnd-toaddsubgroup--0c63b0476b86ac7e5ea85171.md) | 52 | `result-track:0c63b0476b86ac7e5ea85171bb09f75294f8aa813bdc19fb422f44c42a18f6df` |
| 5 | `lemma` | [goursatFst_prod_goursatSnd_le](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8.lean/declarations/goursatfst-prod-goursatsnd-le--f8b4ff4b1314edf2d19fbc55.md) | 58 | `result-track:f8b4ff4b1314edf2d19fbc55ce5fd8e30c4f21d517ed54e489403ac0914c1b1c` |
| 6 | `lemma` | [goursat_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8.lean/declarations/goursat-surjective--39776dc367c753cb5a410efc.md) | 70 | `result-track:39776dc367c753cb5a410efcc93c20a305086e751d296463ed46c6f1fefbdc59` |
| 7 | `lemma` | [goursat](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variantb8ad7bd96bd28b61e49cd73c5a7d9ae8e418341531333314102ce60d22ec0bf8.lean/declarations/goursat--e345155d65600333663d2739.md) | 98 | `result-track:e345155d65600333663d27398392a12b36fcfa4032b51db60715f3b5d8031fd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
