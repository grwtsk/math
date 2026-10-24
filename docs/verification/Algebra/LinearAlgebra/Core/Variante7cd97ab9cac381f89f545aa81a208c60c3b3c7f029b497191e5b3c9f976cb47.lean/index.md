# Verification target: GRWTSK.Algebra.LinearAlgebra.Core.Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33a2e4558232bbdcd139e43c5d2114bf5eb8e860",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33a2e4558232bbdcd139e43c5d2114bf5eb8e860`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean.json)

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
| 1 | `abbrev` | [Matrix](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/matrix--47e72d99bfc75b654e14967b.md) | 3 | `declaration-track:47e72d99bfc75b654e14967be63515286abf504c2ef4b30ec42ad4aa948ef588` |
| 2 | `structure` | [BinaryLogicMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/binarylogicmatrix--50e8713da14056eb8c24d633.md) | 5 | `declaration-track:50e8713da14056eb8c24d6332d7db48affd66f30f4761efbde99f00881fd3dfc` |
| 3 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/ext--5e880bdf10d8132e9314c0a9.md) | 11 | `result-track:5e880bdf10d8132e9314c0a99b49231208f1542b4a9b26a2e106727467712202` |
| 4 | `theorem` | [blm_ext](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/blm-ext--451c5abf25493fd8f84cbca7.md) | 22 | `result-track:451c5abf25493fd8f84cbca74f544ec42715a96d98793192c94569c8da9204bb` |
| 5 | `def` | [get](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/get--d9da121e1ced8e2b0e1ab2bc.md) | 28 | `declaration-track:d9da121e1ced8e2b0e1ab2bca69bc8008613c51344e5b0e4a7809bb2a780bfde` |
| 6 | `def` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/zero--14390f2a015389fecc68ba1d.md) | 31 | `declaration-track:14390f2a015389fecc68ba1d2ea5040806e805e823e164e3a6de3285a965e69b` |
| 7 | `def` | [identity](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/identity--88253c4d8df19d5e21a40e11.md) | 34 | `declaration-track:88253c4d8df19d5e21a40e1118b0619542a7bced30e122366664da02041addb0` |
| 8 | `def` | [set](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/set--54c1585f990003d57571ea50.md) | 37 | `declaration-track:54c1585f990003d57571ea50aefab9058e67e6001a4d60206eae8d7a721f3132` |
| 9 | `def` | [transpose](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/transpose--79642b8fca898a35abddc744.md) | 45 | `declaration-track:79642b8fca898a35abddc744c784ae646b457da10406bf7fa4bf882129e2eec0` |
| 10 | `def` | [xorAdd](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/xoradd--718e67bffd722ad6d2f7ce8c.md) | 48 | `declaration-track:718e67bffd722ad6d2f7ce8c8a9f13ad0acda9ff71285b40e1cd5cb2044552a4` |
| 11 | `def` | [boolAnd](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/booland--56a4a0a8d8c55eede2be3aac.md) | 51 | `declaration-track:56a4a0a8d8c55eede2be3aac9953a0985ea0156a4b5f729b2fd7cbb7da441162` |
| 12 | `def` | [boolOr](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/boolor--3a07ef48b2447ad1167078fc.md) | 54 | `declaration-track:3a07ef48b2447ad1167078fc97c29a9fcd20a1fae66f120e67ff185b06f44cd4` |
| 13 | `def` | [boolNot](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/boolnot--fe2a6a9f74a70aa8a3ce754e.md) | 57 | `declaration-track:fe2a6a9f74a70aa8a3ce754ee5a2c6169f723fae24f3edc3d81b561fe0470dc0` |
| 14 | `def` | [pointwiseEq](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/pointwiseeq--313d5da19b538b5fd186cf35.md) | 60 | `declaration-track:313d5da19b538b5fd186cf35e1e3b44006c4ef861ef9b7990b7380c1f634da9a` |
| 15 | `def` | [pointwiseComparison](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/pointwisecomparison--a241fd5d88195a82c7cae636.md) | 63 | `declaration-track:a241fd5d88195a82c7cae6366956b1122bb0080b83b0e184cf14592bcfc03f6b` |
| 16 | `def` | [rowMajorBits](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/rowmajorbits--fd9dc0a406c69c13013d12bb.md) | 66 | `declaration-track:fd9dc0a406c69c13013d12bb2dcee98d11dbbffb040b01eca6f9f2e0df61861d` |
| 17 | `def` | [finiteSupport](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/finitesupport--c14c87c72a04319f7e9d74b2.md) | 70 | `declaration-track:c14c87c72a04319f7e9d74b25a7e4372f97214a198ba39ef943e06f56bfb9d80` |
| 18 | `def` | [countTrue](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/counttrue--8e069aa88a2e96f6a7843eac.md) | 75 | `declaration-track:8e069aa88a2e96f6a7843eace1ab84d91427142ede2988e9c5a20aa83ba0035e` |
| 19 | `def` | [fromBoolList](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/fromboollist--197f7708eef831a190de8abf.md) | 78 | `declaration-track:197f7708eef831a190de8abf634f5b5aee3b2a91029a8ad5388c62465310ff03` |
| 20 | `def` | [relComp](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/relcomp--9a8ce975497d8e08f8a5a805.md) | 81 | `declaration-track:9a8ce975497d8e08f8a5a805abb00de6506cc5c678ee54ae18238dd8386c454b` |
| 21 | `def` | [gf2Mul](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/gf2mul--a16c6d91b8c5511de8dbc719.md) | 86 | `declaration-track:a16c6d91b8c5511de8dbc719af8043ffaf7f22a7a243d8f50d5caca91e1ba520` |
| 22 | `theorem` | [get_zero](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/get-zero--699175fdf8775821db39210d.md) | 91 | `result-track:699175fdf8775821db39210d4436e8339679a59295fd1e538fa3ec4ed1d131c6` |
| 23 | `theorem` | [get_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/get-transpose--98976ef9122cdb755e3fe11c.md) | 96 | `result-track:98976ef9122cdb755e3fe11cdae0eb24e4d651715b649c5217f4d3b29f80be31` |
| 24 | `theorem` | [get_set_same](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/get-set-same--19950a34b9dd8bf0887f203f.md) | 101 | `result-track:19950a34b9dd8bf0887f203fb19a81a1e95b7e41e1e719a73081ffe13a9316f2` |
| 25 | `theorem` | [countTrue_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/counttrue-nonneg--708bfa668b2acfb95f441715.md) | 106 | `result-track:708bfa668b2acfb95f441715b7c373af571d8271f08a4e8d7d2abb105aed9f42` |
| 26 | `theorem` | [countTrue_zero](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/counttrue-zero--c7a26a24281f9820b9b8fb3c.md) | 110 | `result-track:c7a26a24281f9820b9b8fb3c08f15579e543bceca94afe26877e623237157500` |
| 27 | `theorem` | [transpose_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/transpose-transpose--86fa8c27740441dd5fc07856.md) | 114 | `result-track:86fa8c27740441dd5fc07856f40df1b2d6fed8bac2ccc2dcddd883ed24823132` |
| 28 | `theorem` | [boolOr_comm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/boolor-comm--3a4932a832a3b51b3ac9ec22.md) | 120 | `result-track:3a4932a832a3b51b3ac9ec22b1f0afea05a76fe81b05e224afc23c3e271e92e8` |
| 29 | `theorem` | [boolAnd_comm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/booland-comm--3cc2f7893c6726c28fb12404.md) | 127 | `result-track:3cc2f7893c6726c28fb12404ce919d0ed5ac1b2c69f50d5aed283297cc8754c1` |
| 30 | `theorem` | [xorAdd_comm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/xoradd-comm--c98aec17c7cb9883173ee72f.md) | 134 | `result-track:c98aec17c7cb9883173ee72f52eb66c23857e05b7268d07c509ac4f3465f49c2` |
| 31 | `theorem` | [rowMajor_length](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47.lean/declarations/rowmajor-length--ef936210a4752108d3800633.md) | 141 | `result-track:ef936210a4752108d3800633dc1f18f2f20ca7ba911b75d6598e24b837c1eeb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
