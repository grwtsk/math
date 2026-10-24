# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.CochainComplex.Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0774cb6236e7fe3aed801dbcb52a1a3ee47f07f9",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0774cb6236e7fe3aed801dbcb52a1a3ee47f07f9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.TruncLEHomology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.SingleFunctors` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.ShiftSequence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [truncLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/truncle--2eef57ce3f174a70d81714cd.md) | 38 | `declaration-track:2eef57ce3f174a70d81714cd488e55f54db941d61070fb80b3886116a427c940` |
| 2 | `abbrev` | [truncGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/truncge--dbcda5ebc9dff18514dd6774.md) | 42 | `declaration-track:dbcda5ebc9dff18514dd6774e3f94a3268f07a8085338a2acbdf2d4a532b65a2` |
| 3 | `def` | [ιTruncLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/truncle--cb502e8211a9fd6b4cb62e6f.md) | 46 | `declaration-track:cb502e8211a9fd6b4cb62e6f5d52c492489b404dabd1c8a48a3141bbf6f81b78` |
| 4 | `def` | [πTruncGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/truncge--62adcbf6bf43ea93a327710d.md) | 50 | `declaration-track:62adcbf6bf43ea93a327710d27a192dc5aeb1b43b649f412bb5ea4ea49ca4187` |
| 5 | `abbrev` | [truncLEMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/trunclemap--6879a7f178d6f6f9a1f5fe7a.md) | 58 | `declaration-track:6879a7f178d6f6f9a1f5fe7a78f5eb9ad3fda3447db032cf4401015d07703a39` |
| 6 | `abbrev` | [truncGEMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/truncgemap--ef54969dca9a5a18901e77e5.md) | 62 | `declaration-track:ef54969dca9a5a18901e77e5c34148352909c44dedc1d7bcfa4aae7123323308` |
| 7 | `lemma` | [ιTruncLE_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/truncle-naturality--f2c779df28efa6c79992f744.md) | 66 | `result-track:f2c779df28efa6c79992f7440e5378c9c95d03803e5582091f74006f3365c1e2` |
| 8 | `lemma` | [πTruncGE_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/truncge-naturality--bc6b0551e2159b5b6f351767.md) | 71 | `result-track:bc6b0551e2159b5b6f3517677878dde6eb207abdaac7123f27ea5c13fa85ac01` |
| 9 | `abbrev` | [IsStrictlyGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isstrictlyge--d9fb25b493b9b149ac386acb.md) | 80 | `declaration-track:d9fb25b493b9b149ac386acb28bc8d55228e614c0a86d968ce2ebc2f6532b035` |
| 10 | `abbrev` | [IsStrictlyLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isstrictlyle--c8a94793df9d093a00e446e6.md) | 83 | `declaration-track:c8a94793df9d093a00e446e67c1552e84d159b4314b91989b4d064924641dcf4` |
| 11 | `abbrev` | [IsGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isge--7fbb5b43ca71fedef4842271.md) | 86 | `declaration-track:7fbb5b43ca71fedef4842271bbed851fa782d21403528a53d4e6ab48fc0a50e5` |
| 12 | `abbrev` | [IsLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isle--52f2eb655fa2f04ecf45d753.md) | 89 | `declaration-track:52f2eb655fa2f04ecf45d753486fa1879eec163673976da58df8d44191a567aa` |
| 13 | `lemma` | [isZero_of_isStrictlyGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/iszero-of-isstrictlyge--30e53ff84c41128041638166.md) | 91 | `result-track:30e53ff84c41128041638166a4acd9a0c9065333b6cd295ba1f1cf9a7e1af9cc` |
| 14 | `lemma` | [isZero_of_isStrictlyLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/iszero-of-isstrictlyle--3b2392e49a62f40b7d7d1d78.md) | 96 | `result-track:3b2392e49a62f40b7d7d1d789fd0ccdf63ca83788e16cbea7dd82ebd726bebf0` |
| 15 | `lemma` | [exactAt_of_isGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/exactat-of-isge--9bd26cd60e6264bf8cd2d5bd.md) | 101 | `result-track:9bd26cd60e6264bf8cd2d5bddb43999990c00a890ef67ab01637c255027f9cad` |
| 16 | `lemma` | [exactAt_of_isLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/exactat-of-isle--aec9f19b82fa3a822d16df27.md) | 106 | `result-track:aec9f19b82fa3a822d16df27c9f548222d941b8b49962be65eceea1a5fdee1f4` |
| 17 | `lemma` | [isZero_of_isGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/iszero-of-isge--c9f37122cf3277168fcf99fa.md) | 111 | `result-track:c9f37122cf3277168fcf99fac93524535a44f28212b8155aee1b65a42444017d` |
| 18 | `lemma` | [isZero_of_isLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/iszero-of-isle--1870e7ec37220159a4bd3bbe.md) | 115 | `result-track:1870e7ec37220159a4bd3bbe731dc933bd4e74be3a867ee54e30cde2db3deacb` |
| 19 | `lemma` | [isStrictlyGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isstrictlyge-iff--9d829fee0e0942489836794b.md) | 119 | `result-track:9d829fee0e0942489836794bc403cfe5d188593b193bbcaa5eca4fc0ea9eb781` |
| 20 | `lemma` | [isStrictlyLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isstrictlyle-iff--05cbd3bd9a6db819f7211f3d.md) | 129 | `result-track:05cbd3bd9a6db819f7211f3d2f1197f6fd479d7abbb892386a854c42d30e4f0f` |
| 21 | `lemma` | [isGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isge-iff--ecf488048d8836ac730cafe1.md) | 139 | `result-track:ecf488048d8836ac730cafe124474ad6825e9d69df8d0c6a8e8952db4a04aa93` |
| 22 | `lemma` | [isLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isle-iff--f3ecbf59881cce1278e41af0.md) | 149 | `result-track:f3ecbf59881cce1278e41af0c3be0b29e0cf4662f3845d181cf093316f8d65f8` |
| 23 | `lemma` | [isStrictlyLE_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isstrictlyle-of-le--d6fb71dd517fc879b4db0f88.md) | 159 | `result-track:d6fb71dd517fc879b4db0f884240807e495217076ca20a61a1964309ab6bbed6` |
| 24 | `lemma` | [isStrictlyGE_of_ge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isstrictlyge-of-ge--1c3d73fbe59500c364de51ba.md) | 166 | `result-track:1c3d73fbe59500c364de51ba03dbe237a8d630beaf460ed0e3d46987b1ebdf47` |
| 25 | `lemma` | [isLE_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isle-of-le--30a92dee0024c4b354de44ee.md) | 173 | `result-track:30a92dee0024c4b354de44ee265b6d69299d833f06025ef053e4df1dde9ba8a8` |
| 26 | `lemma` | [isGE_of_ge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isge-of-ge--bde793ca0f3a5f7eb21433fc.md) | 180 | `result-track:bde793ca0f3a5f7eb21433fc22bac33daff85c7f986b74891ac1eb8bdb1bd14c` |
| 27 | `lemma` | [isStrictlyLE_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isstrictlyle-of-iso--63b97c6dff01b082e58afb0b.md) | 193 | `result-track:63b97c6dff01b082e58afb0bfa1e833e55c1d8e61cd442a285d6d426b658ab4f` |
| 28 | `lemma` | [isStrictlyGE_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isstrictlyge-of-iso--f70a8a4cb8d9557426cccdd6.md) | 196 | `result-track:f70a8a4cb8d9557426cccdd602d44cf2deb49608a720e68b9b457db98511e109` |
| 29 | `lemma` | [isLE_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isle-of-iso--6598e3ea8fb20a739d8eafaf.md) | 199 | `result-track:6598e3ea8fb20a739d8eafaf205fa0dd830e489e8897ef343bc30625448f013b` |
| 30 | `lemma` | [isGE_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isge-of-iso--1aeedb04a0c07994f76850a6.md) | 202 | `result-track:1aeedb04a0c07994f76850a6433d4d8552a2c5944d6d994baa6a0f01564f6f8e` |
| 31 | `lemma` | [exists_iso_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/exists-iso-single--3f10cb5c115843160894aa1d.md) | 213 | `result-track:3f10cb5c115843160894aa1d2bcb5e0aa4ecef49861a02182a842788d1bb95be` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/instance--3fbd63b29ae37afee5214930.md) | 228 | `declaration-track:3fbd63b29ae37afee52149303f46dc2faf795b62f5b854bf3d54b3415a21b605` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/instance--849238fde96aec690044ac47.md) | 234 | `declaration-track:849238fde96aec690044ac474e767a8c65994764fbb4c842087b6ae14c1be55b` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/instance--8c7160de43de745272b68635.md) | 242 | `declaration-track:8c7160de43de745272b686358c5f33202b3eac23649f5a9aad02426cdb319a71` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/instance--fb8189fbb19ec944bb216f60.md) | 244 | `declaration-track:fb8189fbb19ec944bb216f60101c751d9145fd6a9aa8431f5b4f9ed1f73f9319` |
| 36 | `lemma` | [isIso_πTruncGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isiso-truncge-iff--46dbf816ff15d1be0971bce2.md) | 246 | `result-track:46dbf816ff15d1be0971bce2dc6c0cc5c22a8e1afa9f3a5075761111b35caf21` |
| 37 | `lemma` | [isIso_ιTruncLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isiso-truncle-iff--b794826b09f3f3e1438fc8f8.md) | 249 | `result-track:b794826b09f3f3e1438fc8f8ffaadafaa1622c1ba7f3844de79bd674b98481ee` |
| 38 | `lemma` | [quasiIso_πTruncGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/quasiiso-truncge-iff--6ec8e0899d1b8d032271bc1d.md) | 252 | `result-track:6ec8e0899d1b8d032271bc1d37303f24098b7426bb24bc2455f2c735753ca8e6` |
| 39 | `lemma` | [quasiIso_ιTruncLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/quasiiso-truncle-iff--41c66769a72e3f9eb30b0e7a.md) | 255 | `result-track:41c66769a72e3f9eb30b0e7a69c13b6f6332a3d9bfae7e3d6a3a54e31433b27d` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/instance--da03592382660b35fae6c424.md) | 258 | `declaration-track:da03592382660b35fae6c42428cca2ea673caa8308f3f64f02e498dc093db48f` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/instance--c112f0660dad9cc85e66af6c.md) | 262 | `declaration-track:c112f0660dad9cc85e66af6c1e87ac03cf55f0663b0e488e05a570f8f8553313` |
| 42 | `lemma` | [quasiIso_truncGEMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/quasiiso-truncgemap-iff--302d4684172369764c005232.md) | 268 | `result-track:302d4684172369764c0052325686891c14f5539b2746d9b7db2cd7c36948ef64` |
| 43 | `lemma` | [quasiIso_truncLEMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/quasiiso-trunclemap-iff--1fdde74f74cb97829ae16248.md) | 278 | `result-track:1fdde74f74cb97829ae162484beb959e8408fd880a97f62d3124a10a86362777` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/instance--cc97b13512714268747faaca.md) | 296 | `declaration-track:cc97b13512714268747faacaff9c9d0060f45f4bb60318c09c6542665c2b643e` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/instance--e014f6f8494195f177af438e.md) | 299 | `declaration-track:e014f6f8494195f177af438e06efca78a07d9c03686f6b41680ef30094bad09b` |
| 46 | `lemma` | [isStrictlyLE_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isstrictlyle-shift--cb25f8efcfbf46662dbdc66e.md) | 304 | `result-track:cb25f8efcfbf46662dbdc66eb3539e5840a37c555c3eb90377893642df1d7d87` |
| 47 | `lemma` | [isStrictlyGE_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isstrictlyge-shift--8b0246a7bf5cce998f7c322f.md) | 310 | `result-track:8b0246a7bf5cce998f7c322f1bc56794e591bc21a3c5a62009a87e21670c93cc` |
| 48 | `lemma` | [isLE_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isle-shift--f9c6eff176eb87158f74d9d8.md) | 320 | `result-track:f9c6eff176eb87158f74d9d8c5fa3bf8acb8e8ce75fb35e7c16b6fa487921605` |
| 49 | `lemma` | [isGE_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a.lean/declarations/isge-shift--83c172501af16a42235702bb.md) | 327 | `result-track:83c172501af16a42235702bb6db15a6f610b8741252abca0ef85aa02cf357a69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
