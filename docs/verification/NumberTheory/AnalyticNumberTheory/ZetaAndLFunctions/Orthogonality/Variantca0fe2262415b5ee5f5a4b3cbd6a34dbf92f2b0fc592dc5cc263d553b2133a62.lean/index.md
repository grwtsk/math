# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Orthogonality.Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae59f209823d9827a46393a2840f92fddf9bf9fb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae59f209823d9827a46393a2840f92fddf9bf9fb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DirichletCharacter.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Duality` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [fintype](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62.lean/declarations/fintype--55e444dd200e1825ec4e224a.md) | 23 | `declaration-track:55e444dd200e1825ec4e224a5419d52a94999b46350cb1313970d6c4600e0259` |
| 2 | `lemma` | [mulEquiv_units](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62.lean/declarations/mulequiv-units--c2e51d56905c6371d6c86a76.md) | 31 | `result-track:c2e51d56905c6371d6c86a76a3094583fe74a9c4a1229837d4dbb899c9e98549` |
| 3 | `lemma` | [card_eq_totient_of_hasEnoughRootsOfUnity](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62.lean/declarations/card-eq-totient-of-hasenoughrootsofunity--f8678a0069585ad9633edd8c.md) | 36 | `result-track:f8678a0069585ad9633edd8c403019e154463d6b16378ae0d06621b374484716` |
| 4 | `theorem` | [exists_apply_ne_one_of_hasEnoughRootsOfUnity](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62.lean/declarations/exists-apply-ne-one-of-hasenoughrootsofunity--0c24b952c213d4ab5b2264e4.md) | 46 | `result-track:0c24b952c213d4ab5b2264e435b828e1cb0c3067114b1cdda623a605e688b031` |
| 5 | `theorem` | [sum_characters_eq_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62.lean/declarations/sum-characters-eq-zero--7323e6d417d206dc6f833bed.md) | 55 | `result-track:7323e6d417d206dc6f833bedcdfe34bd80d1b26f8fa6045c81fd4db74f20aef1` |
| 6 | `theorem` | [sum_characters_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62.lean/declarations/sum-characters-eq--0e02b46624a9b18643e778c3.md) | 65 | `result-track:0e02b46624a9b18643e778c3ca732405fc3dd3265eda1ade02f12d1a2e3dc7c0` |
| 7 | `theorem` | [sum_char_inv_mul_char_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62.lean/declarations/sum-char-inv-mul-char-eq--59c1176d7f6928c3fb0cdb05.md) | 76 | `result-track:59c1176d7f6928c3fb0cdb05a455127056eb3370ffed6384544db544f961a98f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
