# Verification target: GRWTSK.Algebra.LinearAlgebra.Composition.Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e3d77783ca22769b1d894d9c98eeff20a8ea8b2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e3d77783ca22769b1d894d9c98eeff20a8ea8b2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basis` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/comp--b234a2612b7f37fd3326c474.md) | 41 | `declaration-track:b234a2612b7f37fd3326c474baa7dcf52a9e8fd52fa226f241f8ef1c621286ee` |
| 2 | `theorem` | [comp_map_map](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/comp-map-map--c25fbe4726efdca61d353f14.md) | 50 | `result-track:c25fbe4726efdca61d353f14e7bdba96ee9637deebf867cdc884ba310a367cc0` |
| 3 | `theorem` | [comp_single_single](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/comp-single-single--d122ff0dd2e3d3a3a3aa3028.md) | 54 | `result-track:d122ff0dd2e3d3a3a3aa30288c4d7f5707b1a6516d020bc467009453c601ab65` |
| 4 | `theorem` | [comp_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/comp-symm-single--ed706f29173331f7d8b1c3f4.md) | 78 | `result-track:ed706f29173331f7d8b1c3f44120e5fb8fadd5eca8998428c62a445549c58064` |
| 5 | `theorem` | [comp_diagonal_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/comp-diagonal-diagonal--fa94730627b9035a9461a48e.md) | 87 | `result-track:fa94730627b9035a9461a48ef23f1dc8a9547b683634e4142decf8191d007a7c` |
| 6 | `theorem` | [comp_symm_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/comp-symm-diagonal--88c1426077ba21d437b6e3a7.md) | 101 | `result-track:88c1426077ba21d437b6e3a7b06cbe53f5f8083c99bfda67ced979b9f200003f` |
| 7 | `theorem` | [comp_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/comp-transpose--ed03be3c05a44447b97c7011.md) | 105 | `result-track:ed03be3c05a44447b97c70110bdb36181e1bcf3535fe06e04712203985dca072` |
| 8 | `theorem` | [comp_map_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/comp-map-transpose--70e9184cba68bbe2720f1218.md) | 108 | `result-track:70e9184cba68bbe2720f1218c991ccacf8960cfa050093820bfa6e9969aebcaa` |
| 9 | `theorem` | [comp_symm_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/comp-symm-transpose--7f69dbbde31ed179a8d7d46b.md) | 111 | `result-track:7f69dbbde31ed179a8d7d46bdb972127375bcbe39c40c9bb6598168f6be37fc9` |
| 10 | `def` | [compAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/compaddequiv--eaab3e1f00af81f2ee556ced.md) | 121 | `declaration-track:eaab3e1f00af81f2ee556cedc139276c05ad608778c3b1eebd3f63d17d847ffd` |
| 11 | `theorem` | [compAddEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/compaddequiv-apply--7198020cfbfcc23265632822.md) | 126 | `result-track:7198020cfbfcc232656328223b2ef1f5e49b76804576da51183525001f04f577` |
| 12 | `theorem` | [compAddEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/compaddequiv-symm-apply--cf223cfd187e33bc055ffa61.md) | 130 | `result-track:cf223cfd187e33bc055ffa612cf9331587865c4c3b37b62590cf7a500dda689e` |
| 13 | `def` | [compRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/compringequiv--7e2c7e44423808b49786b111.md) | 140 | `declaration-track:7e2c7e44423808b49786b111dca4f6cefc02fe25d1dd7208fb4d8422dfc12245` |
| 14 | `theorem` | [compRingEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/compringequiv-apply--6ba03facd8173433f38b914f.md) | 145 | `result-track:6ba03facd8173433f38b914fec01b312e61a902a23ab5a399ee70dadc6ea92e1` |
| 15 | `theorem` | [compRingEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/compringequiv-symm-apply--e11a52ee5e411eeb9ed7ca89.md) | 149 | `result-track:e11a52ee5e411eeb9ed7ca893d8fd8de1ef4bb9602f6d20e8a60d0adf1df85b3` |
| 16 | `def` | [compLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/complinearequiv--273728b4dc3e4ff96158456e.md) | 160 | `declaration-track:273728b4dc3e4ff96158456ef6f81b4f691d1eedd8adb53405c7e66af2963dd5` |
| 17 | `def` | [compAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/compalgequiv--a5356c4156e72e43a82268fe.md) | 173 | `declaration-track:a5356c4156e72e43a82268fecfe6dc7c8c28722a9ae4884d2d78c25acfdaea4e` |
| 18 | `theorem` | [compAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/compalgequiv-apply--377f05a296611e0394dcee63.md) | 178 | `result-track:377f05a296611e0394dcee63916be4ee380abb1c329e8019d299c0e367fc42eb` |
| 19 | `theorem` | [compAlgEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variant0d836c1a55338f015176d8a4c460295c5945167748aab3a17ed2d3b7c536e829.lean/declarations/compalgequiv-symm-apply--4f85a7de48e8bb20cf547323.md) | 182 | `result-track:4f85a7de48e8bb20cf547323108d2e22a34c61408c9a13a073bab3277ab4660d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
