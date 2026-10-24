# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionCompletion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89bd73be47e037f7231ba1b13900da3fa28f79ef",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89bd73be47e037f7231ba1b13900da3fa28f79ef`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.RingTheory.AdicCompletion.CompatibleEquiv`](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionUnlocalizedJets`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionUnlocalizedJets.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalCompletion`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/index.md) — import line 15; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quotient_compatible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/quotient-compatible--9dd66637f5bc22e0bdd84280.md) | 30 | `result-track:9dd66637f5bc22e0bdd84280122b5b755d48c3d0a9113cbda293223abec838c7` |
| 2 | `def` | [completionEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/completionequiv--d268ebaa952e74f15a2982ff.md) | 38 | `declaration-track:d268ebaa952e74f15a2982ffec914ec4e3442df077df9d81742e06cbe6bc9520` |
| 3 | `theorem` | [completion_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/completion-projection--131c5765f558f71a54bf235b.md) | 44 | `result-track:131c5765f558f71a54bf235b0ad54f7cc89cc10b9dbbdb342d0808a990eef23d` |
| 4 | `theorem` | [completion_symm_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/completion-symm-projection--fa0476dc17f7930b22910e2f.md) | 50 | `result-track:fa0476dc17f7930b22910e2fa57523e69abacba6af83e4de960ce47deb343d4a` |
| 5 | `theorem` | [completion_unique](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/completion-unique--2258ad7c23854f6673e1dd20.md) | 57 | `result-track:2258ad7c23854f6673e1dd208c6e705b5a91267f8f184b2dcecc6b2242e7012f` |
| 6 | `theorem` | [completion_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/completion-scalar--b5b83cb98a583f37f74dbdb2.md) | 72 | `result-track:b5b83cb98a583f37f74dbdb26c1ba494b1b9f75fa2b3f0074621532c5fe683d7` |
| 7 | `def` | [completionAlgEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/completionalgequiv--3df7c80fc0a22c79bd718071.md) | 85 | `declaration-track:3df7c80fc0a22c79bd718071e89eafe038ec89dcdc3c7141a8d3d67fb9f68896` |
| 8 | `theorem` | [localized_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/localized-projection--5c10cb7bf373ae4afcfed028.md) | 91 | `result-track:5c10cb7bf373ae4afcfed0287f0dc6368a9981125b5512d2fc1e47ad0493a1ab` |
| 9 | `theorem` | [localized_symm_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/localized-symm-projection--15feefd5a260ab52ed147b42.md) | 99 | `result-track:15feefd5a260ab52ed147b42dfd7fadbe72098c311ec00250a6d26302dc32e3f` |
| 10 | `def` | [coordinateImage](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/coordinateimage--76bf2f6745fce5a102b51aaf.md) | 107 | `declaration-track:76bf2f6745fce5a102b51aaf0124663cb9c8f00834ad70cfc8c822f279c17bc6` |
| 11 | `theorem` | [coordinate_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/coordinate-projection--a20b0af02748e8a04ceaf0e8.md) | 110 | `result-track:a20b0af02748e8a04ceaf0e8a1449c627d280c38b1d85d06dcaad8b833e039a6` |
| 12 | `theorem` | [completion_X_relation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/completion-x-relation--52d2e28f4dc919c1181769f2.md) | 117 | `result-track:52d2e28f4dc919c1181769f2c7adf4233193e6b0bf0f90814c2295818c7d263a` |
| 13 | `theorem` | [completion_Y_relation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/completion-y-relation--508aa5585aa695d86e599313.md) | 143 | `result-track:508aa5585aa695d86e599313fde28aa56ee253baf9baa6b558848d79439f2f93` |
| 14 | `theorem` | [completion_congruence_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/completion-congruence-iff--4db9585b7abf44885b16df47.md) | 170 | `result-track:4db9585b7abf44885b16df470fb69e73f7fc4c441973d0eb93ab809366ec4775` |
| 15 | `theorem` | [completion_zero_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/completion-zero-iff--59dcedb7cb50a384057f4056.md) | 179 | `result-track:59dcedb7cb50a384057f405637687220b6886702854df057d3ed62cffd1c4136` |
| 16 | `theorem` | [completion_layer_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/completion-layer-iff--5f791a14ac9604ce4e93b2c1.md) | 186 | `result-track:5f791a14ac9604ce4e93b2c15492d2b123faa08a6c8fce270b25c1656e1e5e23` |
| 17 | `def` | [frameA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/framea--26dad0c3ee7988cf0d642f65.md) | 195 | `declaration-track:26dad0c3ee7988cf0d642f656e8deb4214a2b7f9f9919149d9bcf60ff23eedc1` |
| 18 | `def` | [frameB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/frameb--5d7a8e79b14c4d22c9230825.md) | 199 | `declaration-track:5d7a8e79b14c4d22c92308255d0c6b6656ea0c7eeaa61db0c7b8ce0af48976ae` |
| 19 | `def` | [seriesPullback](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/seriespullback--18a3fc856728050cb1518578.md) | 205 | `declaration-track:18a3fc856728050cb151857803d717b537249f1428742b2428157f3e20309322` |
| 20 | `theorem` | [series_square](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/series-square--d1ea2cb49f330c9d76152fc3.md) | 212 | `result-track:d1ea2cb49f330c9d76152fc319803c7e925b81c113854a27e344d005c13e217f` |
| 21 | `theorem` | [series_parameter_relation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/series-parameter-relation--ffffd761e98fbb24a73e13a1.md) | 223 | `result-track:ffffd761e98fbb24a73e13a1fb96f27d56e94234f4e9666db55978b6f1ab5571` |
| 22 | `def` | [parameterEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/parameterequiv--c2485bbecfbbb0a78958fd05.md) | 247 | `declaration-track:c2485bbecfbbb0a78958fd05716fb6bddb5aa1d97bfdf8062fabb1edf46f040f` |
| 23 | `theorem` | [series_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/series-projection--96130e69434fb41364b1e8a2.md) | 255 | `result-track:96130e69434fb41364b1e8a29ab8c709fda657c972179833964a80155527fe08` |
| 24 | `theorem` | [series_filtration_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/series-filtration-iff--71683a866bbff48a5c7f59db.md) | 276 | `result-track:71683a866bbff48a5c7f59db0aa5589f8e6703c83ebaea22b3b4e98f6e5a5df0` |
| 25 | `def` | [PrimitiveAdditiveTriple.freyT0CanonicalPullback](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/primitiveadditivetriple-freyt0canonicalpullback--9d0a21df687453aaf2a7f68b.md) | 295 | `declaration-track:9d0a21df687453aaf2a7f68bfbe01b80737e0bd30ce5955a032c08eb0f4804fa` |
| 26 | `theorem` | [PrimitiveAdditiveTriple.freyT0CanonicalPullback_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/declarations/primitiveadditivetriple-freyt0canonicalpullback-projection--047485d595d08e6ddb47918d.md) | 301 | `result-track:047485d595d08e6ddb47918d0a91e843733389123a9976974de358fab408e1f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
