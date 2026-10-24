# Verification target: GRWTSK.Algebra.LinearAlgebra.QuotSMulTop.Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32df668bd7c94fb15d0df51b7e6502ce118a9362",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32df668bd7c94fb15d0df51b7e6502ce118a9362`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [QuotSMulTop](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/quotsmultop--5fd35e52b75ab23d170aaabc.md) | 32 | `declaration-track:5fd35e52b75ab23d170aaabc9819a0861f3ed00ce6d066ef1e33081f94c0bdeb` |
| 2 | `def` | [equivQuotTensor](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/equivquottensor--2d88954bdea90b6778538436.md) | 39 | `declaration-track:2d88954bdea90b67785384360304d1bff74169d611a22f49de8a6d0bcaea5934` |
| 3 | `def` | [equivTensorQuot](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/equivtensorquot--cdc64a25b21ba22a46232351.md) | 45 | `declaration-track:cdc64a25b21ba22a46232351061c958d43f41edd934f6fc07b28e2cffb472082` |
| 4 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/map--8214f58d7f774c87a617735b.md) | 53 | `declaration-track:8214f58d7f774c87a617735b9a54aa68024403c0acce94d646f19288394868bd` |
| 5 | `lemma` | [map_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/map-apply-mk--2ff2ab1ceaccaef81e8456fa.md) | 59 | `result-track:2ff2ab1ceaccaef81e8456fad5c3b52694d1b014855bcf8fa68ddc2df692c09b` |
| 6 | `lemma` | [map_comp_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/map-comp-mkq--44c55ad1826f40f1a6fd1015.md) | 64 | `result-track:44c55ad1826f40f1a6fd10150f6ac2823c454295c8a320804c0ea70df2c34663` |
| 7 | `lemma` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/map-id--7bdd4a9940c42f8151e72eec.md) | 71 | `result-track:7bdd4a9940c42f8151e72eec0c1d7fe57e7a931054d8d8e79adba30675124d57` |
| 8 | `lemma` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/map-comp--81aecfd7c5bd41c5b0d03204.md) | 77 | `result-track:81aecfd7c5bd41c5b0d032041b6797402182f20ad565401692b029659165d272` |
| 9 | `lemma` | [equivQuotTensor_naturality_mk](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/equivquottensor-naturality-mk--d0dba49d4fa196db7185e7c5.md) | 81 | `result-track:d0dba49d4fa196db7185e7c58085d89d5008a28415c37dccaa0216c623851931` |
| 10 | `lemma` | [equivQuotTensor_naturality](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/equivquottensor-naturality--fab7e49dd6b99c9679c8222f.md) | 87 | `result-track:fab7e49dd6b99c9679c8222f2d7ad8f67c3d15daae8c2cd326c1ebcbe7a50bc4` |
| 11 | `lemma` | [equivTensorQuot_naturality_mk](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/equivtensorquot-naturality-mk--c7893944b2392795daf4f7e8.md) | 92 | `result-track:c7893944b2392795daf4f7e8ff1a4c0170f9a3afc9bb597b49397991cabea565` |
| 12 | `lemma` | [equivTensorQuot_naturality](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/equivtensorquot-naturality--5d85e6608c3c899bcc160219.md) | 98 | `result-track:5d85e6608c3c899bcc160219d6fe01efc6c0a47890016e4d65f3ed43e2b85610` |
| 13 | `lemma` | [map_surjective](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/map-surjective--d1250e31fd2930693ee5bcc6.md) | 103 | `result-track:d1250e31fd2930693ee5bcc6f4d0b98e58abab46c6f994dde7f933f0d0a61547` |
| 14 | `lemma` | [map_exact](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/map-exact--d2291a4fc45575f789012dd6.md) | 108 | `result-track:d2291a4fc45575f789012dd665db2d9fea555dc3db929439fa4220692bf73ed2` |
| 15 | `def` | [tensorQuotSMulTopEquivQuotSMulTop](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/tensorquotsmultopequivquotsmultop--4a01cd0b382b77077181d15a.md) | 117 | `declaration-track:4a01cd0b382b77077181d15a281d404ccde1a5b780dcf29a53cf19cfb3cfacf6` |
| 16 | `def` | [quotSMulTopTensorEquivQuotSMulTop](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant76c313718372002eb95b75f9ce58db2e4242bcfb7b1d9c3c8724a0877cd150fe.lean/declarations/quotsmultoptensorequivquotsmultop--8c36102dfd9b54d4aab0829e.md) | 124 | `declaration-track:8c36102dfd9b54d4aab0829e6466ce050e2c57e3297cdc9831a2e745bf6dd8de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
