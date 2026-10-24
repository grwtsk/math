# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Dyadic.Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b49a0582af90a227756a5766cfc8d87e5c0b507c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b49a0582af90a227756a5766cfc8d87e5c0b507c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [two_pow_floor_logb_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/two-pow-floor-logb-le--61f458fbfa75173d6ea4bd21.md) | 36 | `result-track:61f458fbfa75173d6ea4bd21c5403b0f630ce207af196cab4c9d7a8ce02aa252` |
| 2 | `lemma` | [lt_two_pow_floor_logb_add_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/lt-two-pow-floor-logb-add-one--cfa4b4bc8327c662efd53c74.md) | 48 | `result-track:cfa4b4bc8327c662efd53c747531864b1afde96a4869eec1f07629a027cf9b12` |
| 3 | `lemma` | [dyadicShell_lower_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/dyadicshell-lower-bound--fd4e6c74c2b99150addab837.md) | 58 | `result-track:fd4e6c74c2b99150addab8371bc001e07b5d9af0a8207ce65526f99d72ac62ae` |
| 4 | `lemma` | [dyadicShell_upper_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/dyadicshell-upper-bound--d01016602f104695052c823d.md) | 74 | `result-track:d01016602f104695052c823d9f3fa12ecbad9c21eb1a9a8de9be4c11db158375` |
| 5 | `lemma` | [exists_nat_le_two_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/exists-nat-le-two-pow--048f166e83fd62d31ed86621.md) | 90 | `result-track:048f166e83fd62d31ed866210a4766445eac51a9892dc471b005b1920a4cbec2` |
| 6 | `lemma` | [one_le_dyadicRadius_succ_of_inv_le_two_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/one-le-dyadicradius-succ-of-inv-le-two-pow--865416697e7d42bc49154d48.md) | 97 | `result-track:865416697e7d42bc49154d481bc7b1449832b14bf0d715f701d1196cf9e54c1e` |
| 7 | `lemma` | [one_add_abs_two_mul_dyadicRadius_rpow_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/one-add-abs-two-mul-dyadicradius-rpow-le--24de40eab7ec12c440ee58c3.md) | 116 | `result-track:24de40eab7ec12c440ee58c3f6180beb531bc09fe177a561f8350ba97b36369b` |
| 8 | `lemma` | [tsum_inv_rpow_le_card_mul_of_lower_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/tsum-inv-rpow-le-card-mul-of-lower-bound--0d9f692b0bae764f8b1dca96.md) | 186 | `result-track:0d9f692b0bae764f8b1dca964e8373f45a2927e0a7d2add196846ebe7bba305d` |
| 9 | `lemma` | [inv_dyadicRadius_rpow_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/inv-dyadicradius-rpow-eq--5c2d4262e79cb25127f7e33f.md) | 200 | `result-track:5c2d4262e79cb25127f7e33f1b4946b93f55420ca345b895ac4fcd2ed87e213c` |
| 10 | `lemma` | [two_rpow_sub_eq_mul_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/two-rpow-sub-eq-mul-neg--ae4a5ae5ecdd164872ae6f9f.md) | 232 | `result-track:ae4a5ae5ecdd164872ae6f9f9d79e46738a84f44f683ed9f6e1e93c45bc19135` |
| 11 | `lemma` | [two_rpow_sub_pow_eq_mul_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/two-rpow-sub-pow-eq-mul-pow--08ce3cb0218d0442cf7ee2a0.md) | 240 | `result-track:08ce3cb0218d0442cf7ee2a09df2b0aae360a164113f71fe0641d92b148439d7` |
| 12 | `lemma` | [dyadic_growth_inv_term_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/dyadic-growth-inv-term-eq--bf78e580a3132a12e3ee4b04.md) | 245 | `result-track:bf78e580a3132a12e3ee4b048ea36c1ee7d8eb16739a7ddc7b6692aa6faeb12e` |
| 13 | `lemma` | [dyadic_trailing_inv_term_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/dyadic-trailing-inv-term-le--6001dd805d17092a094675e7.md) | 256 | `result-track:6001dd805d17092a094675e7580131a9caf76d9d0a184afe9c10cc05d56af0ca` |
| 14 | `lemma` | [dyadic_growth_mass_mul_inv_le_geometric](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/dyadic-growth-mass-mul-inv-le-geometric--313e285c24ab1f058d2b86b4.md) | 272 | `result-track:313e285c24ab1f058d2b86b4c79a22ec3918b7ea34b7465f3b212ec261609f36` |
| 15 | `lemma` | [two_geometric_shift_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Dyadic/Varianteeeabf76ec18f4df163e7e1f286d5cd8eb3eba1a83ed8f6c7d355a6b8a3f19a8.lean/declarations/two-geometric-shift-add--68b6387215fc9226d15bf166.md) | 317 | `result-track:68b6387215fc9226d15bf166fd4465627e581f10312ddb270c7d622f8b875be4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
