# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bitwise.Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63c0421ee7ca8ae5e74706fa00593ae3eb9aabb2",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63c0421ee7ca8ae5e74706fa00593ae3eb9aabb2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Num.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Bool.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/lor--267ae6404e1e0dabe58feaeb.md) | 26 | `declaration-track:267ae6404e1e0dabe58feaebd7058d5a38e8a0a1bb4538562ffaf7213dc1b97a` |
| 2 | `def` | [land](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/land--d37301951d5e26ac4b7fd398.md) | 38 | `declaration-track:d37301951d5e26ac4b7fd398ddb76b1c20b66be37ade59f120e60b08921be01c` |
| 3 | `def` | [ldiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/ldiff--aa1eb97fb47ec71af4a71fb4.md) | 57 | `declaration-track:aa1eb97fb47ec71af4a71fb4ed3af1167132829ea5370dcc65bec3e35b80925b` |
| 4 | `def` | [lxor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/lxor--d08bd5d7eda479e7564eeb3e.md) | 69 | `declaration-track:d08bd5d7eda479e7564eeb3e83a44ef7f786e56a485a5c4d13fbe95811ef96eb` |
| 5 | `def` | [testBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/testbit--adf83d369a5f0a5f8b1e67c5.md) | 83 | `declaration-track:adf83d369a5f0a5f8b1e67c540be709c487c5a3f1947723a9f5b950e9698fa33` |
| 6 | `def` | [oneBits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/onebits--5addf74e40f58c43e3054b32.md) | 93 | `declaration-track:5addf74e40f58c43e3054b32418ff5e0d8358fb1df71925fa319ab3d41582d80` |
| 7 | `def` | [shiftl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/shiftl--4582ece1286810c6fc616458.md) | 100 | `declaration-track:4582ece1286810c6fc616458358f65647117a3538707c2c7d095deea9a2b7c22` |
| 8 | `theorem` | [shiftl_succ_eq_bit0_shiftl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/shiftl-succ-eq-bit0-shiftl--8f0cf388f6169e2ca5e0f283.md) | 107 | `result-track:8f0cf388f6169e2ca5e0f28376aa3ff03bad992d3e5aeadf017ce8efa894a62e` |
| 9 | `def` | [shiftr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/shiftr--59603240cc5e4e9229fe8f02.md) | 112 | `declaration-track:59603240cc5e4e9229fe8f02d1b7f2e1864062e290fc308ff35667c293ba2104` |
| 10 | `def` | [lor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/lor--6f6bd165752cca587018acf1.md) | 124 | `declaration-track:6f6bd165752cca587018acf1f84ede6db54026765af3e883a209c8ee7685296f` |
| 11 | `def` | [land](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/land--ef95776d0c17523f597fa279.md) | 131 | `declaration-track:ef95776d0c17523f597fa279e8688b3ec61d7bb062495287d14f3308bcf8f0e6` |
| 12 | `def` | [ldiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/ldiff--35428bec84c9160b4746accc.md) | 145 | `declaration-track:35428bec84c9160b4746accc894c32fe3058c6868c15d61a86dd8ecacb8b761a` |
| 13 | `def` | [lxor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/lxor--515e23bcf3a01043d685941c.md) | 152 | `declaration-track:515e23bcf3a01043d685941ccc49ad3d021594d7ee26be1df76467a6ee474d50` |
| 14 | `def` | [shiftl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/shiftl--cbcee4560ed6451c7d7c83e4.md) | 159 | `declaration-track:cbcee4560ed6451c7d7c83e43b1454a2fb9465f54db6ee66727da9d714bcc325` |
| 15 | `def` | [shiftr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/shiftr--97d39ba399ab0ab1e198e322.md) | 165 | `declaration-track:97d39ba399ab0ab1e198e32218cc8c445442a1a8be039eab9832e1f31d8c7f02` |
| 16 | `def` | [testBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/testbit--8846747dceb1b2f1d5f97b15.md) | 172 | `declaration-track:8846747dceb1b2f1d5f97b1578f8ea5ec696e9a251ccd54c734d895b72f8c26f` |
| 17 | `def` | [oneBits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/onebits--5ec10199b458701122e6e6d8.md) | 178 | `declaration-track:5ec10199b458701122e6e6d8b718b8ed136331cab64b3f213cab47386dbe6948` |
| 18 | `inductive` | [NzsNum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/nzsnum--bb5d03cca2740d8b79c9c909.md) | 187 | `declaration-track:bb5d03cca2740d8b79c9c909ff30d34852771e44108df8abf655d002e74943dd` |
| 19 | `inductive` | [SNum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/snum--8f97e5f6104d65ef1ad2bf5f.md) | 208 | `declaration-track:8f97e5f6104d65ef1ad2bf5fba720b726a6cae730dbbd61e9f4ac43cce947175` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/instance--8da20a3040e56c44ad42eeb7.md) | 214 | `declaration-track:8da20a3040e56c44ad42eeb7b1280378ff8986cfcf89c747b467afbc669b9111` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/instance--5a84af2d26d35d8d154e5ead.md) | 217 | `declaration-track:5a84af2d26d35d8d154e5eadfc8eef2f38c36ed23d012fb533360c9e5551dc46` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/instance--27be11598fc1ad63b81fc594.md) | 220 | `declaration-track:27be11598fc1ad63b81fc594f2369553887a4ce2c6875038930b73e2431c9a96` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/instance--eff47a2fa8868061b3605da5.md) | 223 | `declaration-track:eff47a2fa8868061b3605da54da77d4fa76a49fef9131049633098bb5010dee1` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/instance--6d0cde07a06d01b04a74977d.md) | 226 | `declaration-track:6d0cde07a06d01b04a74977df2502f97e6ef05e3d997fdfff5e673918678ee40` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/instance--4c976f8c9e77ef2e5bd990ea.md) | 229 | `declaration-track:4c976f8c9e77ef2e5bd990ea4b4eb4b1ce9af64dddad4c690003fe425b5f92a2` |
| 26 | `def` | [sign](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/sign--1aeaecec9c858de320ab0cd6.md) | 245 | `declaration-track:1aeaecec9c858de320ab0cd6d65fb29ebcdbefced2ba9dbfbcb0f72805acbcb6` |
| 27 | `def` | [not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/not--3de2543293b1da7504548500.md) | 252 | `declaration-track:3de2543293b1da75045485006539b3edaac75f423ec172233b6bb703cbeab2c2` |
| 28 | `def` | [bit0](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/bit0--cbd8a3bae5364ec505ddd9a4.md) | 262 | `declaration-track:cbd8a3bae5364ec505ddd9a4a61852aef454d4d92601075857210b94059ec7b3` |
| 29 | `def` | [bit1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/bit1--9e5140b728d7e6c761dfd99c.md) | 267 | `declaration-track:9e5140b728d7e6c761dfd99c513019f7b45dfc92d68c2ba07ccadb0b3c43ece4` |
| 30 | `def` | [head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/head--d352274db9df640f877d73c1.md) | 272 | `declaration-track:d352274db9df640f877d73c1c68448dd2bbb04583a038f883af1960024ca1415` |
| 31 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/tail--4079eebacbeebd83f3c61aa2.md) | 279 | `declaration-track:4079eebacbeebd83f3c61aa2027a4f0d2a0a9de3f300069a204545b91f485a67` |
| 32 | `def` | [sign](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/sign--fbc1d89519d896ade5a5bd3f.md) | 291 | `declaration-track:fbc1d89519d896ade5a5bd3fcf03d4935d56995a2263d023fc6ed0d1e17f3bf9` |
| 33 | `def` | [not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/not--98bebdcf64f3c18ae7d0cfbb.md) | 298 | `declaration-track:98bebdcf64f3c18ae7d0cfbbdbe499cac86f12a15bcfafe97a9e741d07a98c62` |
| 34 | `def` | [bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/bit--cf75a8cd223f438fc573b9a0.md) | 310 | `declaration-track:cf75a8cd223f438fc573b9a08f0831d593715e3e4f23b5c1865074ec488abbd9` |
| 35 | `def` | [bit0](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/bit0--f2129466df3192b47ebf561f.md) | 320 | `declaration-track:f2129466df3192b47ebf561fccab9d92088b90abca91001ee7f601339c390af1` |
| 36 | `def` | [bit1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/bit1--790afa3323d9c5b040f6bb94.md) | 325 | `declaration-track:790afa3323d9c5b040f6bb949446d5fddb9d43f1ce12199c9998d2f85ca8fa60` |
| 37 | `theorem` | [bit_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/bit-zero--73b1b07e40a63c35b9102d65.md) | 329 | `result-track:73b1b07e40a63c35b9102d652537439c33f65d9a2e220732a9b2d7c69a436dba` |
| 38 | `theorem` | [bit_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/bit-one--b6cdc1aa8c0e2673f2559c74.md) | 332 | `result-track:b6cdc1aa8c0e2673f2559c74c233fa99b6583b7158932e97b90ddfd76de14d3a` |
| 39 | `def` | [drec'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/drec--ba01c8a3be6e4eb6a2af53b4.md) | 343 | `declaration-track:ba01c8a3be6e4eb6a2af53b419e915adf771b8ef0317535f4e947c557b5b214e` |
| 40 | `def` | [head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/head--5b2ee5acaf2bee741ccd685f.md) | 356 | `declaration-track:5b2ee5acaf2bee741ccd685f9e899a69e065ca39729bf6b61ae279ddb3b46acc` |
| 41 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/tail--8c94786780e7140816ce5cc0.md) | 363 | `declaration-track:8c94786780e7140816ce5cc08b6dbc8cc7e9dcc3efd394594e6e35f9fa454336` |
| 42 | `def` | [drec'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/drec--c556d21da1fdd6a46c21f272.md) | 369 | `declaration-track:c556d21da1fdd6a46c21f2729759220d9576fa7c2855dd44860cd8b0cd1b635b` |
| 43 | `def` | [rec'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/rec--a7554246bfd83810f2ef418d.md) | 375 | `declaration-track:a7554246bfd83810f2ef418d21b4bb831744133e57c5f4b37bae6c14849668c7` |
| 44 | `def` | [testBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/testbit--40cd22a850e17cf252f1e369.md) | 381 | `declaration-track:40cd22a850e17cf252f1e369babea939ec8bae793c2746443e4517af4fc810f7` |
| 45 | `def` | [succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/succ--c566b40cffbaf26b89dbb6f1.md) | 387 | `declaration-track:c566b40cffbaf26b89dbb6f1b36a89b90d9a4b95433c6ddb6f9bb3b6015076f4` |
| 46 | `def` | [pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/pred--5625bcf625493726f9ac2f90.md) | 392 | `declaration-track:5625bcf625493726f9ac2f90a7d7ba34c3fe9017a343c98da4dc566956fa60c8` |
| 47 | `def` | [neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/neg--46c0e2b84e1a37e316aeaa32.md) | 397 | `declaration-track:46c0e2b84e1a37e316aeaa32fd698b27511412af193013e2e6165b7c6411e95f` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/instance--cd238d935543beda14a463f0.md) | 401 | `declaration-track:cd238d935543beda14a463f0faa56bc198b1056a3a107dbef45a481397cfa7a4` |
| 49 | `def` | [czAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/czadd--1f409f16a8c02e34750f181c.md) | 406 | `declaration-track:1f409f16a8c02e34750f181ce4551a148b088cbe16fc83f96e77112258ae11c1` |
| 50 | `def` | [bits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/bits--fbcb450c5fc22301b7d1b787.md) | 418 | `declaration-track:fbcb450c5fc22301b7d1b787d1f0af5bc7be6064e94fa343288585e88b8f8d48` |
| 51 | `def` | [cAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/cadd--a5b3cd70d4eabbbf2871cf3c.md) | 425 | `declaration-track:a5b3cd70d4eabbbf2871cf3ce53803228feeae89d8733efbf31e78326e0ef080` |
| 52 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/add--ced22d954144908230931040.md) | 431 | `declaration-track:ced22d954144908230931040bd9b56c888aaf3d3d5fd8297f253315bd23c2f83` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/instance--7f22e27bb2d123fc9581c928.md) | 435 | `declaration-track:7f22e27bb2d123fc9581c9285f98c13d1b9a3ab4d9c3636897088fea7511f0ac` |
| 54 | `def` | [sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/sub--2843e33d56cf349d5d2027f2.md) | 439 | `declaration-track:2843e33d56cf349d5d2027f2541a05e16c99b785276522f27e0c0d1b4c309ba6` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/instance--d6369a21e3f06690ffb536d1.md) | 443 | `declaration-track:d6369a21e3f06690ffb536d1b46602d8711b759079fbdbcd3a3f1470b101c2ef` |
| 56 | `def` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/mul--695ffd7afe4038f0e81c5e9c.md) | 447 | `declaration-track:695ffd7afe4038f0e81c5e9cccc4a408fd39c061ec2333ae4636fcb25c99cd3e` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant2ee5d4d276f06e5f077c21c75a2f6c5aa742dc05791cdaff0dd6e197b8fb3427.lean/declarations/instance--b85988cd1c5ee9730f39ebe8.md) | 451 | `declaration-track:b85988cd1c5ee9730f39ebe84ac42a28319eadbf608868638ef1c98aa8adf9e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
