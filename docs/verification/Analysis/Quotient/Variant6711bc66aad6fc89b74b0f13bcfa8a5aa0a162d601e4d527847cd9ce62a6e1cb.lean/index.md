# Verification target: GRWTSK.Analysis.Quotient.Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "524c4e9c40ee4d9adea543f941a42bbd3e9c5bc7",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/index.md) · [Full source](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `524c4e9c40ee4d9adea543f941a42bbd3e9c5bc7`.

Source path: `GRWTSK/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_aux](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-aux--02709a966d16c298dce933a0.md) | 110 | `result-track:02709a966d16c298dce933a0db68487b03dec89782f1a7610bf506c382fbfd18` |
| 2 | `def` | [groupSeminorm](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/groupseminorm--d82c9fda4d29319a1e58e454.md) | 117 | `declaration-track:d82c9fda4d29319a1e58e454b07f6ede219f755fabde0dbbe9e64e09a81242fa` |
| 3 | `instance` | [instNorm](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/instnorm--22cb1171c01ce6b467c304a8.md) | 137 | `declaration-track:22cb1171c01ce6b467c304a891978a786ac39cd4f6ec7ff43c3a385e7e0b9acb` |
| 4 | `lemma` | [norm_eq_groupSeminorm](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-eq-groupseminorm--2861ad775323726685684799.md) | 140 | `result-track:2861ad775323726685684799d0a89ec023b3c68ac6c3398e738709f50b56f05a` |
| 5 | `lemma` | [norm_eq_infDist](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-eq-infdist--fb14274ecebb9100f8f66b66.md) | 143 | `result-track:fb14274ecebb9100f8f66b6616d82725c758997865fbec2c28db959208ddb889` |
| 6 | `lemma` | [le_norm_iff](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/le-norm-iff--a0c03f1ca507bec105706495.md) | 146 | `result-track:a0c03f1ca507bec1057064959193ddd7f9e669457eaeafb36ac8c1f353092825` |
| 7 | `lemma` | [norm_lt_iff](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-lt-iff--9486fe0d047d83e64809cab8.md) | 150 | `result-track:9486fe0d047d83e64809cab8fa87a598d21cdca8dca053f6191ec79e42ed38b4` |
| 8 | `lemma` | [nhds_one_hasBasis](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/nhds-one-hasbasis--2f9d9766758c1ebd63921fec.md) | 154 | `result-track:2f9d9766758c1ebd63921fec6681272e2786ec937a7a22ea336535b031ecda9a` |
| 9 | `lemma` | [norm_mk](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-mk--feb4d2bfe12145d967e6b334.md) | 167 | `result-track:feb4d2bfe12145d967e6b3342be7debbc5f574c2532d038dc2c8462c9f3ab3b5` |
| 10 | `lemma` | [norm_mk_le_norm](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-mk-le-norm--c015c2b6510f1a6a6efdcfca.md) | 174 | `result-track:c015c2b6510f1a6a6efdcfcad0dfb3b006a97f248193b68ecea28295c02c47c8` |
| 11 | `lemma` | [norm_mk_eq_zero_iff_mem_closure](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-mk-eq-zero-iff-mem-closure--7440c309554ba4cd4530045f.md) | 181 | `result-track:7440c309554ba4cd4530045f6a26dcbe3d7c7492c9685f125ca63136a1c950b8` |
| 12 | `lemma` | [norm_mk_eq_zero](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-mk-eq-zero--805efcfcfa7b4bd387f0c920.md) | 189 | `result-track:805efcfcfa7b4bd387f0c92042d24d85786da2a220ac0239d78f52084838dd58` |
| 13 | `lemma` | [exists_norm_mk_lt](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/exists-norm-mk-lt--b516ac7391ee85930db31af1.md) | 196 | `result-track:b516ac7391ee85930db31af119389aa10352a59109349e54f92a88b2441fc8ce` |
| 14 | `lemma` | [exists_norm_mul_lt](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/exists-norm-mul-lt--c7e0dda7744a1a7767c106d7.md) | 202 | `result-track:c7e0dda7744a1a7767c106d7a6eb01edaf00693a46d866d4d6ad7d820e159a64` |
| 15 | `instance` | [instSeminormedCommGroup](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/instseminormedcommgroup--f070b4f437cce242f61dade9.md) | 210 | `declaration-track:f070b4f437cce242f61dade99f023f0869cab962c9fcd96ef3aafeccba428439` |
| 16 | `instance` | [instNormedCommGroup](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/instnormedcommgroup--1f61c7db5233bc0d16f0f96e.md) | 220 | `declaration-track:1f61c7db5233bc0d16f0f96ece279288efffb755862a72443f6745f94a9bae4a` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/example--1b14cb9ee51830fd086c0cd5.md) | 226 | `declaration-track:1b14cb9ee51830fd086c0cd595e348f4cfdd1c0864adc10d0b6070739112d441` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/example--1aab55744d03822ecf8ca0b1.md) | 230 | `declaration-track:1aab55744d03822ecf8ca0b179c4e4d41e99ff005bb1e433b5507c92389cbe15` |
| 19 | `def` | [normOnQuotient](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/normonquotient--5cdcb671f7142adff60d7ab8.md) | 241 | `declaration-track:5cdcb671f7142adff60d7ab811d9a7d00be4991db37ce7beaa7fe9deb07ea0f4` |
| 20 | `theorem` | [AddSubgroup.quotient_norm_eq](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/addsubgroup-quotient-norm-eq--d5a2fb9ca636f112b6e691c2.md) | 244 | `result-track:d5a2fb9ca636f112b6e691c29c1f096c426bc9e9d3d3177382e44998b4bc8467` |
| 21 | `theorem` | [image_norm_nonempty](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/image-norm-nonempty--94e4286ed242b6853628ec8e.md) | 249 | `result-track:94e4286ed242b6853628ec8eb32469b13af9126efa6981662726dcc48e467286` |
| 22 | `theorem` | [bddBelow_image_norm](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/bddbelow-image-norm--faafaa00bc5aa122a114cc8b.md) | 254 | `result-track:faafaa00bc5aa122a114cc8bd456818a659fe401e59db932d824717cad734e6e` |
| 23 | `theorem` | [isGLB_quotient_norm](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/isglb-quotient-norm--afefa3eb9a3979f8b7eff73b.md) | 258 | `result-track:afefa3eb9a3979f8b7eff73bca8d5a57a3239c1b7e837bd80a84dec78491c148` |
| 24 | `theorem` | [quotient_norm_neg](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/quotient-norm-neg--56aeb04c5bfe033a813dbc5b.md) | 264 | `result-track:56aeb04c5bfe033a813dbc5b5d5536531731527f7f4d65bebb9020e7e0c18e58` |
| 25 | `theorem` | [quotient_norm_sub_rev](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/quotient-norm-sub-rev--a212cdd2f72cc2574d28dac7.md) | 267 | `result-track:a212cdd2f72cc2574d28dac7d7b1ac91becc22073ad91fb31a98d702589cb23c` |
| 26 | `theorem` | [quotient_norm_mk_le](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/quotient-norm-mk-le--c048744acee718082a78934e.md) | 272 | `result-track:c048744acee718082a78934e1dcc10838fd60bd394c994744479311d18f2b884` |
| 27 | `theorem` | [quotient_norm_mk_le'](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/quotient-norm-mk-le--5693bc662bd12020717a5449.md) | 276 | `result-track:5693bc662bd12020717a5449e666e77c89d93a82012706d6de8ce74f81a1f3ed` |
| 28 | `theorem` | [quotient_norm_mk_eq](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/quotient-norm-mk-eq--a0ac13f5eeab7c6c239a524a.md) | 279 | `result-track:a0ac13f5eeab7c6c239a524ae8fee3d0458900387e51e224982460cd737fefef` |
| 29 | `theorem` | [quotient_norm_nonneg](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/quotient-norm-nonneg--cef14587b450c0068bd5afa3.md) | 287 | `result-track:cef14587b450c0068bd5afa38219627e8822a2fa9672a73ad8904f6d6aadd800` |
| 30 | `theorem` | [norm_mk_nonneg](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-mk-nonneg--737c68276df9ac4871375492.md) | 291 | `result-track:737c68276df9ac4871375492aebc185fe89de40de4886e45763e1f16e650d299` |
| 31 | `theorem` | [quotient_norm_eq_zero_iff](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/quotient-norm-eq-zero-iff--a5647804e25538fa03253865.md) | 296 | `result-track:a5647804e25538fa03253865460ece2c459110be0d100018e6305b9a62aead44` |
| 32 | `theorem` | [norm_mk_lt](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-mk-lt--f20d00ac49f146e02151e414.md) | 302 | `result-track:f20d00ac49f146e02151e4143ffaf75770afa389b21f422820e6695c81e48d31` |
| 33 | `theorem` | [norm_mk_lt'](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-mk-lt--c8de8a8445e67dd8e50c3ab0.md) | 307 | `result-track:c8de8a8445e67dd8e50c3ab0750a400e71eec40e3e9297f52c1625dd2aebd7fe` |
| 34 | `theorem` | [quotient_norm_add_le](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/quotient-norm-add-le--6bf597e56798080c884bcf2d.md) | 311 | `result-track:6bf597e56798080c884bcf2d2ded4ef8edcd4e7e7da2616990a286a19a6a73a7` |
| 35 | `theorem` | [norm_mk_zero](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-mk-zero--cea642b7f54d19020fea3d8f.md) | 320 | `result-track:cea642b7f54d19020fea3d8f55f719111620eb5bac9a6adfda98e9b87afabe15` |
| 36 | `theorem` | [norm_mk_eq_zero](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-mk-eq-zero--dbb3bafdacdfa712dc97064f.md) | 325 | `result-track:dbb3bafdacdfa712dc97064ff1598a93ffd59a2a3bf6e03f7caf067b646c2130` |
| 37 | `theorem` | [quotient_nhds_basis](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/quotient-nhds-basis--bfbb53203e35b1b633d9e557.md) | 329 | `result-track:bfbb53203e35b1b633d9e557420cab1ead8375ffad1c133720e149f4d14a8d4f` |
| 38 | `def` | [AddSubgroup.seminormedAddCommGroupQuotient](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/addsubgroup-seminormedaddcommgroupquotient--8b323c5ed72d5ddb8045912a.md) | 336 | `declaration-track:8b323c5ed72d5ddb8045912a4daccae5b62e7eab1908c140d94de79d447e886e` |
| 39 | `instance` | [AddSubgroup.normedAddCommGroupQuotient](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/addsubgroup-normedaddcommgroupquotient--82aa1d65a5667477f90a8b5d.md) | 341 | `declaration-track:82aa1d65a5667477f90a8b5d60a961136c49a246ae6148cc32fb4020a3fdd40e` |
| 40 | `def` | [normedMk](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/normedmk--4ef537bd4771da463746460f.md) | 349 | `declaration-track:4ef537bd4771da463746460f63c5fef39082c1433f7d01cc572376dad3aad20d` |
| 41 | `theorem` | [normedMk.apply](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/normedmk-apply--5856539d79620a286df2bb19.md) | 355 | `result-track:5856539d79620a286df2bb1968b9ef677b6905b41bf071c81641429e000e3eb8` |
| 42 | `theorem` | [surjective_normedMk](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/surjective-normedmk--b03f0c9ce3b7c38630584835.md) | 359 | `result-track:b03f0c9ce3b7c38630584835eec9424a122f39ddc76445bd7adcc8df6f05862a` |
| 43 | `theorem` | [ker_normedMk](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/ker-normedmk--d23f17119aa42efadbd2c4e3.md) | 363 | `result-track:d23f17119aa42efadbd2c4e33128a08305f82b1d996788b5593ec218cecfc114` |
| 44 | `theorem` | [norm_normedMk_le](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-normedmk-le--14a2beeed8c71b152f8b559b.md) | 367 | `result-track:14a2beeed8c71b152f8b559b9a4f6f4b15ce295fff1ad6bd721697682e0f05b3` |
| 45 | `theorem` | [_root_.GRWTSK.Analysis.IsQuotient.Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.QuotientAddGroup.norm_lift_apply_le](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/root-grwtsk-analysis-isquotient-variant1ee0cf24f77d118a344258246e15dc87a--14b1285c09135886adb58d8e.md) | 370 | `result-track:14b1285c09135886adb58d8efe1796a09e7db65e3ffa002229fe880d2595b211` |
| 46 | `theorem` | [norm_normedMk](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-normedmk--f8aed19bb4f74676a9ccde80.md) | 382 | `result-track:f8aed19bb4f74676a9ccde80d136ff8efba5947ff5869a8281c1cb19407f9c84` |
| 47 | `theorem` | [norm_trivial_quotient_mk](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-trivial-quotient-mk--319e9b0097b0cfc9321e748d.md) | 392 | `result-track:319e9b0097b0cfc9321e748dd6723c270607e5c9854ed1fe973f613f6307b401` |
| 48 | `structure` | [IsQuotient](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/isquotient--dd61fb09610e68d18674db8c.md) | 407 | `declaration-track:dd61fb09610e68d18674db8c95dca9ec4a28658ae0309879cb0a1a40be3b3b91` |
| 49 | `def` | [lift](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/lift--7d68936998dfce262bdf8c5e.md) | 413 | `declaration-track:7d68936998dfce262bdf8c5e11795dcb98919b05b188584e7fa7891269950797` |
| 50 | `theorem` | [lift_mk](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/lift-mk--d2b0aaad33bea4f7116dcec2.md) | 418 | `result-track:d2b0aaad33bea4f7116dcec2ccbcbf44becc22a4d5ef1e3424569132e268a059` |
| 51 | `theorem` | [lift_unique](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/lift-unique--8f29a676e85178c52706f01b.md) | 423 | `result-track:8f29a676e85178c52706f01bf0dd03307576c5e370e2837757b7f6bb80e6717e` |
| 52 | `theorem` | [isQuotientQuotient](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/isquotientquotient--8c255f97faa8e1672ea2447b.md) | 433 | `result-track:8c255f97faa8e1672ea2447b78c9d4f0c807fad4f4052678cdef109356753d00` |
| 53 | `theorem` | [IsQuotient.norm_lift](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/isquotient-norm-lift--547fd490187e890a9d83632d.md) | 436 | `result-track:547fd490187e890a9d83632df6203fb8f6bbb02f4a6d61b0d8742c60f39549b8` |
| 54 | `theorem` | [IsQuotient.norm_le](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/isquotient-norm-le--8119fa641b589caed9226dd7.md) | 447 | `result-track:8119fa641b589caed9226dd7e80e77faf97a74620c7a32eb1ec6bcef73a37465` |
| 55 | `theorem` | [norm_lift_le](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/norm-lift-le--0083b4b49dc286215e94f29b.md) | 456 | `result-track:0083b4b49dc286215e94f29b6bbe4d34fd33c3807dbbdc3e17e6055e2a66003f` |
| 56 | `theorem` | [lift_norm_le](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/lift-norm-le--69ee9f2d1a2c2890c0b5f5ab.md) | 462 | `result-track:69ee9f2d1a2c2890c0b5f5ab55c6d7e174969a73f414876f9d5f7c75d7f4d289` |
| 57 | `theorem` | [lift_normNoninc](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/lift-normnoninc--81dcb381f882b0c6dce0be9c.md) | 467 | `result-track:81dcb381f882b0c6dce0be9cc158ee218d4f0f7265b41b55609cbd72de54e38d` |
| 58 | `instance` | [Submodule.Quotient.seminormedAddCommGroup](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/submodule-quotient-seminormedaddcommgroup--be25403b5a6512e576b4a047.md) | 493 | `declaration-track:be25403b5a6512e576b4a047f7ff945d62f3094093cb5a9316ef6c5673323b00` |
| 59 | `instance` | [Submodule.Quotient.normedAddCommGroup](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/submodule-quotient-normedaddcommgroup--287b844b62c5b660e7c4e2c0.md) | 496 | `declaration-track:287b844b62c5b660e7c4e2c099deb3e064d6bd91dd0327d49aec5e66db5c56b5` |
| 60 | `instance` | [Submodule.Quotient.completeSpace](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/submodule-quotient-completespace--13eff899ea941b5809405fda.md) | 500 | `declaration-track:13eff899ea941b5809405fda09bc4e550259f87a0676860d5aba36ee12181e20` |
| 61 | `theorem` | [Submodule.Quotient.norm_mk_lt](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/submodule-quotient-norm-mk-lt--3fd33d39838f337c78d9690c.md) | 505 | `result-track:3fd33d39838f337c78d9690c39c2f3d9d7309048fafab2e231414c16eb714b34` |
| 62 | `theorem` | [Submodule.Quotient.norm_mk_le](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/submodule-quotient-norm-mk-le--232e18bd8cd391dfba83a159.md) | 509 | `result-track:232e18bd8cd391dfba83a1597dbe4a80fe0077017d79f9c4a731a67f82899fd7` |
| 63 | `instance` | [Submodule.Quotient.instIsBoundedSMul](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/submodule-quotient-instisboundedsmul--7e1aed782d40de2590fc8980.md) | 512 | `declaration-track:7e1aed782d40de2590fc8980479ebc1b11c150ea9d37239018353b88dd4c90fa` |
| 64 | `instance` | [Submodule.Quotient.normedSpace](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/submodule-quotient-normedspace--01d3813b268d650eb5c2154b.md) | 529 | `declaration-track:01d3813b268d650eb5c2154b05215d74b2618bfda4d8bcde7194dd95b4c050e3` |
| 65 | `theorem` | [Ideal.Quotient.norm_mk_lt](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/ideal-quotient-norm-mk-lt--aaec68aeae8d0b63a6b6c335.md) | 539 | `result-track:aaec68aeae8d0b63a6b6c335ab34be2c4fa41950d066fdfd9f5e4e8139aa1c79` |
| 66 | `theorem` | [Ideal.Quotient.norm_mk_le](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/ideal-quotient-norm-mk-le--96f1ece8d698e4329f067908.md) | 543 | `result-track:96f1ece8d698e4329f067908fb6b8cba0493808af559fe95625f0327a1fa4b8f` |
| 67 | `instance` | [Ideal.Quotient.semiNormedCommRing](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/ideal-quotient-seminormedcommring--0e6f073c021dab2083a10ea7.md) | 545 | `declaration-track:0e6f073c021dab2083a10ea71b0caaabc172c24ed08f3207c3b6b4910fd70602` |
| 68 | `instance` | [Ideal.Quotient.normedCommRing](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/ideal-quotient-normedcommring--52b6e66519238a9952d00915.md) | 562 | `declaration-track:52b6e66519238a9952d009152e77a0a1257d904a81b68aa20e9d9444a98f40b5` |
| 69 | `instance` | [Ideal.Quotient.normedAlgebra](../../../../mathematics/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/declarations/ideal-quotient-normedalgebra--3ab77343267f367ca683c99f.md) | 567 | `declaration-track:3ab77343267f367ca683c99fb0f76d0f6864890bc87d4cc20ffe90e5ae460e91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
