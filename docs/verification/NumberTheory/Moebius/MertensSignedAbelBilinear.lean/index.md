# Verification target: GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinear

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b62cc3cf45684b539152b66d3dd26f0a0a5f659e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensSignedAbelBilinear.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b62cc3cf45684b539152b66d3dd26f0a0a5f659e`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensSignedAbelBilinear.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensSignedAbelBilinear.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SignedAbelDepthDispersion`](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedAbelDepthShiftResponse](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/declarations/signedabeldepthshiftresponse--c500d1f5e8accd85050866c1.md) | 21 | `declaration-track:c500d1f5e8accd85050866c1be26fab74afedf75f08b70e9949d278dfc4007b0` |
| 2 | `theorem` | [mertensTwoPointPrefix_eq_baseSum](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/declarations/mertenstwopointprefix-eq-basesum--1d323991da72c8d536ec92f9.md) | 30 | `result-track:1d323991da72c8d536ec92f92415a56e658ccdd66067353828d299803aeacc5c` |
| 3 | `theorem` | [weightedMertensDyadicSignedAbelDepthSlice_eq_baseBilinear](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/declarations/weightedmertensdyadicsignedabeldepthslice-eq-basebilinear--13750b342f522599fe11c3d4.md) | 39 | `result-track:13750b342f522599fe11c3d43d51b26d41db78a0171848e2a8a1f7ce2e0f0fdb` |
| 4 | `def` | [mertensSignedAbelDepthBilinearModel](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/declarations/mertenssignedabeldepthbilinearmodel--ca1cd05612e7c9b84afb0d33.md) | 89 | `declaration-track:ca1cd05612e7c9b84afb0d3340d643bba486e420b7e9ae8d38b882907d0ee8ea` |
| 5 | `theorem` | [mertensSignedAbelDepthBilinearModel_structuredPacket_eq_depthPacket](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/declarations/mertenssignedabeldepthbilinearmodel-structuredpacket-eq-depthpacket--e06c8a9ab17ddeb0526c0cab.md) | 102 | `result-track:e06c8a9ab17ddeb0526c0cab03eb6932311c15c94652f9c6f56ef451829fca60` |
| 6 | `def` | [SubpolynomialMertensSignedAbelBilinearEstimate](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/declarations/subpolynomialmertenssignedabelbilinearestimate--e1dab7f7878aaa680091bbed.md) | 113 | `declaration-track:e1dab7f7878aaa680091bbedfd4d60fb02ae5a0a20ff2dd50241d41d66773daf` |
| 7 | `theorem` | [subpolynomialDyadicSignedAbelDepthPacket_of_mertensBilinear](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/declarations/subpolynomialdyadicsignedabeldepthpacket-of-mertensbilinear--0b0cbdd161ac3301aee3640e.md) | 119 | `result-track:0b0cbdd161ac3301aee3640e0cebd1d157af312637129d879323bd7a03564ccf` |
| 8 | `theorem` | [riemannHypothesis_of_mertensSignedAbelBilinearEstimate](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/declarations/riemannhypothesis-of-mertenssignedabelbilinearestimate--c5eb76c46ac307d6533c3840.md) | 126 | `result-track:c5eb76c46ac307d6533c3840e83038e1db51bcd3d4fd9990594d023f4ad775e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
