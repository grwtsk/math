# Verification target: GRWTSK.NumberTheory.ZModChar.Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d420847c09e254fd07ab24c4d19183bc4e48b27b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d420847c09e254fd07ab24c4d19183bc4e48b27b`.

Source path: `GRWTSK/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Range` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [χ₄](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/anonymous--95d5dc451a8b5d6b5d1752f6.md) | 38 | `declaration-track:95d5dc451a8b5d6b5d1752f65a3de980612bacb7028571d1c22a1264329c3bd1` |
| 2 | `theorem` | [isQuadratic_χ₄](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/isquadratic--0ce7ded151c916fb660ec8c2.md) | 49 | `result-track:0ce7ded151c916fb660ec8c281230d2d2844d79f64defb4bf813678de8dcfd10` |
| 3 | `theorem` | [χ₄_nat_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/nat-mod-four--a558081daa165c42108cc382.md) | 54 | `result-track:a558081daa165c42108cc382c1d2df9faecca836112d45bc28bb8b680f8a6629` |
| 4 | `theorem` | [χ₄_int_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/int-mod-four--ed848eee7c1555804fa2662a.md) | 58 | `result-track:ed848eee7c1555804fa2662a657c9e5cf9dea7091d938522ef2fecba5afc44aa` |
| 5 | `theorem` | [χ₄_int_eq_if_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/int-eq-if-mod-four--0ca0163ca972201295bf90b2.md) | 62 | `result-track:0ca0163ca972201295bf90b2e9d6bd22f54c3a30c602ce2921db7916d8d5cd69` |
| 6 | `theorem` | [χ₄_nat_eq_if_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/nat-eq-if-mod-four--c791fb33dad8f4c84bb49cdf.md) | 69 | `result-track:c791fb33dad8f4c84bb49cdf97346888c7f899c1949f2f3b8a4d299f2e7a6c06` |
| 7 | `theorem` | [χ₄_eq_neg_one_pow](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/eq-neg-one-pow--5471893e3ce2b324ef771df4.md) | 74 | `result-track:5471893e3ce2b324ef771df4cbd95beab8a62f17804edffb7725f4a21c9bcfc4` |
| 8 | `theorem` | [χ₄_nat_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/nat-one-mod-four--301e0fba4c4e528996b18a69.md) | 85 | `result-track:301e0fba4c4e528996b18a69361241a21b7f0903536196bb4cbc93c0e3f6422c` |
| 9 | `theorem` | [χ₄_nat_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/nat-three-mod-four--97efd91886ed083b4f9bbb6c.md) | 90 | `result-track:97efd91886ed083b4f9bbb6ceaef479c23462849b015f44a7b026d640011ae12` |
| 10 | `theorem` | [χ₄_int_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/int-one-mod-four--90c75473ff6b5e4bdcf5760f.md) | 95 | `result-track:90c75473ff6b5e4bdcf5760fa91339ad4b8c724e8246fb751e22911c2049c83b` |
| 11 | `theorem` | [χ₄_int_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/int-three-mod-four--8b7fee2a51a43047e57fffb5.md) | 100 | `result-track:8b7fee2a51a43047e57fffb56fc95b4cc82f6649b75741f6954f2949f3414776` |
| 12 | `theorem` | [neg_one_pow_div_two_of_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/neg-one-pow-div-two-of-one-mod-four--b2ac73c31eb4ba328e356fb8.md) | 105 | `result-track:b2ac73c31eb4ba328e356fb8b8a3f4eb6e51af4a54c1b1af51c24fcdcd43e8a4` |
| 13 | `theorem` | [neg_one_pow_div_two_of_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/neg-one-pow-div-two-of-three-mod-four--82e52d457547dbb129e3ad4f.md) | 109 | `result-track:82e52d457547dbb129e3ad4f0124c95aa023a6665c6a16032257e17fdfe9d38a` |
| 14 | `def` | [χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/anonymous--9e57dbe5e62d3866ca1a4895.md) | 115 | `declaration-track:9e57dbe5e62d3866ca1a4895ea14688ba5043c0e0ac2d07dcdb03b0ce39d4fea` |
| 15 | `theorem` | [isQuadratic_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/isquadratic--a973159f7c2958b8129e421a.md) | 126 | `result-track:a973159f7c2958b8129e421a4ce43b99ef44c71eb403f099caa1b28913a65fa9` |
| 16 | `theorem` | [χ₈_nat_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/nat-mod-eight--a48845e7dde51a1990695586.md) | 131 | `result-track:a48845e7dde51a199069558646b9effe0a07e5783ebcbcb00d8964e1fa4c83fe` |
| 17 | `theorem` | [χ₈_int_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/int-mod-eight--92a428277e23607cd496dba8.md) | 135 | `result-track:92a428277e23607cd496dba88227277512cf5c89c423c6dcc8336a818efe444e` |
| 18 | `theorem` | [χ₈_int_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/int-eq-if-mod-eight--eb4c733f95b13294e7c20f06.md) | 139 | `result-track:eb4c733f95b13294e7c20f067b021e0bb7b10a980ce7521a389dc2d764aa44e5` |
| 19 | `theorem` | [χ₈_nat_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/nat-eq-if-mod-eight--248df78cf3003f6b4d53b6a2.md) | 147 | `result-track:248df78cf3003f6b4d53b6a212a43c02d9d363b0f8d55e2b7489e63494db3638` |
| 20 | `def` | [χ₈'](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/anonymous--475e6272d1466650fac22720.md) | 154 | `declaration-track:475e6272d1466650fac227204b9443a1dfb492564a7d786bf3300583fcee6304` |
| 21 | `theorem` | [isQuadratic_χ₈'](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/isquadratic--49476e209d7a801ea16c1cea.md) | 165 | `result-track:49476e209d7a801ea16c1ceaf06722a8cb9f11d955bd73a990bdccd741d67515` |
| 22 | `theorem` | [χ₈'_int_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/int-eq-if-mod-eight--6fb869a4737bf8100563b01f.md) | 170 | `result-track:6fb869a4737bf8100563b01f175bf309f0053241846888064ec45d80dd1385bb` |
| 23 | `theorem` | [χ₈'_nat_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/nat-eq-if-mod-eight--83958cf8809e0df0821505df.md) | 178 | `result-track:83958cf8809e0df0821505dff514c53429eabd163a01f06c194fb7c4d4e23708` |
| 24 | `theorem` | [χ₈'_eq_χ₄_mul_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/eq-mul--9e58cac17dfbbf9c1c95dd75.md) | 183 | `result-track:9e58cac17dfbbf9c1c95dd751224c2d1af224124c24982fd6135ad3afd47b462` |
| 25 | `theorem` | [χ₈'_int_eq_χ₄_mul_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/declarations/int-eq-mul--f7719bfa7fb12377c47bde60.md) | 186 | `result-track:f7719bfa7fb12377c47bde6013d8a9a23771f3def98bf2b5a561e213f22fa6e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
