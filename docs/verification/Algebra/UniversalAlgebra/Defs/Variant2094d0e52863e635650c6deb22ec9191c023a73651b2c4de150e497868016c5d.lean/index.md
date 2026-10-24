# Verification target: GRWTSK.Algebra.UniversalAlgebra.Defs.Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33e5b7296ede5cc9ed64bb1422e91e522b490159",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33e5b7296ede5cc9ed64bb1422e91e522b490159`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CovariantAndContravariant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedSub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/orderedsub--772828b0f2a44ffdb98c80db.md) | 55 | `declaration-track:772828b0f2a44ffdb98c80db768b138636d2f494abb5a7d76b022dd37eceed48` |
| 2 | `theorem` | [tsub_le_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-le-iff-right--c291affd6cc1ad1fd265db21.md) | 65 | `result-track:c291affd6cc1ad1fd265db2125bf3bd2f49a63152bf7ab868612cb248cf11dde` |
| 3 | `theorem` | [add_tsub_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-le-right--90dd799c665e8a7dbb9b9fec.md) | 70 | `result-track:90dd799c665e8a7dbb9b9fecc679b5d3869c801d089816907777141c3af6cac0` |
| 4 | `theorem` | [le_tsub_add](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/le-tsub-add--114d98b147e212289dc44bea.md) | 74 | `result-track:114d98b147e212289dc44bea9c2cae3ab07a3a7873d55924b93672af028de195` |
| 5 | `theorem` | [tsub_le_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-le-iff-left--ad2e1db66eb93c3a5fce96e0.md) | 93 | `result-track:ad2e1db66eb93c3a5fce96e0343810a56f207fb74c38ad27522145f194d7f49c` |
| 6 | `theorem` | [le_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/le-add-tsub--a060638ccd9b24e15eb88864.md) | 96 | `result-track:a060638ccd9b24e15eb88864bc54a1333bdcdda3d024d699b4aae25bc0b4d65e` |
| 7 | `theorem` | [add_tsub_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-le-left--7b1aed9055ca1bef5c056f9d.md) | 101 | `result-track:7b1aed9055ca1bef5c056f9d0722b2011e0b05f7e929e0c0e6c658735bf3904f` |
| 8 | `theorem` | [tsub_le_tsub_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-le-tsub-right--5c0af378dac8896fcefc86f1.md) | 105 | `result-track:5c0af378dac8896fcefc86f1bdc2485bed69e1ca8f1109288cc9c60ec2ba7a96` |
| 9 | `theorem` | [tsub_le_iff_tsub_le](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-le-iff-tsub-le--c6475002135c8255861a207e.md) | 109 | `result-track:c6475002135c8255861a207efc773d9d3ecd7432f47d5269fa5ac29b5d20976c` |
| 10 | `theorem` | [tsub_tsub_le](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-tsub-le--545e883a3d81ef89f7513450.md) | 113 | `result-track:545e883a3d81ef89f7513450597924e7472ba1bd002408792f2aa310c70c6e3c` |
| 11 | `theorem` | [tsub_le_tsub_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-le-tsub-left--543fb9f9f25b2f619cf9b9d4.md) | 121 | `result-track:543fb9f9f25b2f619cf9b9d4d787d5dde1fea17906d8957e71b9b84f7be61178` |
| 12 | `theorem` | [tsub_le_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-le-tsub--bae62d7f42272f2db9889015.md) | 125 | `result-track:bae62d7f42272f2db988901541ef5517535978a5e20df84978e45e3b56c62375` |
| 13 | `theorem` | [antitone_const_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/antitone-const-tsub--6bd38d189edafb11ecc5b9a1.md) | 129 | `result-track:6bd38d189edafb11ecc5b9a192056e3c791a63d26bb55a2c3dedb7d075032232` |
| 14 | `theorem` | [add_tsub_le_assoc](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-le-assoc--331c856a58ffc794570067f0.md) | 133 | `result-track:331c856a58ffc794570067f08b757f8c577bf603aa0c9f107b1541673a8c64c7` |
| 15 | `theorem` | [add_tsub_le_tsub_add](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-le-tsub-add--d9bbb9b86539b0c00460f67a.md) | 139 | `result-track:d9bbb9b86539b0c00460f67a6202becdfae911f6511ede998a36cf479e3e5e86` |
| 16 | `theorem` | [add_le_add_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-le-add-add-tsub--9f0c3f617ed2ed2f730ec857.md) | 144 | `result-track:9f0c3f617ed2ed2f730ec85763b057d9a7da179a8dd3169a3d18ae95933b967a` |
| 17 | `theorem` | [le_tsub_add_add](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/le-tsub-add-add--70e7cc0d0ec1dea6a35e3ee2.md) | 149 | `result-track:70e7cc0d0ec1dea6a35e3ee2ea5dab311aab05186b1b34a358bfcc67b50e7d55` |
| 18 | `theorem` | [tsub_le_tsub_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-le-tsub-add-tsub--af2d200151ab50fe14f8400f.md) | 154 | `result-track:af2d200151ab50fe14f8400f6230ce741329777e0d118e7e0dc27bb92f8a856d` |
| 19 | `theorem` | [tsub_tsub_tsub_le_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-tsub-tsub-le-tsub--4e420585ab97c2580e20b8e1.md) | 159 | `result-track:4e420585ab97c2580e20b8e12e4145455e6f9be515c8194aabfc0c71a7dc813e` |
| 20 | `theorem` | [tsub_tsub_le_tsub_add](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-tsub-le-tsub-add--5fe6cf5ac35e4e02670d32d3.md) | 164 | `result-track:5fe6cf5ac35e4e02670d32d372d8d11844d47a854771b8db5ae243c4b494b2fb` |
| 21 | `theorem` | [add_tsub_add_le_tsub_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-add-le-tsub-add-tsub--acd796d6e0aebccaa993b5d0.md) | 173 | `result-track:acd796d6e0aebccaa993b5d0371e654b1d738edcfc3d666a91713d93638fe39d` |
| 22 | `theorem` | [add_tsub_add_le_tsub_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-add-le-tsub-left--99bfdc1ed77af91e4905c836.md) | 181 | `result-track:99bfdc1ed77af91e4905c83665c06adfab9b4f9e7643e95e66abde34a9b6df8a` |
| 23 | `theorem` | [add_tsub_add_le_tsub_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-add-le-tsub-right--2e28b23c3ee9e89879b3dcfd.md) | 187 | `result-track:2e28b23c3ee9e89879b3dcfdd499f0684d2a96896654321b77ca0acd5afa093a` |
| 24 | `theorem` | [le_add_tsub_swap](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/le-add-tsub-swap--f52d1f97d810513107b5278e.md) | 199 | `result-track:f52d1f97d810513107b5278e1b5f8d97b6acd01f04772314a7fe0c5a96aea908` |
| 25 | `theorem` | [le_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/le-add-tsub--e2e56d760b4a16faeecc49c6.md) | 203 | `result-track:e2e56d760b4a16faeecc49c6f2008f02d4596340bcf3c7f28e809f76ddc69bbc` |
| 26 | `theorem` | [le_tsub_of_add_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/le-tsub-of-add-le-left--a8f4f7c750ef5c17d615fb5f.md) | 208 | `result-track:a8f4f7c750ef5c17d615fb5f8dc79409330aa0d5afbd1a8b5064aaa97e09ce5f` |
| 27 | `theorem` | [le_tsub_of_add_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/le-tsub-of-add-le-right--937b7741921f6305527f1f16.md) | 212 | `result-track:937b7741921f6305527f1f16e89a9a1163136414bcef043e91b7aef44511d153` |
| 28 | `theorem` | [le_add_tsub_swap](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/le-add-tsub-swap--8050448d90c8860ff2c8fc33.md) | 225 | `result-track:8050448d90c8860ff2c8fc33ab2bf20122a13c403969f9e4de23acdb5020c66d` |
| 29 | `theorem` | [le_add_tsub'](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/le-add-tsub--a55352b224eb2df7e547a053.md) | 229 | `result-track:a55352b224eb2df7e547a053ed4fb794e43c402175ad6ee4aeed967449a9bafd` |
| 30 | `theorem` | [le_tsub_of_add_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/le-tsub-of-add-le-left--3ede7c7db48f571a31e03fad.md) | 233 | `result-track:3ede7c7db48f571a31e03fad94e0ea67c056f18483bb1c71011c6606fa1bf589` |
| 31 | `theorem` | [le_tsub_of_add_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/le-tsub-of-add-le-right--4fde87a194af102cc061bbaf.md) | 237 | `result-track:4fde87a194af102cc061bbafd4dc6b30b2aad360c06611881db627ef27efac0c` |
| 32 | `theorem` | [tsub_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-nonpos--72bc046a14083c060ef6c278.md) | 247 | `result-track:72bc046a14083c060ef6c27866fdf47f4a2bcc066437bf701ad0a7fb753f0cdc` |
| 33 | `theorem` | [tsub_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-tsub--fe59716dfc1271c2e103352e.md) | 260 | `result-track:fe59716dfc1271c2e103352e4f5c3fcdc8d74dc6792c49b88cec9217456d7049` |
| 34 | `theorem` | [tsub_add_eq_tsub_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-add-eq-tsub-tsub--490329e03b745ee3b85ed437.md) | 266 | `result-track:490329e03b745ee3b85ed437ba0ba17aafe09cbab1f436e21fd3dbc345177e86` |
| 35 | `theorem` | [tsub_add_eq_tsub_tsub_swap](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-add-eq-tsub-tsub-swap--6ef9f3e4e1d6428056ab46b6.md) | 270 | `result-track:6ef9f3e4e1d6428056ab46b660724e60a445f498e28ad0dba2f035887235b69b` |
| 36 | `theorem` | [tsub_right_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-right-comm--315f9cc042f91781d1934fdb.md) | 275 | `result-track:315f9cc042f91781d1934fdba6eba90eb7a53045b84a7c238cdc7e6655109725` |
| 37 | `theorem` | [tsub_eq_of_eq_add](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-eq-of-eq-add--7eb4685e55ed62ef9565560b.md) | 284 | `result-track:7eb4685e55ed62ef9565560bd381f45c39b2a74ebbab96732f92588e982da94e` |
| 38 | `theorem` | [eq_tsub_of_add_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/eq-tsub-of-add-eq--4d7a9d81fcf71964956942fc.md) | 290 | `result-track:4d7a9d81fcf71964956942fcad576af96101d23e6cd2db7cbe96dce62736bccb` |
| 39 | `theorem` | [tsub_eq_of_eq_add_rev](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-eq-of-eq-add-rev--46c03d7685e6e2491768cca8.md) | 294 | `result-track:46c03d7685e6e2491768cca85cb09eef649c97505f38163c00cafeb3446de6c7` |
| 40 | `theorem` | [add_tsub_cancel_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-cancel-right--dbd4f89c0b67eac97cfe2340.md) | 299 | `result-track:dbd4f89c0b67eac97cfe2340e29491231d6a8dfd0824aa57d8590d33f605588d` |
| 41 | `theorem` | [add_tsub_cancel_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-cancel-left--5fa11c7c22d13b04cefa942c.md) | 304 | `result-track:5fa11c7c22d13b04cefa942c9b9fe40481e86096c4cb4ee2a162959e2d5c7815` |
| 42 | `theorem` | [lt_add_of_tsub_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-add-of-tsub-lt-left--a701bf8b78a3d347b30ea20f.md) | 308 | `result-track:a701bf8b78a3d347b30ea20fecfcecdbcf6a1a971dc89c44da01001a89c1384a` |
| 43 | `theorem` | [lt_add_of_tsub_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-add-of-tsub-lt-right--102e5627eb3ac5c555cb5d88.md) | 315 | `result-track:102e5627eb3ac5c555cb5d88ea14721fa01e0898f855f3ad0bc16853809cbc09` |
| 44 | `theorem` | [lt_tsub_of_add_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-tsub-of-add-lt-right--ab134a6f563170e5d4fd8bda.md) | 323 | `result-track:ab134a6f563170e5d4fd8bdae0d345931578b229aa6b47db105e7e00494e992b` |
| 45 | `theorem` | [lt_tsub_of_add_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-tsub-of-add-lt-left--6dd31d4147e96bab1c141ec8.md) | 329 | `result-track:6dd31d4147e96bab1c141ec8d8a8a4a20de6185af2609ffc461e8e7ecc8cf789` |
| 46 | `theorem` | [tsub_eq_of_eq_add](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-eq-of-eq-add--ae2e2335ee3cba21a8cd7b5b.md) | 342 | `result-track:ae2e2335ee3cba21a8cd7b5b24f9d2a7abf0ccd5a71e922aba48dcbc7c17da9f` |
| 47 | `theorem` | [eq_tsub_of_add_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/eq-tsub-of-add-eq--3e848c33bd5ef2a7336b5c80.md) | 346 | `result-track:3e848c33bd5ef2a7336b5c80bc8cfdc39f6d81ff6dd9f8934cc7a2a6399a771b` |
| 48 | `theorem` | [tsub_eq_of_eq_add_rev](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-eq-of-eq-add-rev--6cd92ef5bd7e36ace33e3e48.md) | 350 | `result-track:6cd92ef5bd7e36ace33e3e483d981092d0c788b2375c79bc9464aa0bcdb89ba4` |
| 49 | `theorem` | [add_tsub_cancel_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-cancel-right--558d828477c522a0b68e2b97.md) | 355 | `result-track:558d828477c522a0b68e2b97beba05ee287753851ee066a51a2eb2996a8cd092` |
| 50 | `theorem` | [add_tsub_cancel_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-cancel-left--a17e201cd5f6e85d232e5530.md) | 360 | `result-track:a17e201cd5f6e85d232e553073ffcd39fb640e519ade8f546e8a28edf0f75884` |
| 51 | `theorem` | [lt_add_of_tsub_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-add-of-tsub-lt-left--1c6319a475311141a9c24cc8.md) | 364 | `result-track:1c6319a475311141a9c24cc8f0ea1f9c60de997c2f7bc748685f747cd524a866` |
| 52 | `theorem` | [lt_add_of_tsub_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-add-of-tsub-lt-right--aa4596dc4482d3f382b99582.md) | 368 | `result-track:aa4596dc4482d3f382b99582f0ed6b9692428b59019207efed0a158cf96e394e` |
| 53 | `theorem` | [lt_tsub_of_add_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-tsub-of-add-lt-left--80d03051ed04e9daae2d08f4.md) | 374 | `result-track:80d03051ed04e9daae2d08f4c956712577698c53782db17a107f35f31d527bf2` |
| 54 | `theorem` | [lt_tsub_of_add_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-tsub-of-add-lt-right--8a0944979536fd171cc69667.md) | 378 | `result-track:8a0944979536fd171cc6966786ac232f3c98a82b6f4fec20caddbcaedcac023f` |
| 55 | `theorem` | [add_tsub_add_eq_tsub_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-add-eq-tsub-right--da95e2a6b4b0be1e7f234a36.md) | 388 | `result-track:da95e2a6b4b0be1e7f234a366616f101bfddd12dbb21b700667915fe54c02e80` |
| 56 | `theorem` | [add_tsub_add_eq_tsub_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/add-tsub-add-eq-tsub-left--5b4a5b39a0429a6bc4d5076e.md) | 395 | `result-track:5b4a5b39a0429a6bc4d5076ea0e409840b2ac0a29aeed009eb76a37b3d2519f1` |
| 57 | `theorem` | [lt_of_tsub_lt_tsub_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-of-tsub-lt-tsub-right--246069e6782b14e9648aea00.md) | 411 | `result-track:246069e6782b14e9648aea009bc26fea9d62e5e841b4ee0e3f5f4b7ad03ad393` |
| 58 | `theorem` | [lt_tsub_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-tsub-iff-right--a5b77da5a7aa8e7474375ed5.md) | 416 | `result-track:a5b77da5a7aa8e7474375ed5f13c229f31255332802c5832ba26137e5a818fa5` |
| 59 | `theorem` | [lt_tsub_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-tsub-iff-left--76280d50ab0a34b46f90f320.md) | 421 | `result-track:76280d50ab0a34b46f90f32052b116b063894bd6f581b4d7144c526443877c09` |
| 60 | `theorem` | [lt_tsub_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-tsub-comm--f2452925e6252624bbb3d799.md) | 425 | `result-track:f2452925e6252624bbb3d79944b37987768df54faeb1ea640baa843312998aa3` |
| 61 | `theorem` | [lt_of_tsub_lt_tsub_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/lt-of-tsub-lt-tsub-left--f672376810026db8383dca53.md) | 434 | `result-track:f672376810026db8383dca5352eee2d2035427a5a8dac299937ad186bdc9d62e` |
| 62 | `theorem` | [tsub_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant2094d0e52863e635650c6deb22ec9191c023a73651b2c4de150e497868016c5d.lean/declarations/tsub-zero--74d56edc322bdefe23ece82e.md) | 447 | `result-track:74d56edc322bdefe23ece82ebbdcabec2c9f9abef865ee148991f91374b56b47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
