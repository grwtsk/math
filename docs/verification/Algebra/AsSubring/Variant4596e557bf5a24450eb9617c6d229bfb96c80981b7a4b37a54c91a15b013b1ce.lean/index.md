# Verification target: GRWTSK.Algebra.AsSubring.Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e8d470a564999a7aa6b30e51a82c64ac40372ca",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/index.md) · [Full source](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e8d470a564999a7aa6b30e51a82c64ac40372ca`.

Source path: `GRWTSK/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_isUnit_of_le](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/map-isunit-of-le--aa5c3f2aa9e678093bc21380.md) | 29 | `result-track:aa5c3f2aa9e678093bc2138052f2b743a69f467c5f1e54760072f902ae94ac53` |
| 2 | `def` | [mapToFractionRing](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/maptofractionring--45d41f5362e1be028ea07c91.md) | 34 | `declaration-track:45d41f5362e1be028ea07c9155db24705124644d5edd5f4f1eb23dbe1a3aaf8c` |
| 3 | `theorem` | [mapToFractionRing_apply](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/maptofractionring-apply--668954282b5e16a1f6adb869.md) | 39 | `result-track:668954282b5e16a1f6adb8696907f7b9b7942d2d85a348b8a13de11b522d770b` |
| 4 | `theorem` | [mem_range_mapToFractionRing_iff](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/mem-range-maptofractionring-iff--b4c60d0ed0bf3c5b3eafedb1.md) | 44 | `result-track:b4c60d0ed0bf3c5b3eafedb1812c7b631102956cfad905160c3a8e7affd7d0aa` |
| 5 | `instance` | [isLocalization_range_mapToFractionRing](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/islocalization-range-maptofractionring--8036c76a54e7afe45eb3ecf9.md) | 57 | `declaration-track:8036c76a54e7afe45eb3ecf947b5eb9f1c933035b22fade6227d569ee534608b` |
| 6 | `instance` | [isFractionRing_range_mapToFractionRing](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/isfractionring-range-maptofractionring--066848d6d0e43264e8e8a53d.md) | 66 | `declaration-track:066848d6d0e43264e8e8a53d0567bd193ee5f14dbc9cfef61697fca20bb1d9f7` |
| 7 | `def` | [subalgebra](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/subalgebra--e7e6433519ea753c69a90f16.md) | 77 | `declaration-track:e7e6433519ea753c69a90f16256df7ac70d158a6facf905160f3bee7460cd848` |
| 8 | `instance` | [isLocalization_subalgebra](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/islocalization-subalgebra--40b7033e8bcd4ab9f5151339.md) | 86 | `declaration-track:40b7033e8bcd4ab9f51513390a9c789e8b8529254c2bc422b466a7189ccd9da0` |
| 9 | `instance` | [isFractionRing](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/isfractionring--27f0b4cd237722a53ab95e0c.md) | 91 | `declaration-track:27f0b4cd237722a53ab95e0c56518699f877656b21a798b9a951923bbb883a61` |
| 10 | `theorem` | [mem_range_mapToFractionRing_iff_ofField](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/mem-range-maptofractionring-iff-offield--c5702898840d00c31e82d1d2.md) | 104 | `result-track:c5702898840d00c31e82d1d2ac1dcdd623a6c5235b03bba92dbcc2059ec0f730` |
| 11 | `def` | [ofField](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/offield--7c630ce5251bf51f49cc5060.md) | 121 | `declaration-track:7c630ce5251bf51f49cc5060bfec098ddb7e524bd7d0bb250fbbb21da73b6ee5` |
| 12 | `theorem` | [ofField_eq](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/offield-eq--9ae552560594463ca133713e.md) | 128 | `result-track:9ae552560594463ca133713e1e48d312dd20697446a0dd2e33723a902462332c` |
| 13 | `instance` | [isLocalization_ofField](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/islocalization-offield--338d4e54c569c4aa5aac0d7d.md) | 131 | `declaration-track:338d4e54c569c4aa5aac0d7d1b1f7529a965952d450ebfaec66baf440c107ad4` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/instance--f148140988ed676ec8047b2d.md) | 135 | `declaration-track:f148140988ed676ec8047b2d3a28c7fefe3025434558a8a9c41e3d110f836036` |
| 15 | `instance` | [isFractionRing_ofField](../../../../mathematics/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/declarations/isfractionring-offield--f038119e9413a36a5e83987b.md) | 140 | `declaration-track:f038119e9413a36a5e83987b02091d5788800af5a759520081b32cedce46b344` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
