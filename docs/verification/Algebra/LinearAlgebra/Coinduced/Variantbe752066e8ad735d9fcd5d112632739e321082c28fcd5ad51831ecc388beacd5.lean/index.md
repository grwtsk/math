# Verification target: GRWTSK.Algebra.LinearAlgebra.Coinduced.Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ecfd42b7283c0c05e42ead1a6b873dfbffd4f2c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ecfd42b7283c0c05e42ead1a6b873dfbffd4f2c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean.json)

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
| 1 | `def` | [coindV](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coindv--a2dd9e315ed4952051106d34.md) | 62 | `declaration-track:a2dd9e315ed4952051106d3441571ecaf53c53dde18aeef52ffa526c9008893e` |
| 2 | `lemma` | [mem_coindV](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/mem-coindv--a05de66c06d46f9b3a5e01fb.md) | 69 | `result-track:a05de66c06d46f9b3a5e01fb6f193a3df56770cfd096e48d3bdde31050cdf54a` |
| 3 | `def` | [coind](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coind--bd4cb50da812da25ae75db6a.md) | 82 | `declaration-track:bd4cb50da812da25ae75db6ab95c89d86d9a3c6bd6ed988d846db0ed03532ac3` |
| 4 | `def` | [coindMap](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coindmap--72aefbaea37fd6bb18e6d7f8.md) | 92 | `declaration-track:72aefbaea37fd6bb18e6d7f8a3e1af7fed6c1ab389fc71704c586e91adfa7937` |
| 5 | `lemma` | [coindMap_coe_apply](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coindmap-coe-apply--b24d086d75c52f39c52ca2aa.md) | 100 | `result-track:b24d086d75c52f39c52ca2aad3792a5707efa5b5b491bca2001da19d0a424e82` |
| 6 | `lemma` | [coindMap_coe_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coindmap-coe-apply-apply--af1a3b6eb30cf6d7f95c20bb.md) | 104 | `result-track:af1a3b6eb30cf6d7f95c20bbca884ef18837748ef860fb9753799cd98ff5bee3` |
| 7 | `abbrev` | [coind](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coind--5a3d677131204e25124c4802.md) | 122 | `declaration-track:5a3d677131204e25124c48026ca127ef1bbcd9344e8196fcd3dbeaa403694a4f` |
| 8 | `abbrev` | [coindMap](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coindmap--f2de5d1ada0f0c6747bbc4dc.md) | 127 | `declaration-track:f2de5d1ada0f0c6747bbc4dcbd3f4304acfc2755cfd90454c51cef1d770d7621` |
| 9 | `def` | [coindFunctor](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coindfunctor--9be85c2e902368da62b5a4d9.md) | 134 | `declaration-track:9be85c2e902368da62b5a4d9dcde1afd6b38dbae905be4459d208fd0267e7a6b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/instance--86d764d7eb42c52e33e925b8.md) | 138 | `declaration-track:86d764d7eb42c52e33e925b8ce7a750ce6300c46148cc187e4f244ffa2687396` |
| 11 | `def` | [_root_.Representation.coind'](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/root-representation-coind--f674426e27ec124206492e44.md) | 165 | `declaration-track:f674426e27ec124206492e4485d5289985c7373e39a68140d8b42c04b1b8b145` |
| 12 | `abbrev` | [coind'](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coind--8bd392f58f340bd58d631efa.md) | 184 | `declaration-track:8bd392f58f340bd58d631efae96b86a6ff38422137525d4e4a9851b8f5b2f87a` |
| 13 | `lemma` | [coind'_ext](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coind-ext--05e7ee0adcd6ddff103ccd6c.md) | 188 | `result-track:05e7ee0adcd6ddff103ccd6c82fff63538325a48ea99f7824b684b4c136c8492` |
| 14 | `def` | [coindMap'](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coindmap--463a081c4274caa19fa673e1.md) | 195 | `declaration-track:463a081c4274caa19fa673e1fa4817d3fbb9b31146464a5f079a01709dc2584a` |
| 15 | `def` | [coindFunctor'](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coindfunctor--b98a095940805823b7613095.md) | 203 | `declaration-track:b98a095940805823b76130957ad25a3f19f88a01c88b9dd602ce43a005e7fe2e` |
| 16 | `def` | [coindVEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coindvequiv--ebf7316d3fb0a761b61ea101.md) | 214 | `declaration-track:ebf7316d3fb0a761b61ea10128ad8135e9a096c801c5022e1eddfdc8c3bb354e` |
| 17 | `def` | [coindIso](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coindiso--7022593b5d83063f94b3a108.md) | 230 | `declaration-track:7022593b5d83063f94b3a1082889684cafb424759a907137c81e5e40ad437baa` |
| 18 | `def` | [coindFunctorIso](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/coindfunctoriso--3ee89cac2f2f4d4bfa32804f.md) | 237 | `declaration-track:3ee89cac2f2f4d4bfa32804f14fae9772ef9943672733bf61588e98712531dea` |
| 19 | `def` | [resCoindToHom](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/rescoindtohom--021d4e07542a468057b1f68b.md) | 250 | `declaration-track:021d4e07542a468057b1f68b6a66aafbf31db60557b9a97a54070d86a4f0a8b2` |
| 20 | `lemma` | [resCoindToHom_hom_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/rescoindtohom-hom-apply-coe--56b135d0652d9684af163274.md) | 256 | `result-track:56b135d0652d9684af163274e0d614b653cc2bfef357587e5514f13a03e006dc` |
| 21 | `def` | [resCoindHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/rescoindhomequiv--f41279c0b458dd71b07eef7c.md) | 282 | `declaration-track:f41279c0b458dd71b07eef7c74f187ee0b24c1ea1e1570baa97d30c1a6763367` |
| 22 | `abbrev` | [resCoindAdjunction](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/rescoindadjunction--333dff7a133b33da5f039c2d.md) | 302 | `declaration-track:333dff7a133b33da5f039c2d3a6f07a4e2451665adb0456b73672e7cc6301ab4` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/instance--446293712e4a539d1c1979bd.md) | 308 | `declaration-track:446293712e4a539d1c1979bd18a424d2b0349aa458b65e0d88980fef8d90f30e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/instance--a91db6e9046154306499545c.md) | 311 | `declaration-track:a91db6e9046154306499545c4ae50253d758a6863fbba1623052b20be43df7ed` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/declarations/instance--2253df5af3880768cb1838fd.md) | 314 | `declaration-track:2253df5af3880768cb1838fd105ae80b1a4d1fe05ab2faa6946c3b3365d2ec47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
