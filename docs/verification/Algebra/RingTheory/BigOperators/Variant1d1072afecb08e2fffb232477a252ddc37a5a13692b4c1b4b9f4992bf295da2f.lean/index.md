# Verification target: GRWTSK.Algebra.RingTheory.BigOperators.Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ed5a222e9ed29be81e595481a6f2303c45bc86d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/BigOperators/Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ed5a222e9ed29be81e595481a6f2303c45bc86d`.

Source path: `GRWTSK/Algebra/RingTheory/BigOperators/Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/BigOperators/Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Congruence.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [listSum_mem](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f.lean/declarations/listsum-mem--59ade0cc72cf0502aa24e4f2.md) | 21 | `result-track:59ade0cc72cf0502aa24e4f217b1a7fbbabbf13dd354a2a00f42301bf793510b` |
| 2 | `lemma` | [multisetSum_mem](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f.lean/declarations/multisetsum-mem--2bd304e2bf36d98c6feb6b13.md) | 26 | `result-track:2bd304e2bf36d98c6feb6b13f1628c866f3e82fe6ed9e6b7ca4f0afe1d6585e6` |
| 3 | `lemma` | [finsetSum_mem](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f.lean/declarations/finsetsum-mem--a69bae80e101ec66745eb724.md) | 31 | `result-track:a69bae80e101ec66745eb724a3b3a34144475f253c1d6ed9325edbbdfd76316c` |
| 4 | `lemma` | [listProd_mem](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f.lean/declarations/listprod-mem--2688e27f9f6ca3f41ebc5bbe.md) | 44 | `result-track:2688e27f9f6ca3f41ebc5bbe3d9fb8fb61635c66cca7e1e5743b903a7f128154` |
| 5 | `lemma` | [multiSetProd_mem](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f.lean/declarations/multisetprod-mem--80b03b3e0ef277311988a598.md) | 60 | `result-track:80b03b3e0ef277311988a5989e80083b5790933d23d6b0d7b22af2e2e6e2108f` |
| 6 | `lemma` | [finsetProd_mem](../../../../../mathematics/Algebra/RingTheory/BigOperators/Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f.lean/declarations/finsetprod-mem--c8e801d577231cba010cc2b1.md) | 65 | `result-track:c8e801d577231cba010cc2b1f06660f568e4fff9bcfcb26620d349a968c98b7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
