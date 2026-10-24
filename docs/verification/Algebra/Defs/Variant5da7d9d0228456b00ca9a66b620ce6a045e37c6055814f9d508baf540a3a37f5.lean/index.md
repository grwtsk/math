# Verification target: GRWTSK.Algebra.Defs.Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee90f30fd6c9b73ec876118aa08eae2be49abda5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee90f30fd6c9b73ec876118aa08eae2be49abda5`.

Source path: `GRWTSK/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Data.Rat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Init` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Rat.castRec](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/rat-castrec--95a88be43ce02e1b7c342c99.md) | 61 | `declaration-track:95a88be43ce02e1b7c342c997bb433bad5b7e2d8930242df96580aa433193430` |
| 2 | `def` | [qsmulRec](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/qsmulrec--d2edf414836f8d1d9c9b7d0c.md) | 69 | `declaration-track:d2edf414836f8d1d9c9b7d0c0cacb76def310c0b221c9eac4d03cf25a387e5b9` |
| 3 | `class` | [DivisionSemiring](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/divisionsemiring--f970b97dfaace35d13693aca.md) | 74 | `declaration-track:f970b97dfaace35d13693acadf6393b6dfab7820aa7344e9a36f93f206f629dc` |
| 4 | `class` | [DivisionRing](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/divisionring--dc7b32e0b9c3e2f17774fb39.md) | 87 | `declaration-track:dc7b32e0b9c3e2f17774fb398b2b9fa8c3fa054dd2020c9bbf17ec8180631008` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/instance--b8f651db3430ab725f63e830.md) | 108 | `declaration-track:b8f651db3430ab725f63e830277308455345d1788889b9c9b0c345bfb4878105` |
| 6 | `class` | [Semifield](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/semifield--31252593043b7d6fd3e5e109.md) | 113 | `declaration-track:31252593043b7d6fd3e5e109dcb8904a4970f6f67853e1193cb8ec582b0eb257` |
| 7 | `class` | [Field](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/field--9dee4a19290025ae39eefb6b.md) | 126 | `declaration-track:9dee4a19290025ae39eefb6b295acdefb9c91408f2ae6caf1dc6d6885a6a84a8` |
| 8 | `theorem` | [cast_mk'](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/cast-mk--f366e6879f78a038321b68e6.md) | 135 | `result-track:f366e6879f78a038321b68e6893a8641533abd5b1efd03ca1143eb762d0bcb71` |
| 9 | `theorem` | [cast_def](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/cast-def--b607737f8a5527ed4c55118c.md) | 139 | `result-track:b607737f8a5527ed4c55118cf3058011f38308a402b4dfbcbb3f250a310f26ab` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/instance--1b24b7738ec0dcfe42764b87.md) | 143 | `declaration-track:1b24b7738ec0dcfe42764b875ea6a96b5baffd1d93e5c174f7934997c84e9050` |
| 11 | `theorem` | [smul_def](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/smul-def--ae69de0d9c4456ae6d3ddaf0.md) | 147 | `result-track:ae69de0d9c4456ae6d3ddaf0a3d158615c6243568eb8061643fe00ac19723015` |
| 12 | `theorem` | [smul_one_eq_coe](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/smul-one-eq-coe--810675b99df0bc7f41280f36.md) | 152 | `result-track:810675b99df0bc7f41280f36811f6159b88b65bea775ad2f0c7c0200b2390a2a` |
| 13 | `instance` | [DivisionRing.toOfScientific](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/divisionring-toofscientific--69439c13b2cdccc760430193.md) | 162 | `declaration-track:69439c13b2cdccc760430193c5f35312cafa2e7b967c8f236720ab282be0ec6c` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/instance--ebc03444a9539c48093246a9.md) | 172 | `declaration-track:ebc03444a9539c48093246a96c4ac45b2709fee0d36bf55a4b9a6f451bde811f` |
| 15 | `structure` | [IsField](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/isfield--9cccb2a5d8bc51cb0623dde7.md) | 186 | `declaration-track:9cccb2a5d8bc51cb0623dde75b40a4bbe86bff049869c5634dc72c18c83340b6` |
| 16 | `theorem` | [Semifield.toIsField](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/semifield-toisfield--6bc8e21b653e2f1bfda4a528.md) | 196 | `result-track:6bc8e21b653e2f1bfda4a528dea74ef311f7479f535912fab793ce8b1033b002` |
| 17 | `theorem` | [Field.toIsField](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/field-toisfield--0b069d28a838c119d986ec50.md) | 202 | `result-track:0b069d28a838c119d986ec501e62f717f17e9e0f3f236b5a3e7b6ba0eba843ed` |
| 18 | `theorem` | [IsField.nontrivial](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/isfield-nontrivial--482294ca3c9e865c316c8086.md) | 207 | `result-track:482294ca3c9e865c316c808665a4d84fdaed69638d7edfba88897c572641f65d` |
| 19 | `theorem` | [not_isField_of_subsingleton](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/not-isfield-of-subsingleton--6aa3c5d26cd863437a25277c.md) | 212 | `result-track:6aa3c5d26cd863437a25277c265c27b80e2f5c8018665e646a35e36b58f7de1a` |
| 20 | `def` | [IsField.toSemifield](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/isfield-tosemifield--9e95e657e936c8d7aa2720b4.md) | 221 | `declaration-track:9e95e657e936c8d7aa2720b41b8f032d81767951b149f34e1a690b37936894df` |
| 21 | `def` | [IsField.toField](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/isfield-tofield--2bcc1da18d4061688d4a6522.md) | 231 | `declaration-track:2bcc1da18d4061688d4a65222843ee3bb12dada24633e7ea6e2786210990b8b2` |
| 22 | `theorem` | [uniq_inv_of_isField](../../../../mathematics/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/declarations/uniq-inv-of-isfield--0a13f69671b5ab98da17fefe.md) | 239 | `result-track:0a13f69671b5ab98da17fefec8fd5fef38fd85c722ffcc7c4f8d301dba74a156` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
