# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Defs.Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aacaf51398dbd77d6d2aa77a6ed2a09b49c44287",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aacaf51398dbd77d6d2aa77a6ed2a09b49c44287`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Perm.Subperm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Quot` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Attr` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Multiset.](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/multiset--cbb3780dc62fe6ffea6adeb3.md) | 66 | `declaration-track:cbb3780dc62fe6ffea6adeb34482d3a729508e54a75f693f7a0aa661ba1a5288` |
| 2 | `def` | [ofList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/oflist--e3f9084b18db7f8500431f34.md) | 73 | `declaration-track:e3f9084b18db7f8500431f34288d5ca7100410ef0f5a7ea6eb7975c8a1b378ef` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/instance--ef2396e55f95975823390a3c.md) | 76 | `declaration-track:ef2396e55f95975823390a3ce1d0e50083e12715a46236626ff6deb1dae9782b` |
| 4 | `theorem` | [quot_mk_to_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/quot-mk-to-coe--45e8455eb4a5929e3afaf4e3.md) | 80 | `result-track:45e8455eb4a5929e3afaf4e3a463a7ee2fd6b2bae79fdbffa11d80e9fae3141f` |
| 5 | `theorem` | [quot_mk_to_coe'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/quot-mk-to-coe--998753c45a4ec7f50572590f.md) | 84 | `result-track:998753c45a4ec7f50572590ff020a3bb24f2090de4ae49df7ff2687fbe387952` |
| 6 | `theorem` | [quot_mk_to_coe''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/quot-mk-to-coe--9ec333be8c5091b31cd25b82.md) | 88 | `result-track:9ec333be8c5091b31cd25b824ffecae09b270820e8bcd4ce0fdbf3ef440c8212` |
| 7 | `theorem` | [lift_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/lift-coe--bccae5b925751496c0d59797.md) | 92 | `result-track:bccae5b925751496c0d597978c2b369e8775b028a2f8f83056818202d22a299c` |
| 8 | `theorem` | [coe_eq_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/coe-eq-coe--a3b271e96fb39195d4998414.md) | 97 | `result-track:a3b271e96fb39195d4998414e2cf637959f70bca9ca93e8654e60f986fc4020b` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/instance--beb6590710fe2b6271ceaeea.md) | 102 | `declaration-track:beb6590710fe2b6271ceaeeacdecfafa8f90e09b48302bdc33d092e835373ec8` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/instance--88738a0cd2732a40647bcd0d.md) | 105 | `declaration-track:88738a0cd2732a40647bcd0d026d197c00b53049c3aec7424bddaeaae8a5e619` |
| 11 | `instance` | [decidableEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/decidableeq--6fce9b7a8a12deaaf57594f6.md) | 108 | `declaration-track:6fce9b7a8a12deaaf57594f6ff55dd755c8af0c1046053c164c901a224bf17d7` |
| 12 | `def` | [Mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/mem--bfc5627f519683585e2fa506.md) | 114 | `declaration-track:bfc5627f519683585e2fa506dc0f1b88efc55c3c29f7e98cc408c4f6d20172ef` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/instance--70a392f658f7260f94a17436.md) | 117 | `declaration-track:70a392f658f7260f94a17436d5c21ddf2f91263bfdb92edb7be7ee34ff55cc31` |
| 14 | `theorem` | [mem_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/mem-coe--fa6048213c3f4bd3eedb2a90.md) | 121 | `result-track:fa6048213c3f4bd3eedb2a9093cbc4b62e4ba3ed22a4aefba10ae19a135d33fe` |
| 15 | `instance` | [decidableMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/decidablemem--45f87ebd889fed63b5220c7e.md) | 124 | `declaration-track:45f87ebd889fed63b5220c7e1abf990d85b79ccb17e9483198cd881e6dde7c5c` |
| 16 | `def` | [Subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/subset--5f22166a333a0ccd592e3234.md) | 139 | `declaration-track:5f22166a333a0ccd592e32343bc01df6be34d0bbe39f87a93280dc7f6eb89b97` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/instance--359028eda8c19df587804f71.md) | 142 | `declaration-track:359028eda8c19df587804f71fa4c08f3852fdcefbcc092213dba15521f5da60c` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/instance--63a2fecfac2a1c80864dcf72.md) | 145 | `declaration-track:63a2fecfac2a1c80864dcf72d5cdd97d3fe4d112676e5251c4e69c257590a41a` |
| 19 | `instance` | [instIsNonstrictStrictOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/instisnonstrictstrictorder--c5ac63bb73d1b951d0bd86f6.md) | 148 | `declaration-track:c5ac63bb73d1b951d0bd86f61be69c5c874d2249118e77bc8050b02e7343b886` |
| 20 | `theorem` | [coe_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/coe-subset--4923b275727e6f94d1dc03a6.md) | 152 | `result-track:4923b275727e6f94d1dc03a6f2e3de31f235311484a6c5884e7364783aee74c3` |
| 21 | `theorem` | [Subset.refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/subset-refl--fd59999b4b931efd0db3db85.md) | 156 | `result-track:fd59999b4b931efd0db3db859110d2443a2a3e4577f5b35725ab1e2c196bd67b` |
| 22 | `theorem` | [Subset.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/subset-trans--25f1e2cef8bcd9a3aeafa455.md) | 158 | `result-track:25f1e2cef8bcd9a3aeafa4556e89d21609473e90ff043399daff114d32e2a915` |
| 23 | `theorem` | [subset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/subset-iff--b84a20b80dd655fa3d1a4453.md) | 160 | `result-track:b84a20b80dd655fa3d1a4453ec51e850c5a4fc67dbf0a957026fcadf654843a7` |
| 24 | `theorem` | [mem_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/mem-of-subset--482af3d4291090f806ad8dfc.md) | 163 | `result-track:482af3d4291090f806ad8dfc1e9282b9dbac5f9d9fe69d05d64c3238899e307c` |
| 25 | `def` | [Le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/le--67a88d413aad40e50f061bb7.md) | 173 | `declaration-track:67a88d413aad40e50f061bb76ed30f8a73a5d9eab6559461f8152ebb1f632d54` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/instance--de0644d634e83e4cafc2267c.md) | 177 | `declaration-track:de0644d634e83e4cafc2267c89ebe624bbcdc925529b812f9dbbaa4fb258365b` |
| 27 | `instance` | [decidableLE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/decidablele--5fc12bfe4d93b27f94dd59e3.md) | 183 | `declaration-track:5fc12bfe4d93b27f94dd59e307e290d66b53b4779fd6c3976d4ca7b7e1313c4c` |
| 28 | `theorem` | [subset_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/subset-of-le--9821f84e86309d25251408cf.md) | 190 | `result-track:9821f84e86309d25251408cf0a048c5dcc894e34dbc1f85a345d042f05bf948d` |
| 29 | `theorem` | [mem_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/mem-of-le--b529e37dbb1b2b12b7054227.md) | 195 | `result-track:b529e37dbb1b2b12b70542274f1e0060b9b11b9499f56f35093bb72aa17fb20d` |
| 30 | `theorem` | [notMem_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/notmem-mono--e9bc34a3d118e0b76dda872e.md) | 198 | `result-track:e9bc34a3d118e0b76dda872e1a630a0dec466d6179368a553e826e45b86635cd` |
| 31 | `theorem` | [coe_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/coe-le--c0fedf54b9d7fc67c1244ab6.md) | 204 | `result-track:c0fedf54b9d7fc67c1244ab6897141c21280c744743978fa4f16360f046a0887` |
| 32 | `theorem` | [leInductionOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/leinductionon--58b07448629f8a03e846e025.md) | 208 | `result-track:58b07448629f8a03e846e025ed9e4da9fa9fb6cff13691317efeb19e98b76a80` |
| 33 | `def` | [card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/card--86340d5f2a4836022503bb89.md) | 219 | `declaration-track:86340d5f2a4836022503bb8911d3bc0714f21bd28d02ed6545f2b921abc0b1b1` |
| 34 | `theorem` | [coe_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/coe-card--c98f7473fc7c2ee1fee124bc.md) | 222 | `result-track:c98f7473fc7c2ee1fee124bc63828bba58c6adb92b73d341916cb6444d524ac2` |
| 35 | `theorem` | [card_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/card-le-card--83c3402c41877d701a447628.md) | 225 | `result-track:83c3402c41877d701a447628d4c9cf7c390f7c2a93adc46543fc8cd38b52c962` |
| 36 | `theorem` | [eq_of_le_of_card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/eq-of-le-of-card-le--b140c7da131e7f3d8d49c905.md) | 228 | `result-track:b140c7da131e7f3d8d49c90525e7aac0221fcf59d4e91834fb97dc7cc557f39b` |
| 37 | `theorem` | [card_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/card-lt-card--9e4b730e97d6e0441777a431.md) | 231 | `result-track:9e4b730e97d6e0441777a4315eb03ec4779cebf89bb02aa8becc9d8a0b3c7269` |
| 38 | `theorem` | [card_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/card-mono--b9c531a163b9c50694cf219d.md) | 235 | `result-track:b9c531a163b9c50694cf219d5e7e157eb12e6ecd8b966dbef7751535d3e363c1` |
| 39 | `lemma` | [card_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/card-strictmono--0bc17bbf1f1c0b63158ce1db.md) | 237 | `result-track:0bc17bbf1f1c0b63158ce1db24df3658ecdaea19e8ac72e9e15e48e475d957a8` |
| 40 | `instance` | [instWellFoundedLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/instwellfoundedlt--e8b0e5228cfbc0c74ed1c47a.md) | 240 | `declaration-track:e8b0e5228cfbc0c74ed1c47a5bb85afdca8da87028450e164fb6294971472185` |
| 41 | `theorem` | [coe_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/coe-reverse--fdaaaf30dafb82cce2d57431.md) | 244 | `result-track:fdaaaf30dafb82cce2d574310f82f809bb93399200fa162b6da340664f2ce22f` |
| 42 | `def` | [pmap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/pmap--9fddc4c9efa869f53810c3da.md) | 251 | `declaration-track:9fddc4c9efa869f53810c3da2ec0b6704bb4e016e69f81faf38887d3a798a5bd` |
| 43 | `theorem` | [coe_pmap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/coe-pmap--42009df25d91c575847edab7.md) | 261 | `result-track:42009df25d91c575847edab7650174f5e461c89beb3a71b292d3a9221816bd2b` |
| 44 | `theorem` | [pmap_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/pmap-congr--b564b5fdf5be2804caf983b6.md) | 265 | `result-track:b564b5fdf5be2804caf983b6566d5f23410f29e6c8c07026f2e8e46c6d106515` |
| 45 | `theorem` | [mem_pmap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/mem-pmap--6b5f9c9913c63ffc041b7039.md) | 270 | `result-track:6b5f9c9913c63ffc041b70395abfe96aef08500250d75c90bd08ebbb1fef618d` |
| 46 | `theorem` | [card_pmap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/card-pmap--c713635c444429f0cc2dd33a.md) | 275 | `result-track:c713635c444429f0cc2dd33afdbb81072dd9c96bc68bd378a6335231fe5425af` |
| 47 | `def` | [attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/attach--f8a1a5e9aefa71ef0c9581f4.md) | 280 | `declaration-track:f8a1a5e9aefa71ef0c9581f480cb0594275e8f8bd6b4099a6cd4199f01b5c08a` |
| 48 | `theorem` | [coe_attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/coe-attach--dc8b43eb11ca8d9bd9e5baf2.md) | 284 | `result-track:dc8b43eb11ca8d9bd9e5baf248e9d7596ba1410ccba31c12c1d17937b24a0b9d` |
| 49 | `theorem` | [mem_attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/mem-attach--ccf6b1996a3328126f8f1218.md) | 288 | `result-track:ccf6b1996a3328126f8f12189bf4035cfa251d9c50f48b789857b3d79d1a1c57` |
| 50 | `theorem` | [card_attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/card-attach--9b91b78e3e03918811bbe834.md) | 292 | `result-track:9b91b78e3e03918811bbe8341db039266b9f557484608382beb77fec42d776ca` |
| 51 | `def` | [decidableForallMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/decidableforallmultiset--3609a2e7ad3160c2e015380c.md) | 301 | `declaration-track:3609a2e7ad3160c2e015380c2601f6924a894d419f7827ac52278668326ed1b8` |
| 52 | `instance` | [decidableDforallMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/decidabledforallmultiset--13334d9d2e9291ce673766e3.md) | 305 | `declaration-track:13334d9d2e9291ce673766e3f72d29f0bd0369d5f133fd69bb19cb63d9b667ed` |
| 53 | `instance` | [decidableEqPiMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/decidableeqpimultiset--4f83e74eb3b3e4e0b726aef1.md) | 312 | `declaration-track:4f83e74eb3b3e4e0b726aef168d570bc5bcadd869188a619ebfb1a2cae721c06` |
| 54 | `def` | [decidableExistsMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/decidableexistsmultiset--4be7a0035fc409893e05d85b.md) | 318 | `declaration-track:4be7a0035fc409893e05d85b44f84669c6aaf6ccb8c2ba2702db8e762172c5dc` |
| 55 | `instance` | [decidableDexistsMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/decidabledexistsmultiset--cdab5ec6a8463156516e774a.md) | 321 | `declaration-track:cdab5ec6a8463156516e774a6e18bbe43512a4af486ad7e04dcc5587c80295e1` |
| 56 | `def` | [Pairwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/pairwise--0611021c76b0b826e266d393.md) | 332 | `declaration-track:0611021c76b0b826e266d3936fe19c22dd65661a64113119822dbca524f5ac23` |
| 57 | `theorem` | [pairwise_coe_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/pairwise-coe-iff--3d18c13b6e162327658313e3.md) | 335 | `result-track:3d18c13b6e162327658313e31976373bea50a90bcc50a0774d2dae525d912b5f` |
| 58 | `theorem` | [pairwise_coe_iff_pairwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/pairwise-coe-iff-pairwise--a22be2bfeac68c5643ebb299.md) | 339 | `result-track:a22be2bfeac68c5643ebb2994dafe347598b4769fe0c77d27939ee4cd6784c29` |
| 59 | `def` | [Nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/nodup--ec1a494ed55826d7edfba914.md) | 347 | `declaration-track:ec1a494ed55826d7edfba9140afca4a9fec9d85cf7ace221837b5a38452d8cbd` |
| 60 | `theorem` | [coe_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/coe-nodup--d6b7c6d837c921f0a6bd3827.md) | 351 | `result-track:d6b7c6d837c921f0a6bd3827918f46df7b6e8d427e013928951f683e7c133c0c` |
| 61 | `theorem` | [Nodup.ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/nodup-ext--ab3ca2f14128260c1ed0adc6.md) | 354 | `result-track:ab3ca2f14128260c1ed0adc696b8ec4dc5d40f1a00cf3fecaddde7e1ff4e0e97` |
| 62 | `theorem` | [le_iff_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/le-iff-subset--be5d3e462e8c054d23953ca3.md) | 357 | `result-track:be5d3e462e8c054d23953ca3fb4e01903ea1a4f2f3d38c51725d09761cbdeb37` |
| 63 | `theorem` | [nodup_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/nodup-of-le--38cc4589f72b710bcca50e57.md) | 360 | `result-track:38cc4589f72b710bcca50e575d51cc3e422a0482217a98f48684d8f71921da9b` |
| 64 | `instance` | [nodupDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/nodupdecidable--2985fe432fc137f270660cc8.md) | 363 | `declaration-track:2985fe432fc137f270660cc817641f88cede083c4c1ed4732c2563bbcb5638fb` |
| 65 | `def` | [sizeOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/sizeof--93cb186f9bbed263215ba50f.md) | 376 | `declaration-track:93cb186f9bbed263215ba50f332374897bd032254fd5a691d04b8d7a2eecc09a` |
| 66 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5c319c3c9f5bf422c3b0a1a93ad5d951c9b5c8afafdcfb100ded04f1778478cb.lean/declarations/instance--2f95ac6b7fd737290590986f.md) | 379 | `declaration-track:2f95ac6b7fd737290590986f1113d4952b96d731cdf94c516d479445d8fd58ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
