# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Empty.Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e43c51f553700326f710056a1518cd147977490b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e43c51f553700326f710056a1518cd147977490b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.ZeroCons` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/nonempty--bee89e65bed24a8ceabcce30.md) | 50 | `declaration-track:bee89e65bed24a8ceabcce30ef19459cf99eb96a9d7e2ef983b5de8f0be78636` |
| 2 | `instance` | [decidableNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/decidablenonempty--8bc81dbd49ef5c253ed4882a.md) | 52 | `declaration-track:8bc81dbd49ef5c253ed4882abc72a2ed8542f83c42b98defe1d9bc113a490ee3` |
| 3 | `theorem` | [coe_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/coe-nonempty--16f3386f28461996637598a9.md) | 56 | `result-track:16f3386f28461996637598a9fca778c4c0777afd64ac225db76306e3f5f3ff00` |
| 4 | `theorem` | [nonempty_coe_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/nonempty-coe-sort--2c68d859cddfc959ccffaf99.md) | 60 | `result-track:2c68d859cddfc959ccffaf99aebab64be819139b5461468d8dd6570313b7959d` |
| 5 | `theorem` | [Nonempty.exists_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/nonempty-exists-mem--c7b31832f696011358161c9e.md) | 67 | `result-track:c7b31832f696011358161c9e1cca2876a42c822ca3eee0507cbca932923f6a3f` |
| 6 | `theorem` | [Nonempty.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/nonempty-mono--b618f146aafc66dfa8ec4295.md) | 70 | `result-track:b618f146aafc66dfa8ec42950403a96058ebde39fde98bf1bf9c8710426efac2` |
| 7 | `theorem` | [Nonempty.forall_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/nonempty-forall-const--880b61d8838cd67235407011.md) | 73 | `result-track:880b61d8838cd6723540701128dff4f9a411cd15e65d0d21089428c9e6d5ffc1` |
| 8 | `theorem` | [Nonempty.to_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/nonempty-to-subtype--70330f47e6eca3bc05d06146.md) | 77 | `result-track:70330f47e6eca3bc05d06146480f2d607aa2d9c13fe32efc718cd0c919639ee3` |
| 9 | `theorem` | [Nonempty.to_type](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/nonempty-to-type--634ff5bb2f7985dbe919ed2c.md) | 80 | `result-track:634ff5bb2f7985dbe919ed2c6294adf968678ca6098be78b6255f80ee127e8c9` |
| 10 | `def` | [empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/empty--bde4b02f5b278cd8e7334e2f.md) | 90 | `declaration-track:bde4b02f5b278cd8e7334e2ff3abce3af0d907659396a1891b542486c8b1f456` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/instance--e285fec9cd7bb5ab4ee97b3b.md) | 93 | `declaration-track:e285fec9cd7bb5ab4ee97b3b8be5d7e37b802b129aedf0d523b9bd36c52325eb` |
| 12 | `instance` | [inhabitedFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/inhabitedfinset--949807248022ac0a56cd04bf.md) | 96 | `declaration-track:949807248022ac0a56cd04bf4bb5a14e04d3b38413ee8fb40b251bc30838e0cc` |
| 13 | `theorem` | [empty_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/empty-val--b1cf3705c25e18af77c9e92c.md) | 100 | `result-track:b1cf3705c25e18af77c9e92c7ec71ceffa7950198a84f386c17b92efc5bbf5fd` |
| 14 | `theorem` | [notMem_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/notmem-empty--c3f56b1571edf64ef9fa80a9.md) | 104 | `result-track:c3f56b1571edf64ef9fa80a9345f568e2d38e3fff2d09fd10e2cf8f9db6bcc19` |
| 15 | `theorem` | [not_nonempty_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/not-nonempty-empty--1f408813ca88c1b6aa073b31.md) | 110 | `result-track:1f408813ca88c1b6aa073b31904b9ee161ef5e40f254d662ac0683038ce2d2a6` |
| 16 | `theorem` | [mk_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/mk-zero--e122ca0bb5fdc4b7e5cc2725.md) | 113 | `result-track:e122ca0bb5fdc4b7e5cc27250561e62f4ec4d9a6211af888dfa356766e8a5796` |
| 17 | `theorem` | [ne_empty_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/ne-empty-of-mem--d5510d307c9ae984f71b4dfc.md) | 116 | `result-track:d5510d307c9ae984f71b4dfc563f26c99cb346cdaad4e90ba88aa18c2df6abc4` |
| 18 | `theorem` | [Nonempty.ne_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/nonempty-ne-empty--fc4d2ef8713986c78f1c3d6f.md) | 119 | `result-track:fc4d2ef8713986c78f1c3d6fbcdb314eb5fe39d8e8b77b47668d3210def200a0` |
| 19 | `theorem` | [empty_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/empty-subset--e2e325c89635150619d5af8c.md) | 123 | `result-track:e2e325c89635150619d5af8ca87969c272ff133a8d7fde0a7060be46ed02d12c` |
| 20 | `theorem` | [eq_empty_of_forall_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/eq-empty-of-forall-notmem--82359d69bf9e39755748c487.md) | 126 | `result-track:82359d69bf9e39755748c487cabccea115b756375f1d0624851302d72e181a6b` |
| 21 | `theorem` | [eq_empty_iff_forall_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/eq-empty-iff-forall-notmem--c7fb7a6cda0d8b0caef5b984.md) | 131 | `result-track:c7fb7a6cda0d8b0caef5b984331bbeea20037353acdaa429823dcbacb6072f97` |
| 22 | `theorem` | [val_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/val-eq-zero--29d0961ebb6dd4b81f7be767.md) | 138 | `result-track:29d0961ebb6dd4b81f7be76708a1050b57aa2ae734bee051ebef4790f5c02738` |
| 23 | `lemma` | [subset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/subset-empty--8f0acadf806aa4d8123a39cc.md) | 141 | `result-track:8f0acadf806aa4d8123a39cc5fb2bca0df4e34948ed1db9e494167e422105d67` |
| 24 | `theorem` | [not_ssubset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/not-ssubset-empty--6c222fce8fc7aeb1fffa872c.md) | 144 | `result-track:6c222fce8fc7aeb1fffa872c7f09fab534d64dc91927f236125f757c811e6b82` |
| 25 | `theorem` | [nonempty_of_ne_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/nonempty-of-ne-empty--629834adfa3afa332477e5f7.md) | 148 | `result-track:629834adfa3afa332477e5f7d0fcf8d995adb6c9c5cc81ad9345945a7682849e` |
| 26 | `theorem` | [nonempty_iff_ne_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/nonempty-iff-ne-empty--5fd01e9617e57c8812ea0805.md) | 151 | `result-track:5fd01e9617e57c8812ea08055d0040f044fcaeaebf17a695d4bfc850c0cdf580` |
| 27 | `theorem` | [not_nonempty_iff_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/not-nonempty-iff-eq-empty--67b1a08c8f90f675b9d5b8b0.md) | 155 | `result-track:67b1a08c8f90f675b9d5b8b0b69b45aef4cfc524eb9fede3487e6b6064e41139` |
| 28 | `theorem` | [eq_empty_or_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/eq-empty-or-nonempty--d82a0d472fb514e2dbbe6867.md) | 158 | `result-track:d82a0d472fb514e2dbbe6867317362957e61393310ae37be844924c942226f48` |
| 29 | `theorem` | [coe_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/coe-empty--7e32925de5ce48571dd9756b.md) | 162 | `result-track:7e32925de5ce48571dd9756b07d032a7d11abbcc794a3f86bc1c96a006daa113` |
| 30 | `theorem` | [coe_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/coe-eq-empty--6d3fc46294840b7afb9ddad6.md) | 166 | `result-track:6d3fc46294840b7afb9ddad608043af3ed00a248104113b473b9cbcd67a898da` |
| 31 | `theorem` | [isEmpty_coe_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/isempty-coe-sort--4ce9e312d3a19151c8f1b6c4.md) | 169 | `result-track:4ce9e312d3a19151c8f1b6c4869d841aac81d294133a905f9a706f967d8a92bb` |
| 32 | `instance` | [instIsEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/instisempty--e44eda8c5fecd5e50d0ee238.md) | 172 | `declaration-track:e44eda8c5fecd5e50d0ee238bf613178ca04d0ed8ba7356eaeef0318e65eb9c6` |
| 33 | `theorem` | [eq_empty_of_isEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/eq-empty-of-isempty--44927444974f3553b4dd7b1f.md) | 176 | `result-track:44927444974f3553b4dd7b1fa95e06c867dfe8d2be69eef00c40dd738e7f51b9` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/instance--d778d2ef835f40dba2769944.md) | 179 | `declaration-track:d778d2ef835f40dba276994448cd6df73a62c7f879e70b654b0145e56853f2e3` |
| 35 | `theorem` | [bot_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/bot-eq-empty--213f08220937aa01270f187a.md) | 184 | `result-track:213f08220937aa01270f187a13372ede3b496f5c1d772c3dd6d56e66890f735d` |
| 36 | `theorem` | [empty_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/empty-ssubset--be2f5fc12596c01dc4426534.md) | 188 | `result-track:be2f5fc12596c01dc4426534953e8d4e97a20a21c315581a3b6f40cba11ff763` |
| 37 | `theorem` | [exists_mem_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/exists-mem-empty-iff--a7db9dadaa1b77d2d8573289.md) | 194 | `result-track:a7db9dadaa1b77d2d8573289945615c6b3ccdc9900fccf27abf94ed3a57c9e51` |
| 38 | `theorem` | [forall_mem_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/forall-mem-empty-iff--c18e0bc3c71cec8b7959ad50.md) | 197 | `result-track:c18e0bc3c71cec8b7959ad50f4c093cb41815513e5a8a07f3eafbe16c1f5d549` |
| 39 | `def` | [proveFinsetNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantcfb21e2bbc8e6ac0d4664aaf9aa2955027abb48ecf95c955d06767c24681c99e.lean/declarations/provefinsetnonempty--e11f43f45850a2a33c89f23e.md) | 215 | `declaration-track:e11f43f45850a2a33c89f23e6c4d5beba23a731c0d5c87f9892b2c568155f737` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
