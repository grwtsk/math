# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db58c98f647abffcd143f303b611c4980ddbf299",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db58c98f647abffcd143f303b611c4980ddbf299`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Nat.Gcd` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.Int.DivMod` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Rat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/rat--28013a3652094af49724eac2.md) | 16 | `declaration-track:28013a3652094af49724eac29afe07070374d1dec9825ec247ea70052cdb6c79` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--39c044c75009d9d4015be62a.md) | 30 | `declaration-track:39c044c75009d9d4015be62a654857a3e4ff9c415e4468d0641e9fca980bbabe` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--e9848d4305696f374fdcf084.md) | 32 | `declaration-track:e9848d4305696f374fdcf08480323ecc098ab0ae8e80033e7f30c6fb475932de` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--63972a619bfe7bc1c30955ea.md) | 35 | `declaration-track:63972a619bfe7bc1c30955ea2085b53c86a3c8868e48ac0f764c26f963be0d98` |
| 5 | `theorem` | [Rat.den_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/rat-den-pos--7aaa29859d85e6a233afecf3.md) | 38 | `result-track:7aaa29859d85e6a233afecf3d1f9dfbd816fe2e675df5f07c7859c227bc0a3bb` |
| 6 | `def` | [Rat.maybeNormalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/rat-maybenormalize--93e3843341de8b6de79ba450.md) | 47 | `declaration-track:93e3843341de8b6de79ba450eb5c65c36604ddc321af77ad8ab861a76592c488` |
| 7 | `theorem` | [Rat.normalize.den_nz](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/rat-normalize-den-nz--bb19fe6948208da22f5ab646.md) | 55 | `result-track:bb19fe6948208da22f5ab64654bef2064e80845b147d319effc18687a4fd0395` |
| 8 | `theorem` | [Rat.normalize.reduced](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/rat-normalize-reduced--7f2d857fd0fba5d42252a562.md) | 59 | `result-track:7f2d857fd0fba5d42252a562d63cee89498292e13815cc98ea36e42a2dc2564c` |
| 9 | `def` | [Rat.normalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/rat-normalize--d5af1a105e7feaa2bcc3f37a.md) | 72 | `declaration-track:d5af1a105e7feaa2bcc3f37a17bc21764afdce71820233a42fe7589c9aa2d08d` |
| 10 | `def` | [mkRat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/mkrat--a841f1126d9f1bad20b9fe7c.md) | 82 | `declaration-track:a841f1126d9f1bad20b9fe7cf8237bff606887d8ce3e176a4a6653bd6ac9874a` |
| 11 | `def` | [ofInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/ofint--d497cb88f2944e9b6cd19a04.md) | 88 | `declaration-track:d497cb88f2944e9b6cd19a04220eb9f8d5f2304935a26a5d3d1004fa335f4f21` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--df259ae6aef96b37bfaad1d8.md) | 90 | `declaration-track:df259ae6aef96b37bfaad1d86c358e4dd4535fb0ec62545e2294b1c6e54e1069` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--0a96b6771a748e7b3d97debe.md) | 92 | `declaration-track:0a96b6771a748e7b3d97debe4291cfa65403f45d4bfbb268dbe2bb81ab556a5d` |
| 14 | `def` | [isInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/isint--35d4ad7ed685c844159f1f45.md) | 95 | `declaration-track:35d4ad7ed685c844159f1f458669c73974296582475943b6f92fda5d628f1b67` |
| 15 | `def` | [divInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/divint--e4ee716d2d904a41c84a7499.md) | 98 | `declaration-track:e4ee716d2d904a41c84a7499af5237fd8c1e18e23309c418b1b321be9edab1a5` |
| 16 | `def` | [ofScientific](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/ofscientific--586e29efe59f489652c9de7f.md) | 107 | `declaration-track:586e29efe59f489652c9de7ffc78e62da10427b072899a32977257df17fd0615` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--fa5536f8837caa6e7a2f717d.md) | 113 | `declaration-track:fa5536f8837caa6e7a2f717de89d938a84475b7eef03d5c0bfbac5bdc8150451` |
| 18 | `def` | [blt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/blt--5a28bd9dc8249d7f0f12a9da.md) | 116 | `declaration-track:5a28bd9dc8249d7f0f12a9da844dc4bf52a980cdddbf4d6fd13f7f03ef08c1a9` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--3c781cfccfdbda1e98a695e2.md) | 127 | `declaration-track:3c781cfccfdbda1e98a695e27e374e815fa2ccfb156f926286af7bec33904f57` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--965403841a8534a5c02f2693.md) | 129 | `declaration-track:965403841a8534a5c02f269315f0c7b388c031c4ae83e418b56c5afc34f065c6` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--86c0257b806df6ddc660d502.md) | 132 | `declaration-track:86c0257b806df6ddc660d5022209eafdd62e6c9555d1ed1c8f569889d7994234` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--a2698ae6e4be9fbba3def368.md) | 134 | `declaration-track:a2698ae6e4be9fbba3def368943f2c3618f692f09d517ae8b0b4effdab43c7b5` |
| 23 | `def` | [mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/mul--2829f00c01e1642ff6dc0b6c.md) | 139 | `declaration-track:2829f00c01e1642ff6dc0b6c13017641a58624e41503af3077f9cf6c453801a3` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--221c34fdcadc74a23a741a6c.md) | 156 | `declaration-track:221c34fdcadc74a23a741a6c20dd481e8c006d1983fbfd91c4151b9d7572d382` |
| 25 | `def` | [inv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/inv--d4eddf37c19eb1899d74ec64.md) | 162 | `declaration-track:d4eddf37c19eb1899d74ec6438450e4e45d69d5966060ba2ea6d8b9c68172d61` |
| 26 | `def` | [div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/div--c624b58a56c34eb3b45eff8c.md) | 175 | `declaration-track:c624b58a56c34eb3b45eff8cf4bb4f26981360da7389ac54381e87a4f1f695ee` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--e921d9aa6f81847e67674b17.md) | 179 | `declaration-track:e921d9aa6f81847e67674b17a802c3be8c44698545e7eb338b0142981fa99844` |
| 28 | `theorem` | [add.aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/add-aux--afb62110ffdf650567a0955e.md) | 181 | `result-track:afb62110ffdf650567a0955e7529c07c5f46a558066c11449d893e523b0cc2a1` |
| 29 | `def` | [add](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/add--7a25466080655b834e6706c8.md) | 213 | `declaration-track:7a25466080655b834e6706c874b04597afe4924e50170b3951b95d982a10e147` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--38cfceb6018841b77949fc11.md) | 228 | `declaration-track:38cfceb6018841b77949fc117a6e7fc5befcae46db5ab476f58ef5ff65aab427` |
| 31 | `def` | [neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/neg--ea99dce3f4d461009b4ea733.md) | 231 | `declaration-track:ea99dce3f4d461009b4ea733226b82b9625eec38a873d8229fdd492827e2dcf1` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--496bbe4b059e43a043741a74.md) | 234 | `declaration-track:496bbe4b059e43a043741a742552e94f8a87fa16a1f648471bd81f598f92a522` |
| 33 | `theorem` | [sub.aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/sub-aux--67935fca1635df02a3dac79c.md) | 236 | `result-track:67935fca1635df02a3dac79c9da11225b99664140ef9fb4549dd9ede62c6fdca` |
| 34 | `def` | [sub](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/sub--b9a027f1a225333da6991e2b.md) | 247 | `declaration-track:b9a027f1a225333da6991e2bfa6a95174cdbca34d82114d326e7ca9f1fe42bce` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/instance--f0d643c36273b11c90e5ec90.md) | 262 | `declaration-track:f0d643c36273b11c90e5ec90177ffa9b817d7ab6de5e3ec62edbf1c67b047215` |
| 36 | `def` | [floor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/floor--11beda5bba32a2a3eefe95ac.md) | 265 | `declaration-track:11beda5bba32a2a3eefe95acfbdc67bc2757ef49c622c5055f2760dbc29f8686` |
| 37 | `def` | [ceil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant3fad19cf0a7943e58c7e22453abfa2a6af5e6eefd6944dcc0ca4652b0646750b.lean/declarations/ceil--649e2b8ef4ca2ee91e7b4d30.md) | 272 | `declaration-track:649e2b8ef4ca2ee91e7b4d306fb18a56d2177a1a0cb8d2635e0ac0da63472d02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
