# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpen

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac05251cab4621d4eaec3120378a47c87e730ebe",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac05251cab4621d4eaec3120378a47c87e730ebe`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAdicQuotients`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionTranslation`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affineX](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/affinex--d747f03cd433d2a6ccb23c78.md) | 25 | `declaration-track:d747f03cd433d2a6ccb23c78e640aaf16811bd695bcc894499e3cf46f08e2456` |
| 2 | `abbrev` | [OpenCurve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/opencurve--4200633c202d8d5d08301025.md) | 28 | `declaration-track:4200633c202d8d5d083010254fa9b96dc59871584617331ff692a09d62ca947f` |
| 3 | `def` | [inclusion](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/inclusion--fed90ba6187eb304913f5ad7.md) | 30 | `declaration-track:fed90ba6187eb304913f5ad7d230c8bc129ef3075df423d9823b68694dc32d1c` |
| 4 | `def` | [scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/scalar--480129a1aad9510860318fa7.md) | 33 | `declaration-track:480129a1aad9510860318fa7e9cfbaf5fe9e60c4ca4dba04a71cf95ec4a35214` |
| 5 | `def` | [x](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/x--48ba8d57c72528d525b3bac2.md) | 36 | `declaration-track:48ba8d57c72528d525b3bac2787bd02ba8797f5ae94e37fcbe72e6bd21633d22` |
| 6 | `def` | [y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/y--c605adf7a56b5746f7c7ee67.md) | 37 | `declaration-track:c605adf7a56b5746f7c7ee676de35a0b12137527f4b70d4f1f4f98a30592b82e` |
| 7 | `def` | [invX](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/invx--5e552798d11c1530f49ea79d.md) | 38 | `declaration-track:5e552798d11c1530f49ea79d5378726e71ec2201f96c3185f544ca51bca620ce` |
| 8 | `theorem` | [x_mul_invX](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/x-mul-invx--f8b54673d1d960e41c920042.md) | 40 | `result-track:f8b54673d1d960e41c920042d4aee440afcfad4207a232be12f4e5f514ce6a5b` |
| 9 | `theorem` | [curve_equation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/curve-equation--9452208616331af6f69b5fc6.md) | 44 | `result-track:9452208616331af6f69b5fc616964ab76acb6782388e15b7426bddd86673ce1a` |
| 10 | `theorem` | [inverse_unique](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/inverse-unique--d96e270e875221d9e4a29d6a.md) | 54 | `result-track:d96e270e875221d9e4a29d6a1f92c6c456e19124882843f617e5d5d8553ece4c` |
| 11 | `def` | [affineEvaluate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/affineevaluate--984485b1ff39abb12e97c92e.md) | 62 | `declaration-track:984485b1ff39abb12e97c92ea182ba738d3b291850d8e7d0f1fb65a283fcae32` |
| 12 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/evaluate--c91fd1b96d6fcfd2da49fd50.md) | 73 | `declaration-track:c91fd1b96d6fcfd2da49fd5040c431fcd1f7f498da132f2ecaa7ec31a5992856` |
| 13 | `theorem` | [evaluate_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/evaluate-scalar--6fd99240ba307d4557809634.md) | 84 | `result-track:6fd99240ba307d4557809634c98b0500ada90a92cfa9e1ced744bccf8ea348bd` |
| 14 | `theorem` | [evaluate_x](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/evaluate-x--ae6253ae6a5b583dcf7f1646.md) | 89 | `result-track:ae6253ae6a5b583dcf7f16468eb77e50fad4f31643c8ad17c3375bc530369b21` |
| 15 | `theorem` | [evaluate_y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/evaluate-y--3d30ee776c262a0a19cf66d7.md) | 94 | `result-track:3d30ee776c262a0a19cf66d7fab80a65737ac7bd6feb3a95c8054a21bd112d25` |
| 16 | `theorem` | [evaluate_invX](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/evaluate-invx--f35cbc43a154fc665adec923.md) | 99 | `result-track:f35cbc43a154fc665adec9238ad1988e8f9ee88a684c8fc82b520c173b85eeb6` |
| 17 | `theorem` | [hom_ext](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/hom-ext--741ad2805b699e7da656a8d3.md) | 107 | `result-track:741ad2805b699e7da656a8d3e4928e0aea50afa80161316c2e6c6e1d69b720e9` |
| 18 | `theorem` | [translated_equation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/translated-equation--c8519dcfb4edcaff0ecdcf91.md) | 126 | `result-track:c8519dcfb4edcaff0ecdcf9142be898bb0667e0926ecb2d48016c210249970eb` |
| 19 | `theorem` | [translated_inverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/translated-inverse--7eae95c8b97f79d810e573f6.md) | 136 | `result-track:7eae95c8b97f79d810e573f67cc9d0f6e5673b64756caad87bc10b76fcdde09e` |
| 20 | `def` | [pullback](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/pullback--11247e7b258487dad64829e4.md) | 144 | `declaration-track:11247e7b258487dad64829e4a76f157f8ba38838a2034f1a1444e5b493d05def` |
| 21 | `theorem` | [pullback_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/pullback-scalar--36a6110d6406001f7ae76b7e.md) | 155 | `result-track:36a6110d6406001f7ae76b7e3721e4b964b11b3c8f7293335e036c1ec9b50a46` |
| 22 | `theorem` | [pullback_x](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/pullback-x--1620995713044a7ea6375e21.md) | 157 | `result-track:1620995713044a7ea6375e21ce45404277ad082c45ce04e7f997dd18950347bd` |
| 23 | `theorem` | [pullback_y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/pullback-y--af7240588f8088d92b3fab40.md) | 160 | `result-track:af7240588f8088d92b3fab4035621ba257956940510d3de1632349977b67fef4` |
| 24 | `theorem` | [pullback_invX](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/pullback-invx--c92e09b21ee213a803945ae4.md) | 163 | `result-track:c92e09b21ee213a803945ae48997f04e5a250dbb03640b2464eee4b58d40741c` |
| 25 | `theorem` | [pullback_comp_self](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/pullback-comp-self--a23a916284d311592cd24e0f.md) | 168 | `result-track:a23a916284d311592cd24e0fee023e462b52d45974972aed56bfa0a56ca7a4b0` |
| 26 | `def` | [pullbackEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/pullbackequiv--da9c1b6e23527f15d27df9a9.md) | 186 | `declaration-track:da9c1b6e23527f15d27df9a9a00458a8f2f3a8ac41a15ecff367740039978da9` |
| 27 | `theorem` | [evaluate_pullback_coordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/evaluate-pullback-coordinates--d4711959ce7d97492f314617.md) | 195 | `result-track:d4711959ce7d97492f3146176cc821ec6bb1cbf441962aea60a3cdcacb85f4d4` |
| 28 | `theorem` | [rational_point_coordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/declarations/rational-point-coordinates--8a3dd2e9484d60106bfcb2d7.md) | 203 | `result-track:8a3dd2e9484d60106bfcb2d7e901d30ba395b026ca1f587564cb7d5fbb4bfcc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
