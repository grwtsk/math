# Verification target: GRWTSK.Algebra.LinearAlgebra.InitTail.Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e872047c1be505f3f25bcfd190cef8472f470a65",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e872047c1be505f3f25bcfd190cef8472f470a65`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [select](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/select--e0dfebf7545fd8ff3dd2748e.md) | 66 | `declaration-track:e0dfebf7545fd8ff3dd2748e3ce450e1206be157fc0924784d04dc4d1a49327f` |
| 2 | `def` | [selectPoly](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/selectpoly--ea264d6d7f1cd7cbd4178752.md) | 76 | `declaration-track:ea264d6d7f1cd7cbd4178752bcc553a73391f67a02cdbff6bc1e3fc6768d83cc` |
| 3 | `theorem` | [coeff_select](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/coeff-select--618de045c55e1c71de574f3f.md) | 80 | `result-track:618de045c55e1c71de574f3f6110fccf6e412e51a5a55b63a3e2dd9f23b22767` |
| 4 | `instance` | [select_isPoly](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/select-ispoly--ca4109b5ee04c19863cb0215.md) | 89 | `declaration-track:ca4109b5ee04c19863cb02152634f8195b3128cc0c59361e664d3c1fe5ed34fc` |
| 5 | `theorem` | [select_add_select_not](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/select-add-select-not--72b7422dd398fd7c87d36272.md) | 96 | `result-track:72b7422dd398fd7c87d362725422d32212420fb92516663c97cc8028db7325d0` |
| 6 | `theorem` | [coeff_add_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/coeff-add-of-disjoint--6e204b580a6b18f74f544539.md) | 122 | `result-track:6e204b580a6b18f74f5445390b8a82aab010fb5b0aee04914512a2749980a785` |
| 7 | `def` | [init](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/init--9da92173260dce16f1215567.md) | 152 | `declaration-track:9da92173260dce16f12155676f6791a2be081bd204d7d3915d7255cdad913ca5` |
| 8 | `def` | [tail](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/tail--3e576324d970e321fda07b34.md) | 159 | `declaration-track:3e576324d970e321fda07b34053355afbed186e9e0dc7e4d0780412c3064c412` |
| 9 | `theorem` | [init_add_tail](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/init-add-tail--9f1a5ad8c060ccc3fbbe5ff6.md) | 164 | `result-track:9f1a5ad8c060ccc3fbbe5ff6f888d28e8b453dfa0cbd978f44a82a85ec812c64` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/syntax--77fe889ff8a7d4f80cac6008.md) | 173 | `declaration-track:77fe889ff8a7d4f80cac60084e79d3b9659c97c2e974ed335555bc2afd81572f` |
| 11 | `elab_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/elab-rules--610f90b0d7e37955278468a5.md) | 178 | `declaration-track:610f90b0d7e37955278468a5ef41969263842ddfe4c3c17616cad21fb095c246` |
| 12 | `theorem` | [init_init](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/init-init--39842215318df4708efb2646.md) | 204 | `result-track:39842215318df4708efb2646ef2146686c678fb63882eb2ea5e6e8434bf58a18` |
| 13 | `theorem` | [init_add](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/init-add--2ba8d1c956b0dcc4d1c47c77.md) | 211 | `result-track:2ba8d1c956b0dcc4d1c47c7727fa3a33a98a1b96dad9cd3c875395909b033e20` |
| 14 | `theorem` | [init_mul](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/init-mul--09a83f2a0f3882f07cb5e30a.md) | 215 | `result-track:09a83f2a0f3882f07cb5e30a5a3ffcf4948b7085b53e466713c0c3c9eb6237f2` |
| 15 | `theorem` | [init_neg](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/init-neg--9003f6c19d65e6cd65efc481.md) | 219 | `result-track:9003f6c19d65e6cd65efc481466ec566705cb4b9c56d486eae67f41dccf47693` |
| 16 | `theorem` | [init_sub](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/init-sub--75fbf63333d32bed7b59ae21.md) | 223 | `result-track:75fbf63333d32bed7b59ae218e416109f3cc0839671d3535e9852c7bb709b0a3` |
| 17 | `theorem` | [init_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/init-nsmul--87f214b6288c0d706ae93c57.md) | 227 | `result-track:87f214b6288c0d706ae93c571ab164916c344c1c872ee517d77d66c6c155e3b0` |
| 18 | `theorem` | [init_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/init-zsmul--aea05f22505f07a6ca6f088b.md) | 231 | `result-track:aea05f22505f07a6ca6f088b6b5847e920cdbd23ce21318c77cef517a4efab38` |
| 19 | `theorem` | [init_pow](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/init-pow--592907b21c9eb2b197f417d5.md) | 235 | `result-track:592907b21c9eb2b197f417d53a18270634829a36835cce49c924e3f4ac19c6cb` |
| 20 | `theorem` | [init_isPoly](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variant6cfa841a0751878931d9dfe26d8a42351650cbbae8f9d24f1b33ae6514a694ca.lean/declarations/init-ispoly--1ae4c4bdd076558a7c9d9d4f.md) | 244 | `result-track:1ae4c4bdd076558a7c9d9d4f2a2e2582c5efef3fb8eed6cadfbfadd379abfda3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
