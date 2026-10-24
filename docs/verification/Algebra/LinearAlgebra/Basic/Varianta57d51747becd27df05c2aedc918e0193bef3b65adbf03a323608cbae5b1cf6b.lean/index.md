# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11cf1532f5d9d75267be091efca5b61670c220da",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11cf1532f5d9d75267be091efca5b61670c220da`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Yoneda` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Linear` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/tensorobj--0da6b2f584769dc7df47d169.md) | 54 | `declaration-track:0da6b2f584769dc7df47d169df1d613d21b337dd951493cb53e66395f560f5f4` |
| 2 | `def` | [tensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/tensorhom--9ae3460cd087f9a0ead44b22.md) | 59 | `declaration-track:9ae3460cd087f9a0ead44b2289fc21c9b0972086bd077ce0306111cfb74c9f14` |
| 3 | `def` | [whiskerLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/whiskerleft--8aec63d880e020d4ddc71008.md) | 65 | `declaration-track:8aec63d880e020d4ddc710087d168cfd7541eab202066633ddc07b370a39ca09` |
| 4 | `def` | [whiskerRight](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/whiskerright--a8a9a22a35e038528e28256e.md) | 70 | `declaration-track:a8a9a22a35e038528e28256e044cf1a3e905c8e95b62dc0c2d613c3138cd750f` |
| 5 | `theorem` | [tensor_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/tensor-id--678795bb9e7e321f94dc3332.md) | 74 | `result-track:678795bb9e7e321f94dc3332a3fad626c8d8f7cc3edfaa8e5981c0e50bc8763a` |
| 6 | `theorem` | [tensor_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/tensor-comp--40252c8ea497b24df6ac27af.md) | 80 | `result-track:40252c8ea497b24df6ac27afdfc0cbb307cc0596458af5ae8b52bdffa73db676` |
| 7 | `def` | [associator](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/associator--f847aa0021440d5b514ac440.md) | 88 | `declaration-track:f847aa0021440d5b514ac440fd0e25e1f89a0f0e3897b86f7a9d6d2fa1286a2d` |
| 8 | `theorem` | [associator_naturality_aux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/associator-naturality-aux--96d4f22af41c27e31cc6dfbc.md) | 103 | `result-track:96d4f22af41c27e31cc6dfbc3ccc46600f5e5b26e25327f28a73894fcb7746de` |
| 9 | `theorem` | [pentagon_aux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/pentagon-aux--73604fd5a5e08fdd5c43f711.md) | 116 | `result-track:73604fd5a5e08fdd5c43f7116e24f7b211e839485f5adcc1a3f599f1b65e5a9a` |
| 10 | `theorem` | [associator_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/associator-naturality--bab9fc2c9689cefd0812dbda.md) | 130 | `result-track:bab9fc2c9689cefd0812dbda7b9a16b1f5eedd53c316aeae55365739da90064a` |
| 11 | `theorem` | [pentagon](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/pentagon--79bdd9f724fbb69b12e9dec4.md) | 139 | `result-track:79bdd9f724fbb69b12e9dec495bd5f30f6a224c6695f79f3d8651fcb2c421db9` |
| 12 | `def` | [leftUnitor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/leftunitor--6c8ff92b269e1593ebe9d92a.md) | 147 | `declaration-track:6c8ff92b269e1593ebe9d92a7628e8ba14f5577b0d490b0737c37e9b3d200293` |
| 13 | `theorem` | [leftUnitor_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/leftunitor-naturality--55d95e9970ee25f08c9c57d7.md) | 151 | `result-track:55d95e9970ee25f08c9c57d7aac64c00e31691039fb34774acd0d2829cf63675` |
| 14 | `def` | [rightUnitor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/rightunitor--ffc1ea239a7f08e3e05ecf91.md) | 166 | `declaration-track:ffc1ea239a7f08e3e05ecf91f497566ef2f6588589f5839bf7a2125def09e267` |
| 15 | `theorem` | [rightUnitor_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/rightunitor-naturality--44516c8ad6967b646c0cd040.md) | 170 | `result-track:44516c8ad6967b646c0cd040bbd64de75b4c24447f97c7bd65c4e8f9b8d7bbb7` |
| 16 | `theorem` | [triangle](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/triangle--cdaaa3eeb7143c1e550c4b19.md) | 184 | `result-track:cdaaa3eeb7143c1e550c4b199227a7a8c739042580ebcfec96837ffe249ff39e` |
| 17 | `instance` | [monoidalCategory](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/monoidalcategory--b79d9f81c9fc8fc8d522bfe7.md) | 200 | `declaration-track:b79d9f81c9fc8fc8d522bfe715845a2c68e5824d32e058aa43d4ae3b0308b8a5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/instance--32609a5d43c8830e62b81a7d.md) | 221 | `declaration-track:32609a5d43c8830e62b81a7d581a5ec0dc5aac9c75159dc172abd62b6a5911b0` |
| 19 | `theorem` | [hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/hom-apply--ace7a9ca154a16a1191fa780.md) | 227 | `result-track:ace7a9ca154a16a1191fa780d662e1d7358e4e495584e8049d7774ed272914c0` |
| 20 | `theorem` | [leftUnitor_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/leftunitor-hom-apply--454877ffef69e02b2066050a.md) | 233 | `result-track:454877ffef69e02b2066050a4709e50bc11221f88496f93b8c5837d0b6b303c5` |
| 21 | `theorem` | [leftUnitor_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/leftunitor-inv-apply--92244ab279d1047f9551ebaf.md) | 239 | `result-track:92244ab279d1047f9551ebaf5ee24fc08c5c4c863bed007e919e48fb17f0deca` |
| 22 | `theorem` | [rightUnitor_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/rightunitor-hom-apply--9f88b4abfdc924ea2821f5d7.md) | 245 | `result-track:9f88b4abfdc924ea2821f5d74cd1529612d12350c4062b8fa80e184c1f16c3d1` |
| 23 | `theorem` | [rightUnitor_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/rightunitor-inv-apply--8d5830fd861f91e9bfb58c0f.md) | 251 | `result-track:8d5830fd861f91e9bfb58c0f688ab3bc2f22d578edf85004084f9066d864ec26` |
| 24 | `theorem` | [associator_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/associator-hom-apply--a53fbf17695aaf6571337726.md) | 257 | `result-track:a53fbf17695aaf657133772685c2c591043dfdaf84fb63d5bc7f7bef0808733e` |
| 25 | `theorem` | [associator_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/associator-inv-apply--e2201a907fbb3dc08706719c.md) | 263 | `result-track:e2201a907fbb3dc08706719cff141c8a74e08b46d661457935df97814eae3694` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/instance--d41ac80dc328ff9ccd471ebc.md) | 273 | `declaration-track:d41ac80dc328ff9ccd471ebc7e673d1c36912ee3febc088bd4c0d8a1cf43667e` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/declarations/instance--ac6d5fc0e45066dd1e3eb105.md) | 299 | `declaration-track:ac6d5fc0e45066dd1e3eb105071f9a531a65a4032ceebfa596d1e52f847b20e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
