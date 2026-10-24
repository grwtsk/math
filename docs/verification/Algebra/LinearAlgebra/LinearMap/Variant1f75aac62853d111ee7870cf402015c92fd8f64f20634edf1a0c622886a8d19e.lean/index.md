# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16250022f614252f770e202bf02b618b4d8e9221",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16250022f614252f770e202bf02b618b4d8e9221`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PiToModule.fromMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/pitomodule-frommatrix--964ffa64d9feccb5a8c615b7.md) | 36 | `declaration-track:964ffa64d9feccb5a8c615b777b7d2e0bee86d5aba49796359da38a418835ca8` |
| 2 | `theorem` | [PiToModule.fromMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/pitomodule-frommatrix-apply--218145d407b8855b4ff630dd.md) | 40 | `result-track:218145d407b8855b4ff630dd0608e5a76954c43886d2ccfaa7c597c7ca30785b` |
| 3 | `theorem` | [PiToModule.fromMatrix_apply_single_one](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/pitomodule-frommatrix-apply-single-one--8108e6a7c465ea748ebf004c.md) | 45 | `result-track:8108e6a7c465ea748ebf004cc9107373322d4ce1eb6d8956163a43fae54c8489` |
| 4 | `def` | [PiToModule.fromEnd](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/pitomodule-fromend--2c74f04e689b56170592c654.md) | 53 | `declaration-track:2c74f04e689b56170592c65437717855528f9c36b5e86e035174860c89744e78` |
| 5 | `theorem` | [PiToModule.fromEnd_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/pitomodule-fromend-apply--042173ef7daa5dcd29c478ce.md) | 57 | `result-track:042173ef7daa5dcd29c478ce118ede15376eaaa47f0e33b303a9e52b73053d0f` |
| 6 | `theorem` | [PiToModule.fromEnd_apply_single_one](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/pitomodule-fromend-apply-single-one--6ef0e248f82ad6e5d8f7c71b.md) | 62 | `result-track:6ef0e248f82ad6e5d8f7c71b7043a462df827d5b3a13beb86f5a5b5d050a41e5` |
| 7 | `theorem` | [PiToModule.fromEnd_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/pitomodule-fromend-injective--29781b75aefc9489fe2fea54.md) | 70 | `result-track:29781b75aefc9489fe2fea540053d6b0813c44d7424588d00d1b95056fa96bcf` |
| 8 | `def` | [Matrix.Represents](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-represents--dfe8cc435be003ba45a5c3b7.md) | 86 | `declaration-track:dfe8cc435be003ba45a5c3b7982aaec2b42c0a1257e31419f17628fb0364cb20` |
| 9 | `theorem` | [Matrix.Represents.congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-represents-congr-fun--2eda68b9c600d4db6fc5772a.md) | 92 | `result-track:2eda68b9c600d4db6fc5772a7040babe2582432f818650b0e3d1b6599aad029f` |
| 10 | `theorem` | [Matrix.represents_iff](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-represents-iff--027aa5a9b2e1eaa4a6d79cd3.md) | 97 | `result-track:027aa5a9b2e1eaa4a6d79cd340c9d83372a188021cb525ee6ab4912b6132bec0` |
| 11 | `theorem` | [Matrix.represents_iff'](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-represents-iff--e014452a97a8c0d3583dc046.md) | 102 | `result-track:e014452a97a8c0d3583dc04630deea9a443914a312195b0b34b8885b22aa0417` |
| 12 | `theorem` | [Matrix.Represents.mul](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-represents-mul--18761d81d59a9fa96387be4f.md) | 116 | `result-track:18761d81d59a9fa96387be4f4c3518bb820fb0fdda5ff4017ab1c806dc730407` |
| 13 | `theorem` | [Matrix.Represents.one](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-represents-one--412d0f3dffabd698a2f64e5d.md) | 126 | `result-track:412d0f3dffabd698a2f64e5d5ea792fd24d88549998f7a7e24ccb2e5372a3ef0` |
| 14 | `theorem` | [Matrix.Represents.add](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-represents-add--aefa8e84506858767e5a87a0.md) | 133 | `result-track:aefa8e84506858767e5a87a07476ea3fb284a72ad3121e9e47450e120daea37d` |
| 15 | `theorem` | [Matrix.Represents.zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-represents-zero--8cedce09a925fb0b04cf2086.md) | 138 | `result-track:8cedce09a925fb0b04cf20865358eeb40a446dc503815e967d1a6bc40470d47e` |
| 16 | `theorem` | [Matrix.Represents.smul](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-represents-smul--0229c26e251674f80e971872.md) | 143 | `result-track:0229c26e251674f80e971872191087e8278c7d479ddb5c8e343217a2c91522d5` |
| 17 | `theorem` | [Matrix.Represents.eq](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-represents-eq--ad7f58581c21ffdf6fd0a879.md) | 149 | `result-track:ad7f58581c21ffdf6fd0a879fc140ba7ea33a203a450de2280686d581312e921` |
| 18 | `def` | [Matrix.isRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-isrepresentation--39a27fe39d19d6cfc10af886.md) | 158 | `declaration-track:39a27fe39d19d6cfc10af88664c2cb2f101c27faaafd9a1a2d0856fb487c8948` |
| 19 | `def` | [Matrix.isRepresentation.toEnd](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-isrepresentation-toend--18afb409c1fa7007b15f66e2.md) | 168 | `declaration-track:18afb409c1fa7007b15f66e2bc91b874477aa1f8dd36fc6e276b376d39c633e1` |
| 20 | `theorem` | [Matrix.isRepresentation.toEnd_represents](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-isrepresentation-toend-represents--43962efbeebdaafe2857341a.md) | 179 | `result-track:43962efbeebdaafe2857341a9682ac8243a04d3a39bda4902333992657d8cea9` |
| 21 | `theorem` | [Matrix.isRepresentation.eq_toEnd_of_represents](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-isrepresentation-eq-toend-of-represents--a01c74dd8850671c642be231.md) | 184 | `result-track:a01c74dd8850671c642be231f500ddee9f6ffe8a7cb7743b1846de426c4f408f` |
| 22 | `theorem` | [Matrix.isRepresentation.toEnd_exists_mem_ideal](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-isrepresentation-toend-exists-mem-ideal--07f5303b76cbcfff6a5be580.md) | 190 | `result-track:07f5303b76cbcfff6a5be580b96e99457fc03c28ad20d3f56b940cb2a43697e7` |
| 23 | `theorem` | [Matrix.isRepresentation.toEnd_surjective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/matrix-isrepresentation-toend-surjective--f456989594b824da9d610f1e.md) | 209 | `result-track:f456989594b824da9d610f1eb9c4d58ce226ad4e74f567d232d785f2bf2e7082` |
| 24 | `theorem` | [LinearMap.exists_monic_and_coeff_mem_pow_and_aeval_eq_zero_of_range_le_smul](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/linearmap-exists-monic-and-coeff-mem-pow-and-aeval-eq-zero-of-range-le-s--20046b80845cc4784d034dfd.md) | 225 | `result-track:20046b80845cc4784d034dfd90ea522026aef7db912fc906a526534a48e84ce3` |
| 25 | `theorem` | [LinearMap.exists_monic_and_aeval_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/declarations/linearmap-exists-monic-and-aeval-eq-zero--dcf4a481fb3f08105f69caf7.md) | 248 | `result-track:dcf4a481fb3f08105f69caf7bf7ca210726b57b5f8a560622df4ff2fb9f898a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
