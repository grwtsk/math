# Verification target: GRWTSK.NumberTheory.GaussEisensteinLemmas.Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2184bbe6ea6367c6054b500d9bb66c214cb5f83d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2184bbe6ea6367c6054b500d9bb66c214cb5f83d`.

Source path: `GRWTSK/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ico_map_valMinAbs_natAbs_eq_Ico_map_id](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/declarations/ico-map-valminabs-natabs-eq-ico-map-id--f74cdea723711a867d9af79d.md) | 32 | `result-track:f74cdea723711a867d9af79d0fb5873cf89c7a3ce67e91afe21e843cc33b6a89` |
| 2 | `theorem` | [gauss_lemma_aux₁](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/declarations/gauss-lemma-aux--b69807ed7013e3cf4c9af196.md) | 62 | `result-track:b69807ed7013e3cf4c9af196f42e998cf18f274248b168eca33158cdb4ce5431` |
| 3 | `theorem` | [gauss_lemma_aux](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/declarations/gauss-lemma-aux--7978f1dff0e03d139a544357.md) | 85 | `result-track:7978f1dff0e03d139a544357ae4e1afff3070e732b1bd54bb84a74bccca67076` |
| 4 | `theorem` | [gauss_lemma](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/declarations/gauss-lemma--f708df558f823cb6366dbe4d.md) | 95 | `result-track:f708df558f823cb6366dbe4d45bf785bd05e9368ed6d1adf2f8897cd9e8aeff3` |
| 5 | `theorem` | [eisenstein_lemma_aux₁](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/declarations/eisenstein-lemma-aux--3d25cd02ae8a868afad341d1.md) | 105 | `result-track:3d25cd02ae8a868afad341d1b7bbad11e47aa568fe924439d326be8c824e71f2` |
| 6 | `theorem` | [eisenstein_lemma_aux](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/declarations/eisenstein-lemma-aux--bfeaaa74cc758b532aa8a1f1.md) | 133 | `result-track:bfeaaa74cc758b532aa8a1f111780f7c48a084346b7eaeb2247950c220369487` |
| 7 | `theorem` | [div_eq_filter_card](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/declarations/div-eq-filter-card--d8905a8a87d4a8a36a6b1c01.md) | 143 | `result-track:d8905a8a87d4a8a36a6b1c013829b535d790bfbc6135e3840f296b73c8a061b4` |
| 8 | `theorem` | [sum_Ico_eq_card_lt](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/declarations/sum-ico-eq-card-lt--94a5a9aabe79d0db67cc2b2a.md) | 154 | `result-track:94a5a9aabe79d0db67cc2b2a15bbcfacccc01f0079376340a10e5b5e7de8b809` |
| 9 | `theorem` | [sum_mul_div_add_sum_mul_div_eq_mul](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/declarations/sum-mul-div-add-sum-mul-div-eq-mul--00d8783fa6156b230092dd9b.md) | 171 | `result-track:00d8783fa6156b230092dd9bea70df604862117d67ad96d6cc5528b3e4887294` |
| 10 | `theorem` | [eisenstein_lemma](../../../../mathematics/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/declarations/eisenstein-lemma--532c456aafe1bd1f56db80bf.md) | 205 | `result-track:532c456aafe1bd1f56db80bf075836ae4688a4b1e0d1af0088985cad2a52a695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
