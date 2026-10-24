# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionContact

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fcff964376ca959654c63336c96d5ad4a2d4b88",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fcff964376ca959654c63336c96d5ad4a2d4b88`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionTranslation`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyQuadraticJet`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [freyContactScalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/freycontactscalar--7a4ad950f0438bcce72beea3.md) | 22 | `declaration-track:7a4ad950f0438bcce72beea393438f36716f2c6d3563dc61ca0188d8f60d1ea6` |
| 2 | `def` | [freyContactRescale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/freycontactrescale--5389f9c136e962d725f1b701.md) | 25 | `declaration-track:5389f9c136e962d725f1b701ae2c54dbf8e63197f5375123cc6aff215130bcd3` |
| 3 | `theorem` | [freyContactRescale_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/freycontactrescale-scalar--924f1df2433e34fcbc2c01d3.md) | 29 | `result-track:924f1df2433e34fcbc2c01d36b272ac9a5751f847b74b82f3285ef22dbdc3947` |
| 4 | `theorem` | [freyContactRescale_parameter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/freycontactrescale-parameter--c544f2dbb05882c1ff68993f.md) | 33 | `result-track:c544f2dbb05882c1ff68993f9b40c7505a277f3bcfd59d7767a4188e21f9f27f` |
| 5 | `theorem` | [freyContactRescale_comp](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/freycontactrescale-comp--a5e4df0fde89b6f72331b58f.md) | 38 | `result-track:a5e4df0fde89b6f72331b58fdddc8e575473ae00aca0670277c43b79abafc419` |
| 6 | `theorem` | [freyContactRescale_one](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/freycontactrescale-one--a19f8b0c7929baf2ecd4c401.md) | 50 | `result-track:a19f8b0c7929baf2ecd4c40101b64de3fbcb8866cb17fd907641ad0b53902215` |
| 7 | `def` | [freyContactRescaleEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/freycontactrescaleequiv--213661f09e25a68bc63b1de8.md) | 59 | `declaration-track:213661f09e25a68bc63b1de8a53a21f2d7dcae41afdaefe84bbebe477571f82b` |
| 8 | `def` | [PrimitiveAdditiveTriple.freyT0ContactScale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/primitiveadditivetriple-freyt0contactscale--3eb28143d4704f79b9439b43.md) | 75 | `declaration-track:3eb28143d4704f79b9439b43c884d602f459d2dc59f85cdc9e65903a6567564b` |
| 9 | `theorem` | [PrimitiveAdditiveTriple.freyT0ContactScale_inverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/primitiveadditivetriple-freyt0contactscale-inverse--537f57dcb544c3a87ec00ae9.md) | 78 | `result-track:537f57dcb544c3a87ec00ae92094854575aa87181728354150def56932e3b588` |
| 10 | `def` | [PrimitiveAdditiveTriple.freyT0ContactPullback](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/primitiveadditivetriple-freyt0contactpullback--64ba6ca9d4d91e0f2e6ba68e.md) | 87 | `declaration-track:64ba6ca9d4d91e0f2e6ba68e018ecae33cd1e658208b774a485ec4e4b68850dd` |
| 11 | `theorem` | [freyContactRescale_quadratic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/freycontactrescale-quadratic--27bac2274a21f5f6278fbc0f.md) | 93 | `result-track:27bac2274a21f5f6278fbc0f198bcd91e959ccbdd3ee59605187072e12781445` |
| 12 | `theorem` | [PrimitiveAdditiveTriple.freyQuadraticX_Ta_expansion](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/primitiveadditivetriple-freyquadraticx-ta-expansion--7dc65ecfead7637391e3a080.md) | 104 | `result-track:7dc65ecfead7637391e3a080f6f492a43e50f91684d066419f2831dd3614fef8` |
| 13 | `theorem` | [PrimitiveAdditiveTriple.freyQuadraticX_Tb_expansion](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/primitiveadditivetriple-freyquadraticx-tb-expansion--536caf370f3282a862f99277.md) | 110 | `result-track:536caf370f3282a862f992771e6ed389c8bc9fc93bf6de00025edebd220beaf5` |
| 14 | `def` | [PrimitiveAdditiveTriple.freyTaContactInverseX](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/primitiveadditivetriple-freytacontactinversex--f927927bf4862e9f1a61954b.md) | 117 | `declaration-track:f927927bf4862e9f1a61954b7afbb2f3ef6636083e172b040aec4dd547278f7e` |
| 15 | `theorem` | [PrimitiveAdditiveTriple.freyTaContactInverseX_mul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/primitiveadditivetriple-freytacontactinversex-mul--bfdfe06b2fe3a4079a5afa3f.md) | 124 | `result-track:bfdfe06b2fe3a4079a5afa3f177d55355176cbcbff344bbff1b9e437f743d13e` |
| 16 | `theorem` | [PrimitiveAdditiveTriple.freyT0ContactPullback_X](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/primitiveadditivetriple-freyt0contactpullback-x--4be6a9d1e59ee319ab6ba7e5.md) | 147 | `result-track:4be6a9d1e59ee319ab6ba7e5fd0a6787a32cc4a91f9eb7de66a178bbb0039111` |
| 17 | `theorem` | [PrimitiveAdditiveTriple.freyT0ContactPullback_Y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/primitiveadditivetriple-freyt0contactpullback-y--4f2ce2219ef6138626cb5833.md) | 176 | `result-track:4f2ce2219ef6138626cb58335dd6b00fb3f423bdacea134917f2161976f5e37a` |
| 18 | `theorem` | [freyT0Contact_nonidentity_scale_fixture](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/declarations/freyt0contact-nonidentity-scale-fixture--e5a4b4c266b59f5e51bca78f.md) | 208 | `result-track:e5a4b4c266b59f5e51bca78f3e01a8aa196994a05ca005aefbfc46a918608198` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
