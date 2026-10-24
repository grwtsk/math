# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ValMinAbs.Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e35d071eb7eb169beccefdc3ee4125dfb0046f7e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e35d071eb7eb169beccefdc3ee4125dfb0046f7e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs--e6fd93bd2e95708dabec2892.md) | 27 | `declaration-track:e6fd93bd2e95708dabec2892791d852213b0d7e8b796a9c7262048f893efc1db` |
| 2 | `lemma` | [valMinAbs_def_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-def-zero--5d42ecdf5d7eda4410796dd8.md) | 31 | `result-track:5d42ecdf5d7eda4410796dd8875ff183a905fe01090189574dd3a87fd12cb87e` |
| 3 | `lemma` | [valMinAbs_def_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-def-pos--b2f39bab7f851c45310aeeea.md) | 33 | `result-track:b2f39bab7f851c45310aeeeafa0029a85e96b34b9e7be7d0d033f52b6c83f819` |
| 4 | `lemma` | [coe_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/coe-valminabs--894cb5b6d53820b9188e7807.md) | 39 | `result-track:894cb5b6d53820b9188e780735262b01f4eca953a87b036d64c5d33c691f7acb` |
| 5 | `lemma` | [injective_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/injective-valminabs--23ff8ec4a20b17635c356f0b.md) | 48 | `result-track:23ff8ec4a20b17635c356f0ba43ffff68785fff5bce7f9e0e5c75d72d008a651` |
| 6 | `lemma` | [valMinAbs_nonneg_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-nonneg-iff--32c144b766f07d261ed7ad38.md) | 51 | `result-track:32c144b766f07d261ed7ad383dec2d2576fc398d6c43e36f66d030c9ac2b715b` |
| 7 | `lemma` | [valMinAbs_mul_two_eq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-mul-two-eq-iff--a442bfed8612fb9da6f76393.md) | 56 | `result-track:a442bfed8612fb9da6f76393d0d74a0e15088af09cc2bd038586efb4455444ad` |
| 8 | `lemma` | [valMinAbs_mem_Ioc](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-mem-ioc--b97758e59bf2221f015057c1.md) | 70 | `result-track:b97758e59bf2221f015057c1cc4dc09898fc006d381fa401e26cb85be7a4e9a6` |
| 9 | `lemma` | [valMinAbs_spec](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-spec--0b3cbc7a03145fcbb4ac8d93.md) | 79 | `result-track:0b3cbc7a03145fcbb4ac8d93a96647d461d6eee61d0b2ade71918e8c75a1a098` |
| 10 | `lemma` | [natAbs_valMinAbs_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/natabs-valminabs-le--348fa91ed0260f6af11c6d78.md) | 91 | `result-track:348fa91ed0260f6af11c6d785aeb5debe6518b8b5d4f4f82eec0cfc4939e30ad` |
| 11 | `lemma` | [valMinAbs_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-zero--47e7ef9ca0586effa1658016.md) | 100 | `result-track:47e7ef9ca0586effa16580166df32cd3abe6284625202d15d1a28eef21ca8b18` |
| 12 | `lemma` | [valMinAbs_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-eq-zero--6ce2ddfd566adaf42fab40e4.md) | 105 | `result-track:6ce2ddfd566adaf42fab40e46bee1388a1f260ce4a878ab3a208d3f2a214d2cf` |
| 13 | `lemma` | [natCast_natAbs_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/natcast-natabs-valminabs--d0da9c1ba0d3b7ac7d9f647f.md) | 111 | `result-track:d0da9c1ba0d3b7ac7d9f647fa0610c81576aad38a79bbeea3b7a2d2aae288200` |
| 14 | `lemma` | [valMinAbs_neg_of_ne_half](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-neg-of-ne-half--e618a51b8c3ca896920d32c4.md) | 122 | `result-track:e618a51b8c3ca896920d32c4b564f57e1cdd913760d3e36a121a55c26f80822b` |
| 15 | `lemma` | [natAbs_valMinAbs_neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/natabs-valminabs-neg--d3a04815b27891319940feed.md) | 133 | `result-track:d3a04815b27891319940feedd345b39f6318d0b2c88c2d2ef4c4dacbaae696e3` |
| 16 | `lemma` | [val_eq_ite_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/val-eq-ite-valminabs--b539e77c9b1905b32a2bea9c.md) | 138 | `result-track:b539e77c9b1905b32a2bea9c66f6f5387a80c289e9d3a1d4f2cafffa56900b4f` |
| 17 | `lemma` | [prime_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/prime-ne-zero--d3d9e695e5f1176198486f68.md) | 143 | `result-track:d3d9e695e5f1176198486f686e0d1e907dcf9ba4f174571ab1d39e12e9d34513` |
| 18 | `lemma` | [valMinAbs_natAbs_eq_min](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-natabs-eq-min--75c3497b1b9e5c2ce15c034a.md) | 150 | `result-track:75c3497b1b9e5c2ce15c034afcb550f0641104b07de62870fde351945b762910` |
| 19 | `lemma` | [valMinAbs_natCast_of_le_half](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-natcast-of-le-half--949cfc0eaf2973e1dffebdeb.md) | 156 | `result-track:949cfc0eaf2973e1dffebdeb74e18688be6f3eca1826ef61bde9a44e52c8ea26` |
| 20 | `lemma` | [valMinAbs_natCast_of_half_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-natcast-of-half-lt--b6402dabee9f8c93ecdffcee.md) | 162 | `result-track:b6402dabee9f8c93ecdffcee7324f8fda02d125c720d896191564cb94d44a2df` |
| 21 | `lemma` | [valMinAbs_natCast_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/valminabs-natcast-eq-self--5000e4b9c3e89cb52589c123.md) | 169 | `result-track:5000e4b9c3e89cb52589c12327cdff7e4d9b7be4459b78bc28a64101a98e4523` |
| 22 | `lemma` | [natAbs_valMinAbs_add_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/declarations/natabs-valminabs-add-le--67d75dd8afd836707640d4a3.md) | 174 | `result-track:67d75dd8afd836707640d4a3deeb7e0c4b47ba9f2feb39e8ed7945869e319b86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
