# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sym.Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9b5a72251426fae13376b0009b90a729e3a2611",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9b5a72251426fae13376b0009b90a729e3a2611`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Vector` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sym` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2--394d4c356cf0dd378c32fba7.md) | 44 | `declaration-track:394d4c356cf0dd378c32fba73b4fb3dd5d3a092dc1ff54143e2b0f0faf40c0c1` |
| 2 | `theorem` | [mk_mem_sym2_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/mk-mem-sym2-iff--11e3d26da0e2e63fcdcf177f.md) | 49 | `result-track:11e3d26da0e2e63fcdcf177f149aadabdc39ac3ef641f81507e0293bc4873c12` |
| 3 | `theorem` | [mem_sym2_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/mem-sym2-iff--c8285fe66ab16d2ac48148aa.md) | 53 | `result-track:c8285fe66ab16d2ac48148aa6a514307280d947bcbae2954731c9a1f7195ddef` |
| 4 | `theorem` | [sym2_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2-cons--63dca70f5b5fc528194b9ed6.md) | 57 | `result-track:63dca70f5b5fc528194b9ed69376afd2c93b5faf3c64b4ff26097b8e88288052` |
| 5 | `theorem` | [sym2_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2-insert--22bd146f2dcc22ce019dcbbf.md) | 62 | `result-track:22bd146f2dcc22ce019dcbbfba7250e02459d4139c05b2034ef265037b62ab5e` |
| 6 | `theorem` | [sym2_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2-map--d58f5225bc146ebe9618c446.md) | 69 | `result-track:d58f5225bc146ebe9618c4469b3c3b2c97dd7797edf43d3551bb0ade30b6f08b` |
| 7 | `theorem` | [sym2_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2-image--2863141234a9d0055ff1b7ed.md) | 72 | `result-track:2863141234a9d0055ff1b7ed776ad613c52837ca956da8223c0c834761621c70` |
| 8 | `instance` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sym2.Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.Sym2.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sym2-variant682d704f083d--b18384b884fc61d9dedb6534.md) | 78 | `declaration-track:b18384b884fc61d9dedb6534745741c787e905d7c666566cff9956f56185e11c` |
| 9 | `theorem` | [sym2_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2-univ--74fa9458b72782db6038ced7.md) | 84 | `result-track:74fa9458b72782db6038ced7796dcce2d85c9b2027d3c9b5791ffdb619b168b4` |
| 10 | `theorem` | [sym2_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2-mono--2bd2c92f2861188768fcacaa.md) | 90 | `result-track:2bd2c92f2861188768fcacaaca0eaaae307ee00304181eb82e32cd3193eed358` |
| 11 | `theorem` | [monotone_sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/monotone-sym2--5ae5ab755b5349e9056d3911.md) | 95 | `result-track:5ae5ab755b5349e9056d39112d831509b01c83c97709a2517031b5869e7f8130` |
| 12 | `theorem` | [injective_sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/injective-sym2--cc6d63da00ae0291b4ce61a3.md) | 97 | `result-track:cc6d63da00ae0291b4ce61a35e570e830f5d8924479ff0a1a9c7f50cb845bb09` |
| 13 | `theorem` | [strictMono_sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/strictmono-sym2--7aa605c2a7cd4b9ca84fc807.md) | 102 | `result-track:7aa605c2a7cd4b9ca84fc8075d56b370850d42bc4b2b9be348aed821314a3a4e` |
| 14 | `theorem` | [sym2_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2-tofinset--fd937337e501acc3ee1fcaa8.md) | 105 | `result-track:fd937337e501acc3ee1fcaa8537d19e29fd54c405113c9dd0204eb91e1a45c1b` |
| 15 | `theorem` | [sym2_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2-empty--72af56933a5060516644c458.md) | 112 | `result-track:72af56933a5060516644c458c7e51ff6c8d0bbfbcb244ef999ccb6b80c0a3239` |
| 16 | `theorem` | [sym2_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2-eq-empty--0bc2ab9da9222b042d7fbcfe.md) | 115 | `result-track:0bc2ab9da9222b042d7fbcfe7728ddaa87d7bb4fdc6a268a973eb389f2479390` |
| 17 | `theorem` | [sym2_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2-nonempty--dd4b40161f8eb9ae4fa7012a.md) | 119 | `result-track:dd4b40161f8eb9ae4fa7012ab448dda81d579fe3eb3bde24d6fc267f2c3d8a61` |
| 18 | `theorem` | [sym2_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2-singleton--3b829681ec442e4fbda27c54.md) | 127 | `result-track:3b829681ec442e4fbda27c54b7192d2b30d0b0c84880b6f4b17431730706655e` |
| 19 | `theorem` | [card_sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/card-sym2--d8fca9827b5db9407e1fa7ab.md) | 130 | `result-track:d8fca9827b5db9407e1fa7abc1e205d64b664c670a2ee6a2978cf0e5e0014071` |
| 20 | `theorem` | [sym2_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym2-eq-image--b26ad1f4073257315dab2f41.md) | 140 | `result-track:b26ad1f4073257315dab2f4142491c3d13399ce799466579bafee8c129cfacf4` |
| 21 | `theorem` | [isDiag_mk_of_mem_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/isdiag-mk-of-mem-diag--0df50d9b08d771afd316a867.md) | 153 | `result-track:0df50d9b08d771afd316a8678e9725c80dd8bf59fefae23ac0256de0eab87103` |
| 22 | `theorem` | [not_isDiag_mk_of_mem_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/not-isdiag-mk-of-mem-offdiag--cfe806810e96bbd1c7ab9b1a.md) | 156 | `result-track:cfe806810e96bbd1c7ab9b1a17f403e3bc8b681e036405129a46d7e2b4a2784d` |
| 23 | `theorem` | [diag_mem_sym2_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/diag-mem-sym2-mem-iff--beb49438c413b96c690e2105.md) | 168 | `result-track:beb49438c413b96c690e210590ae6853492fe2a3f6c001e2da00ade61deb95f3` |
| 24 | `theorem` | [diag_mem_sym2_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/diag-mem-sym2-iff--81144c8063620f02a1fcabbd.md) | 172 | `result-track:81144c8063620f02a1fcabbd197decce42e9c0ee8e3e9a4af3204eb70f60f911` |
| 25 | `theorem` | [image_diag_union_image_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/image-diag-union-image-offdiag--5d9ebdad7f8179846ef2f6c6.md) | 174 | `result-track:5d9ebdad7f8179846ef2f6c6c3e07c3ef073df341d1ec2e1d00aa0b3e127cc02` |
| 26 | `def` | [sym](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym--0ba27ae21bad915dd02ee97d.md) | 186 | `declaration-track:0ba27ae21bad915dd02ee97d07848dbf37c2405c447fb6c4668e3d9e793fd863` |
| 27 | `theorem` | [sym_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym-zero--c0033c6c919f8f1b522ea781.md) | 191 | `result-track:c0033c6c919f8f1b522ea7815ac9b4e99f53bfe0f7d4eb6beb41413e60c57086` |
| 28 | `theorem` | [sym_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym-succ--1104bdc5868db167d2d204f8.md) | 194 | `result-track:1104bdc5868db167d2d204f8c1c1d9ec32cbd19826b6b0cd7c594879a534c426` |
| 29 | `theorem` | [mem_sym_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/mem-sym-iff--1ad373e72105eba91915f3e2.md) | 197 | `result-track:1ad373e72105eba91915f3e26e63764e8d198502d19ff89041d17dcdd6bfb8ad` |
| 30 | `theorem` | [sym_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym-empty--bce16fe4444e28d12bf2baef.md) | 216 | `result-track:bce16fe4444e28d12bf2baef757a15f1cd6c19734606257b2083c871b2c2d8fe` |
| 31 | `theorem` | [replicate_mem_sym](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/replicate-mem-sym--407ae1ce1aa6a8b84ccfa6b0.md) | 218 | `result-track:407ae1ce1aa6a8b84ccfa6b03f3c07b5f95c71a8ece0431837def1192ab0a448` |
| 32 | `theorem` | [Nonempty.sym](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/nonempty-sym--d272bc366d33e121bcd33a45.md) | 221 | `result-track:d272bc366d33e121bcd33a45196857dbcbcf2557adba13c2779a2b8554ffd295` |
| 33 | `theorem` | [sym_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym-singleton--239c54ee26bbe87b6dd1f04f.md) | 226 | `result-track:239c54ee26bbe87b6dd1f04f10ae80608bb69ace5c8e7ab184a955bfb9f91827` |
| 34 | `theorem` | [eq_empty_of_sym_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/eq-empty-of-sym-eq-empty--05ec53b9ea4b380da16ba5e5.md) | 231 | `result-track:05ec53b9ea4b380da16ba5e56e5844628eb1a482fb34994177594b7c2c065d08` |
| 35 | `theorem` | [sym_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym-eq-empty--9e79786f86ee242e60f65ba4.md) | 236 | `result-track:9e79786f86ee242e60f65ba4f0c3bf47fb9f4860551fb276c47c83253f7d1c0a` |
| 36 | `theorem` | [sym_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym-nonempty--45996f01c73215a122fa3f0a.md) | 244 | `result-track:45996f01c73215a122fa3f0abd1d465125badc0e669333231b72ee7e69a63654` |
| 37 | `theorem` | [sym_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym-univ--2718a96d9cb818a024d195bc.md) | 248 | `result-track:2718a96d9cb818a024d195bcb48d21c008f7512c514fe270ca35b4399be058bb` |
| 38 | `theorem` | [sym_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym-mono--c023320ebe3ea4912b6c8258.md) | 252 | `result-track:c023320ebe3ea4912b6c82585c6e93b51647ba3faa346c35ed0e025c37af4529` |
| 39 | `theorem` | [sym_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym-inter--669556550bd28b589a2f1d12.md) | 256 | `result-track:669556550bd28b589a2f1d1211a3125c3a7e49977551078f4d7cb7601a059cb6` |
| 40 | `theorem` | [sym_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym-union--4e950daf91ec8322259a8e05.md) | 261 | `result-track:4e950daf91ec8322259a8e057841f48d97c748f7730ba6d76eb1ba1b8c4bf077` |
| 41 | `theorem` | [sym_fill_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym-fill-mem--dfbc9ab5b0a067794513ae0c.md) | 264 | `result-track:dfbc9ab5b0a067794513ae0c5d7dd6273478fb67d0ff81c0ef33cc622a33231b` |
| 42 | `theorem` | [sym_filterNe_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/sym-filterne-mem--505a374ab0615411e3097018.md) | 269 | `result-track:505a374ab0615411e3097018132ded38dfd915c4b38dc0c16f89d5d8bd4f17c5` |
| 43 | `def` | [symInsertEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant0cc1b08d96d804a82fac72271d8e9e234c79eec18db31b7d24fb3b7f66dd46b8.lean/declarations/syminsertequiv--2e524c838d28450fbadfd6b3.md) | 278 | `declaration-track:2e524c838d28450fbadfd6b3e3f8a207db011f8eff8b966c1435164ba6b0bd70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
