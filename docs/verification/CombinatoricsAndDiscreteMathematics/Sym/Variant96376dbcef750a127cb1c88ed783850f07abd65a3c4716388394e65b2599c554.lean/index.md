# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sym.Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebc3314b279237360ab5e7f39e4a29719cc7f888",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebc3314b279237360ab5e7f39e4a29719cc7f888`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Vector` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Sym2` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isDiag_mk'_of_mem_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/isdiag-mk-of-mem-diag--dbd18f9c07231ca7cb17cbc4.md) | 37 | `result-track:dbd18f9c07231ca7cb17cbc4ef048d52264301e0c9afa60ff2c97c4ee5a69eac` |
| 2 | `theorem` | [not_isDiag_mk'_of_mem_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/not-isdiag-mk-of-mem-offdiag--be1d7e7a6953288b0f8e5dce.md) | 41 | `result-track:be1d7e7a6953288b0f8e5dce646738a0345b731df0718d29a9f79c638ca7c684` |
| 3 | `def` | [sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym2--371095464c314c9f5b9cee2e.md) | 51 | `declaration-track:371095464c314c9f5b9cee2e42752968247715560fab689284012ca235e7fd74` |
| 4 | `theorem` | [mem_sym2_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/mem-sym2-iff--6e078905a6af1039eac927cc.md) | 55 | `result-track:6e078905a6af1039eac927cc3eca76bde0222721bf418d85c8ba37ea9bc0c4b5` |
| 5 | `theorem` | [mk'_mem_sym2_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/mk-mem-sym2-iff--fa0c40fc7832fa726ec6659b.md) | 64 | `result-track:fa0c40fc7832fa726ec6659b4fd8d27369a396f67809a78221ea80e77eba4c0a` |
| 6 | `theorem` | [sym2_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym2-empty--29c89918ae45ff46e1e7f988.md) | 68 | `result-track:29c89918ae45ff46e1e7f9887b51873fd3369961cf2fd7b65eafde6efc390a74` |
| 7 | `theorem` | [sym2_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym2-eq-empty--4e0923182733bb208caee559.md) | 72 | `result-track:4e0923182733bb208caee5593aeca2368db3ae75bcf13c0bee2ba37a014e7ef5` |
| 8 | `theorem` | [sym2_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym2-nonempty--d138dd08f8a9196c3d079286.md) | 77 | `result-track:d138dd08f8a9196c3d0792863383559a970d79929824c51a5804eaad03833ee2` |
| 9 | `theorem` | [sym2_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym2-univ--73a2170379134f5456f0ccb0.md) | 88 | `result-track:73a2170379134f5456f0ccb09fa4a21ccba2eac2a9bbc43b91d3f0017cf00c8a` |
| 10 | `theorem` | [sym2_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym2-singleton--8ec7ddd989164ce966e35c9f.md) | 94 | `result-track:8ec7ddd989164ce966e35c9fcb8d3ee9cc77f765b239df77a0b989f691efd3c6` |
| 11 | `theorem` | [diag_mem_sym2_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/diag-mem-sym2-mem-iff--aa093a922977c4983383f3a1.md) | 101 | `result-track:aa093a922977c4983383f3a1f334f6b43b2d7fe420871910e2e6960ebc2012c9` |
| 12 | `theorem` | [diag_mem_sym2_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/diag-mem-sym2-iff--4081ec6ab974e6cfc7eb8e82.md) | 105 | `result-track:4081ec6ab974e6cfc7eb8e826eefd998b1d5a0cee951ed1406ace9e335bc5230` |
| 13 | `theorem` | [sym2_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym2-mono--9612b6da76988082ba160fd7.md) | 109 | `result-track:9612b6da76988082ba160fd743a88eaf37577307662a36212300e8de4b53a2c6` |
| 14 | `theorem` | [image_diag_union_image_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/image-diag-union-image-offdiag--cad2d9ad16c1975cdbb1622b.md) | 113 | `result-track:cad2d9ad16c1975cdbb1622b4a0a499a859eae1e3f4cc5e4be6fdcf6cb28775f` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/instance--85aba6d6062059dd34db982d.md) | 126 | `declaration-track:85aba6d6062059dd34db982ddb346c96eb6ec7ddfa94ca35388dfb7ae671e9df` |
| 16 | `def` | [sym](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym--864bb0c3a35e58af2716a025.md) | 130 | `declaration-track:864bb0c3a35e58af2716a025765e7e2fbdbf202faffc94ce9d9a231ffef3c31e` |
| 17 | `theorem` | [sym_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym-zero--8aadb6ed58de5036f99025d4.md) | 136 | `result-track:8aadb6ed58de5036f99025d4858f15081145b66613a3d6b2f394870e6f421ce7` |
| 18 | `theorem` | [sym_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym-succ--f07451221d154fd72038d2dc.md) | 140 | `result-track:f07451221d154fd72038d2dc51f2fedd4c1469abe1057c52499b560abe00e6c0` |
| 19 | `theorem` | [mem_sym_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/mem-sym-iff--32aaa07e177f5cbfdb62f42a.md) | 144 | `result-track:32aaa07e177f5cbfdb62f42a64b44d91380bab7cbbb68b2dae5045db30635dd4` |
| 20 | `theorem` | [sym_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym-empty--c17010e1bc46cb57b4cc21c6.md) | 164 | `result-track:c17010e1bc46cb57b4cc21c611bdc563e226000853f12e0bd0dce2bfc3be29bb` |
| 21 | `theorem` | [replicate_mem_sym](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/replicate-mem-sym--dbfe50726d74ad7c19ee5967.md) | 167 | `result-track:dbfe50726d74ad7c19ee5967ffa52b4636b883730e78bddca181d5cc93437a2f` |
| 22 | `theorem` | [Nonempty.sym](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/nonempty-sym--c2a0eb5f0fb6e4e5921d622b.md) | 171 | `result-track:c2a0eb5f0fb6e4e5921d622b9dc8dd3f25a3cc44ff656ed73f2035b1234a931a` |
| 23 | `theorem` | [sym_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym-singleton--6e7557148760825c556ff972.md) | 177 | `result-track:6e7557148760825c556ff972072ceaae3470a1cffacc6370199de73054a869b8` |
| 24 | `theorem` | [eq_empty_of_sym_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/eq-empty-of-sym-eq-empty--a2bc426f682e0894cf16622e.md) | 183 | `result-track:a2bc426f682e0894cf16622ef3aa8c8cf9e17010bbfbf360b8700e3258534946` |
| 25 | `theorem` | [sym_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym-eq-empty--5943742e7e48ff472941ae31.md) | 189 | `result-track:5943742e7e48ff472941ae318624d7e23dc014a35983ccbc43ad2d390087693b` |
| 26 | `theorem` | [sym_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym-nonempty--6592233ed65d331e0013e5bd.md) | 198 | `result-track:6592233ed65d331e0013e5bdf491ca39b51d90a042e04168ecca6498812d5e5a` |
| 27 | `theorem` | [sym_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym-univ--764309085d0120f5cdbd83aa.md) | 205 | `result-track:764309085d0120f5cdbd83aa8b985a7b4a399e72409b4e067cf3f61242d1b5f7` |
| 28 | `theorem` | [sym_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym-mono--eebe03f06498a1b9f9d109fd.md) | 210 | `result-track:eebe03f06498a1b9f9d109fd63afa2294223db62cfbb655c0f6a3d4aed516cd2` |
| 29 | `theorem` | [sym_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym-inter--88d1b19a0e02f76ce6d841f6.md) | 215 | `result-track:88d1b19a0e02f76ce6d841f61f86dd1f4017fe8172b4e782b96a7cae7b1b9dff` |
| 30 | `theorem` | [sym_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym-union--226dd0e8b7b7e6eac2116557.md) | 221 | `result-track:226dd0e8b7b7e6eac2116557833f5851266ede674d4039d29c32da78ea392225` |
| 31 | `theorem` | [sym_fill_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym-fill-mem--a51744747fb81ad798ab46e1.md) | 225 | `result-track:a51744747fb81ad798ab46e1f46ab3cd2cc78b76ec6f4a06d4a62b0dafdcbbec` |
| 32 | `theorem` | [sym_filterNe_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/sym-filterne-mem--807c0ce3e9a44ea62ab10a87.md) | 231 | `result-track:807c0ce3e9a44ea62ab10a87cbe35edc6012ecdaa917bafd917a118d0a08b597` |
| 33 | `def` | [symInsertEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant96376dbcef750a127cb1c88ed783850f07abd65a3c4716388394e65b2599c554.lean/declarations/syminsertequiv--703426a3826281cb5a2c628f.md) | 241 | `declaration-track:703426a3826281cb5a2c628fe6a175bd715669e42177d55a23f3fde1165e9c04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
