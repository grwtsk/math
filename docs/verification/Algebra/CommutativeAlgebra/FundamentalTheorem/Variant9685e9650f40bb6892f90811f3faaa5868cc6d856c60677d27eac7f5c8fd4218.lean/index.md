# Verification target: GRWTSK.Algebra.CommutativeAlgebra.FundamentalTheorem.Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4736c30e82459d8bb087ca2f4ce876ddb6c1a9",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4736c30e82459d8bb087ca2f4ce876ddb6c1a9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPolynomial.Symmetric.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Tower` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.WellFounded` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [accumulate](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/accumulate--b76dea94d40eb6dd57c2db64.md) | 62 | `declaration-track:b76dea94d40eb6dd57c2db64d7ed60b3a31481fee83eb2efac9286408a4df828` |
| 2 | `def` | [invAccumulate](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/invaccumulate--bc4d0833fb3a4604b4153ea4.md) | 68 | `declaration-track:bc4d0833fb3a4604b4153ea4028fa7323e6519fcb0e12afe8bb99f376cca133b` |
| 3 | `lemma` | [accumulate_rec](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/accumulate-rec--b5ffccf37d6b6da3d743f123.md) | 71 | `result-track:b5ffccf37d6b6da3d743f123d0ef6a671f772aa6f05b2fd53089306832fb0f68` |
| 4 | `lemma` | [accumulate_last](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/accumulate-last--fc36e21809bd6e7fd2893a65.md) | 81 | `result-track:fc36e21809bd6e7fd2893a65183b4d27deb2d9a50c26bcef9bc9154e2c7074f6` |
| 5 | `lemma` | [accumulate_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/accumulate-injective--18d5bccca9162d22db44362c.md) | 91 | `result-track:18d5bccca9162d22db44362c3462f6815f9bc57b2312be9f744eda73b1e3600e` |
| 6 | `lemma` | [accumulate_invAccumulate](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/accumulate-invaccumulate--40ece6466e77ce4afb4f8089.md) | 100 | `result-track:40ece6466e77ce4afb4f808938e5a8fc9e415e35dcf5603e3ddb38c375b8d929` |
| 7 | `def` | [esymmAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalghom--4ec5a91926156e1e3a2384a3.md) | 130 | `declaration-track:4ec5a91926156e1e3a2384a3b67f852060118c99bfe3b5cee50178a8208e78f7` |
| 8 | `lemma` | [esymmAlgHom_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalghom-apply--14add4530e6d3de02d1021e2.md) | 134 | `result-track:14add4530e6d3de02d1021e200c8571cf1902a8d4cface41fa262a902340b962` |
| 9 | `lemma` | [rename_esymmAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/rename-esymmalghom--86a0e98b7cc829206fd124fc.md) | 138 | `result-track:86a0e98b7cc829206fd124fc95c9d8231fbe1ecdc1b6607a12e266d5be17cd15` |
| 10 | `def` | [esymmAlgHomMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalghommonomial--5f19dafbda797a0d0e534437.md) | 146 | `declaration-track:5f19dafbda797a0d0e534437d072ffccf1c03fc263b3c72f584ea95d7b440851` |
| 11 | `lemma` | [isSymmetric_esymmAlgHomMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/issymmetric-esymmalghommonomial--db4537d4a1981420a323103b.md) | 151 | `result-track:db4537d4a1981420a323103b0b7d2218ac559173bff3e4883c7554cc3fb90630` |
| 12 | `lemma` | [esymmAlgHomMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalghommonomial-single--e12197d1298bff7249f894cb.md) | 154 | `result-track:e12197d1298bff7249f894cbf42df5cb253b8ca2a5e103ace842b7e9f2ba12ac` |
| 13 | `lemma` | [esymmAlgHomMonomial_single_one](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalghommonomial-single-one--a54039338790bea6ac8144df.md) | 160 | `result-track:a54039338790bea6ac8144df20dd07ccb14a614f2948a774469adc0d73730378` |
| 14 | `lemma` | [esymmAlgHomMonomial_add](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalghommonomial-add--e69a4b1d92208ec3d35a6d72.md) | 164 | `result-track:e69a4b1d92208ec3d35a6d721932d85c7eabd249cecafd692a6484a19cdb172a` |
| 15 | `lemma` | [esymmAlgHom_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalghom-zero--86f501a0abf9a5537481c868.md) | 168 | `result-track:86f501a0abf9a5537481c868280614a2a770ca87bda639c7e25b88f39861d368` |
| 16 | `lemma` | [supDegree_monic_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/supdegree-monic-esymm--55198117dd168e1e0375bb82.md) | 171 | `result-track:55198117dd168e1e0375bb82b0540abb20c0cbf8605af0bb280c242279e99624` |
| 17 | `lemma` | [supDegree_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/supdegree-esymm--83f317b123036ae10c977a20.md) | 196 | `result-track:83f317b123036ae10c977a20d0f1738df51b9964c55a16e604ba689d4715b2ff` |
| 18 | `lemma` | [monic_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/monic-esymm--b82b8530815f782fbefd466b.md) | 203 | `result-track:b82b8530815f782fbefd466befd114b5c773b0f93f08eee3520b1dcf33ae8150` |
| 19 | `lemma` | [leadingCoeff_esymmAlgHomMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/leadingcoeff-esymmalghommonomial--5bfbe94973004c8b69359676.md) | 212 | `result-track:5bfbe94973004c8b69359676d65cca4ff44ee006c0967cd8186d258c03c4f1b3` |
| 20 | `lemma` | [supDegree_esymmAlgHomMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/supdegree-esymmalghommonomial--2b2e6a959ed0444c448bf549.md) | 222 | `result-track:2b2e6a959ed0444c448bf5495d4f300c13c24ab7bf9ab4f9b71e01ea4726f35a` |
| 21 | `lemma` | [IsSymmetric.antitone_supDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/issymmetric-antitone-supdegree--2251f345f3e4423c9efc61bd.md) | 239 | `result-track:2251f345f3e4423c9efc61bdb9bf15e5cfa7c40c682d97ee2c49767a72c8ff3b` |
| 22 | `lemma` | [esymmAlgHom_fin_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalghom-fin-injective--0b6fdfe60e653666a36b9fb2.md) | 269 | `result-track:0b6fdfe60e653666a36b9fb28f7156c9b61e279a3e814b08a7fd384a564d2574` |
| 23 | `lemma` | [esymmAlgHom_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalghom-injective--f95a6646158512e05dac79a7.md) | 285 | `result-track:f95a6646158512e05dac79a7d911f76a3652699325b5d6b338d5d8f90f4d7e01` |
| 24 | `lemma` | [esymmAlgHom_fin_bijective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalghom-fin-bijective--8c2057462634d00d1bdfa37c.md) | 290 | `result-track:8c2057462634d00d1bdfa37c623147ec3657e76fdba98001998b8721279a327d` |
| 25 | `lemma` | [esymmAlgHom_fin_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalghom-fin-surjective--451ced7398e32a0f81e0dcb5.md) | 313 | `result-track:451ced7398e32a0f81e0dcb56a90ab2b726325055daf60df2e78d6fdfb4d6c8a` |
| 26 | `lemma` | [esymmAlgHom_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalghom-surjective--f3a8283c24583a109fe1ac70.md) | 328 | `result-track:f3a8283c24583a109fe1ac70be7c35ab128b352020221772b3d91234574cc853` |
| 27 | `def` | [esymmAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/declarations/esymmalgequiv--752387a5c461723330045f07.md) | 335 | `declaration-track:752387a5c461723330045f073f6dd83b55b0c441860b3d6dd7f54b77194247a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
