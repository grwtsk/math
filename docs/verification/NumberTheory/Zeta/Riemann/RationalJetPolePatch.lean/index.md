# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalJetPolePatch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a23b1cb7dad20c5e46f1222f70c8015795334129",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a23b1cb7dad20c5e46f1222f70c8015795334129`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centerBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/centerbound--413f2a06b874cfdc483eef71.md) | 27 | `declaration-track:413f2a06b874cfdc483eef710586e2385d11982d12c7610ca8186340f48c0dc2` |
| 2 | `def` | [curvature](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/curvature--2cbfb4a57a81dd3ae8d3ca9d.md) | 31 | `declaration-track:2cbfb4a57a81dd3ae8d3ca9d11b527a858fa05aace160d6dc3a381a83b5a5ace` |
| 3 | `def` | [jetSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/jetslope--af4311e5728dea782c323349.md) | 34 | `declaration-track:af4311e5728dea782c323349fe948391be46cbf00eb96d3e7113a298e05aa3c6` |
| 4 | `def` | [selectedSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/selectedslope--fbfcb532dbb17c1a10a6386c.md) | 38 | `declaration-track:fbfcb532dbb17c1a10a6386c8d6237d4658dfdb02095bace9ae94808ccfde09a` |
| 5 | `def` | [imageRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/imageradius--471cac72dc2a0e7588c30bcd.md) | 41 | `declaration-track:471cac72dc2a0e7588c30bcd5ed1e3b43a82a50f45dc98cfa2bc4805ec9248a5` |
| 6 | `def` | [Valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/valid--7979d60b59568745831862c4.md) | 44 | `declaration-track:7979d60b59568745831862c4d81ecab0405aba131dde0700232217183bdec6a3` |
| 7 | `instance` | [validDecidable](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/validdecidable--0ab2bd0fad58b01ce1017f87.md) | 49 | `declaration-track:0ab2bd0fad58b01ce1017f872ee8540b1dcf34889b91b88166d4d370e867f581` |
| 8 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/check--eb5164cd8adaaa282f1ae1e1.md) | 52 | `declaration-track:eb5164cd8adaaa282f1ae1e1d5c42ab97a3d3eca6a5da1d7bfed145373f8eb31` |
| 9 | `theorem` | [check_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/check-iff--a067b00110f53b146f5969ce.md) | 55 | `result-track:a067b00110f53b146f5969ce987d856630611551f2923a682b283281b47e4660` |
| 10 | `theorem` | [sourceBound_on_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/sourcebound-on-disk--1c3d5c455d5471a6f2103a56.md) | 58 | `result-track:1c3d5c455d5471a6f2103a56710bddbbf209d820c3360960e5c788b22ce4e755` |
| 11 | `theorem` | [centerBound_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/centerbound-sound--995293794696e79689d72d27.md) | 67 | `result-track:995293794696e79689d72d271f4eca89d4834e18223b87443f3140e91e2c1588` |
| 12 | `theorem` | [curvature_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/curvature-sound--ee19a4c610eec78820915282.md) | 77 | `result-track:ee19a4c610eec78820915282fa8b160343917e7953b35c6e7e2b48aeae26608a` |
| 13 | `theorem` | [jetSlope_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/jetslope-sound--5a332def43f87b05505cc6da.md) | 86 | `result-track:5a332def43f87b05505cc6daa0a799d47f08b812f71c25dd347e45783c70c71f` |
| 14 | `theorem` | [oldSlope_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/oldslope-sound--cae617d877c400ab2005e5c4.md) | 99 | `result-track:cae617d877c400ab2005e5c4ac87c4030527c3baf6c82b00f9a8b845786e7815` |
| 15 | `theorem` | [selectedSlope_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/selectedslope-sound--74e613d4befdfd36aaee013c.md) | 107 | `result-track:74e613d4befdfd36aaee013c69d94ce294d0d53c0e8e4d4472c4b253595fa188` |
| 16 | `theorem` | [image_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/image-bound--38b75e4af8b0e9f07b30334b.md) | 115 | `result-track:38b75e4af8b0e9f07b30334b1931e047d87fbf8b5a481bc1183165613e7e2aa6` |
| 17 | `def` | [patchOfCheck](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/patchofcheck--1cdc31b4ce772b82ba6a5f12.md) | 142 | `declaration-track:1cdc31b4ce772b82ba6a5f12721181eabb7c943a4e9f16b7526144d858330c16` |
| 18 | `theorem` | [check_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/check-sound--39a4e4da9fa5ea64cc131363.md) | 160 | `result-track:39a4e4da9fa5ea64cc13136387506f088de8b45f8016f3abc5c20db1f5b43c67` |
| 19 | `theorem` | [imageRadius_le_old](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/imageradius-le-old--97d992e2205b1cc6fb370b34.md) | 166 | `result-track:97d992e2205b1cc6fb370b34df2006dc12cac7293e7fa4bd97da06d479855149` |
| 20 | `theorem` | [accepts_of_old](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/declarations/accepts-of-old--e116cc1387e1814352ccd66a.md) | 173 | `result-track:e116cc1387e1814352ccd66a76fa6a9d7128590cd257a5ae652cc50f0328afbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
