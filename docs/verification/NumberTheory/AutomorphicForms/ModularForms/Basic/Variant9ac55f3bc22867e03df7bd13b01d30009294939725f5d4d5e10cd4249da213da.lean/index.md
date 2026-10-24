# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.Basic.Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abf70e98aafbf0871a208dbd80e296934efc75a3",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abf70e98aafbf0871a208dbd80e296934efc75a3`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.FunctionsBoundedAtInfty` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Manifold` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.SlashInvariantForms` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModularForm](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/modularform--969a2131aa363bc4be2e5f21.md) | 49 | `declaration-track:969a2131aa363bc4be2e5f2126467c1b1322dc977cd28b1e19603e20ecfea169` |
| 2 | `structure` | [CuspForm](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/cuspform--8437a8ea89d078d9b3410ce7.md) | 58 | `declaration-track:8437a8ea89d078d9b3410ce718070b0534ca122f11b29c5b52002c0d5b2b93fa` |
| 3 | `class` | [ModularFormClass](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/modularformclass--7819b5afe7bd4f8256013d7a.md) | 69 | `declaration-track:7819b5afe7bd4f8256013d7afb2b98c08d9b909092b41f2b00a84f7f9e8eb515` |
| 4 | `class` | [CuspFormClass](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/cuspformclass--ce8a5cc6e8aa3c6e371a227a.md) | 78 | `declaration-track:ce8a5cc6e8aa3c6e371a227a35b38cb2b479901349d422a8492b768294ad7660` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/instance--a73fb305465616738308ff2b.md) | 84 | `declaration-track:a73fb305465616738308ff2ba24e807590b74f2dd1d14086367486e8a6cca0b7` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/instance--054029675cbcf56fc9bceede.md) | 93 | `declaration-track:054029675cbcf56fc9bceede9e30ff06fcea6168afb804db48d1f86845c9adb4` |
| 7 | `theorem` | [ModularForm.toFun_eq_coe](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/modularform-tofun-eq-coe--e1a436b0f2b9cdc12474d45d.md) | 103 | `result-track:e1a436b0f2b9cdc12474d45df1e12a29981229f1ec20599dbba4a1e353430f82` |
| 8 | `theorem` | [ModularForm.toSlashInvariantForm_coe](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/modularform-toslashinvariantform-coe--c1dd5bbfb9d2cd34ce7c6d1e.md) | 108 | `result-track:c1dd5bbfb9d2cd34ce7c6d1efa0f10aaa1d675f5dfa1d578855cd1d0abd345e1` |
| 9 | `theorem` | [CuspForm.toFun_eq_coe](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/cuspform-tofun-eq-coe--754d4ebeeac2e751a285e1dc.md) | 111 | `result-track:754d4ebeeac2e751a285e1dc8f82123a1ecfb1197ffb3999ccd72d95516feef4` |
| 10 | `theorem` | [CuspForm.toSlashInvariantForm_coe](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/cuspform-toslashinvariantform-coe--40d7514424f43aa836eca287.md) | 116 | `result-track:40d7514424f43aa836eca28738ad15cd279c04000223753782ffc701acd5b58c` |
| 11 | `theorem` | [ModularForm.ext](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/modularform-ext--f4c9777565c4458462eeefc5.md) | 119 | `result-track:f4c9777565c4458462eeefc52b9838e8a332ba2df7a44da9e28b7f27a68dc189` |
| 12 | `theorem` | [CuspForm.ext](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/cuspform-ext--c1d65542a5ab69a928319b33.md) | 124 | `result-track:c1d65542a5ab69a928319b33b48f6393a4c9c715052d7b75d3375554bc7e8a95` |
| 13 | `def` | [ModularForm.copy](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/modularform-copy--005fd0b9d0ff85db36836010.md) | 130 | `declaration-track:005fd0b9d0ff85db36836010b6cbdbe8841b86d9b311c2a7057a4067a5272320` |
| 14 | `def` | [CuspForm.copy](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/cuspform-copy--7ed52bca1973db3958495d4a.md) | 139 | `declaration-track:7ed52bca1973db3958495d4ac2e30623a257c85e05b5d3dec8bd680cbb98ed07` |
| 15 | `instance` | [add](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/add--77cb155e25b2e43ec0cc85d6.md) | 153 | `declaration-track:77cb155e25b2e43ec0cc85d6d5eb4db454c99b7755249b01c5cab6bdd028aa15` |
| 16 | `theorem` | [coe_add](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/coe-add--7afcedc14a128f3e7678b896.md) | 161 | `result-track:7afcedc14a128f3e7678b89634e1d4ccebca66dc1070aa8afe788782ec7a60cb` |
| 17 | `theorem` | [add_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/add-apply--8234c69392ec8e19b955c783.md) | 166 | `result-track:8234c69392ec8e19b955c78381831daffa2c25a1ae6dcfef71bbdaaff2ed4535` |
| 18 | `instance` | [hasZero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/haszero--b3e81c3f7eb6772b400a32eb.md) | 170 | `declaration-track:b3e81c3f7eb6772b400a32eb9fd4a997fbef701ef967036ce05752cedbb6d5f9` |
| 19 | `theorem` | [coe_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/coe-zero--58eb8efa8f4029b67accd392.md) | 177 | `result-track:58eb8efa8f4029b67accd39296ee977b7a33d4138c7ff621937202ba2dc21e20` |
| 20 | `theorem` | [zero_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/zero-apply--22c7fa65a464e7a3a00b209f.md) | 182 | `result-track:22c7fa65a464e7a3a00b209fa0626d45ec80b10bf1c7a1de3ae0ba0e7f0d25a8` |
| 21 | `instance` | [hasSmul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/hassmul--bf18ef3324d00a5f8be838ec.md) | 190 | `declaration-track:bf18ef3324d00a5f8be838ecc78d2f4a78efa5e237b67733f46f7d052502005a` |
| 22 | `theorem` | [coe_smul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/coe-smul--3279e89f1d35e92970cb0aff.md) | 198 | `result-track:3279e89f1d35e92970cb0aff0e3c2f022cc97865f48cda76c69bc0a2cc6e9e39` |
| 23 | `theorem` | [smul_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/smul-apply--aeca8a80c6e03fa837c62077.md) | 203 | `result-track:aeca8a80c6e03fa837c62077aa5e375248cb26001fd85eceec49b65c0567e702` |
| 24 | `instance` | [hasNeg](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/hasneg--ef59c37c5415dec13cab82f9.md) | 209 | `declaration-track:ef59c37c5415dec13cab82f9d413fe5a5334a46f577574a766708e410c4cfa01` |
| 25 | `theorem` | [coe_neg](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/coe-neg--857fc5b93752735bfc403109.md) | 217 | `result-track:857fc5b93752735bfc403109b709374255b64081757385135a060da2f7d2a799` |
| 26 | `theorem` | [neg_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/neg-apply--672be30e5a087ba60621812f.md) | 222 | `result-track:672be30e5a087ba60621812f1c0a041f5a3671b599baba989c3ba417f2c76d02` |
| 27 | `instance` | [hasSub](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/hassub--2f4102492df971da0f735b53.md) | 226 | `declaration-track:2f4102492df971da0f735b5326fcbc4c854bb5080587822e6e37022ea43f1afe` |
| 28 | `theorem` | [coe_sub](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/coe-sub--87cdda6c978f6386a3bc6522.md) | 231 | `result-track:87cdda6c978f6386a3bc6522ecef93957bbcfd79a701bb94f2ad50660fb2e1a3` |
| 29 | `theorem` | [sub_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/sub-apply--ecc129f37a82d2a24d462d8c.md) | 236 | `result-track:ecc129f37a82d2a24d462d8c07e82ffecab8ea611431e834cd78d4805515226b` |
| 30 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/instance--017e1916618dd26b01a8c78b.md) | 240 | `declaration-track:017e1916618dd26b01a8c78bcf268196e0f08629bfa8ae46a1d699aaa49f9011` |
| 31 | `def` | [coeHom](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/coehom--08d542dee3cf965543d3172b.md) | 245 | `declaration-track:08d542dee3cf965543d3172bd3be86e5a8b683bff81e3e03c416e1fa80cb9cf5` |
| 32 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/instance--1e6b31f64f5a1e9d7e9bccda.md) | 251 | `declaration-track:1e6b31f64f5a1e9d7e9bccda32372a0760024ea5cb793d90010922b8ea862e03` |
| 33 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/instance--90851af08ded465b920eb201.md) | 254 | `declaration-track:90851af08ded465b920eb201d3e5931368ad94162c704ed97d5d0e4619b9241c` |
| 34 | `def` | [mul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/mul--78831dc35d6ccd6918f503c0.md) | 259 | `declaration-track:78831dc35d6ccd6918f503c09e200415e33b71ce77bc1ff0ac28cea389b480ca` |
| 35 | `theorem` | [mul_coe](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/mul-coe--016dfcb3e5c43a7b35a4a31c.md) | 271 | `result-track:016dfcb3e5c43a7b35a4a31c615e866b0b0c61f63041a8d1413be47e8bec157c` |
| 36 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/instance--e8f463ab9fbc595b061e77ad.md) | 276 | `declaration-track:e8f463ab9fbc595b061e77ad135eb33580c264f6af0c20121d8cd94ca23cd24f` |
| 37 | `theorem` | [one_coe_eq_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/one-coe-eq-one--ce9db7f695043f0163e52f6b.md) | 284 | `result-track:ce9db7f695043f0163e52f6beb9f7badce919ea1b509f8eb7df822f8c055d4d4` |
| 38 | `instance` | [hasAdd](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/hasadd--d3a97d03faa870fc71a9a961.md) | 296 | `declaration-track:d3a97d03faa870fc71a9a961883e00a87e7c1e7608d86f12b8a6ab83d0dec9c7` |
| 39 | `theorem` | [coe_add](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/coe-add--1e9e63e6104dd44f6dcdada3.md) | 304 | `result-track:1e9e63e6104dd44f6dcdada3c5484137e0d6e57b6463c53fffe0b9fa4306dbd8` |
| 40 | `theorem` | [add_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/add-apply--925aa43ab8f5d30c8a75ee20.md) | 309 | `result-track:925aa43ab8f5d30c8a75ee2013205fa17d89bfb115829ee75ca1776370f8eb85` |
| 41 | `instance` | [hasZero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/haszero--577ea720f935d274e67603f9.md) | 313 | `declaration-track:577ea720f935d274e67603f9de2bc812ae76ca3986123899972db3e052ae8a6d` |
| 42 | `theorem` | [coe_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/coe-zero--0dcb8223f745a91761c44f9f.md) | 320 | `result-track:0dcb8223f745a91761c44f9f44e882b4685c6a73bda6273976f15d12436788c5` |
| 43 | `theorem` | [zero_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/zero-apply--634fd0587a41bf59beab017a.md) | 325 | `result-track:634fd0587a41bf59beab017a35b34b18cff0dda4afd54ccee54d5e42bd939a8f` |
| 44 | `instance` | [hasSmul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/hassmul--6a87a5790c649974f2d21d7d.md) | 333 | `declaration-track:6a87a5790c649974f2d21d7d4d1ecbe8b434c197e1bc99a6ee26a8e0e60d4a20` |
| 45 | `theorem` | [coe_smul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/coe-smul--d78cec867b31c8cd19cc38fa.md) | 341 | `result-track:d78cec867b31c8cd19cc38fad03c7df3a953286e24e7f520717b385ebcc6dae4` |
| 46 | `theorem` | [smul_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/smul-apply--738d9a898bf92b210bcd920f.md) | 346 | `result-track:738d9a898bf92b210bcd920f95242cbcf9da994ebd6cbd679d1b6307818eb766` |
| 47 | `instance` | [hasNeg](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/hasneg--6c95286192ffba812565f100.md) | 352 | `declaration-track:6c95286192ffba812565f100746bd89ec4961ec4c35a5a0c4011687a05400136` |
| 48 | `theorem` | [coe_neg](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/coe-neg--6cef12ad895bdd571eaa12b7.md) | 360 | `result-track:6cef12ad895bdd571eaa12b7abd2382ba37d4ac47ce005dc858cf949d78204ab` |
| 49 | `theorem` | [neg_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/neg-apply--30653c75a662f05bd3f19cc1.md) | 365 | `result-track:30653c75a662f05bd3f19cc1e9438aa39b5617b07c249096561b2488d0ed0687` |
| 50 | `instance` | [hasSub](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/hassub--5957e68d7bc830319aca9218.md) | 369 | `declaration-track:5957e68d7bc830319aca9218539efe9f24097fcf9b0d11669315761ac913e7f0` |
| 51 | `theorem` | [coe_sub](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/coe-sub--ce2fd9a0af9ad880486c0a81.md) | 374 | `result-track:ce2fd9a0af9ad880486c0a817024d29596c8322d92661f37bd45a6a5f7f46c48` |
| 52 | `theorem` | [sub_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/sub-apply--473ead0676ac9f03dfde7f7e.md) | 379 | `result-track:473ead0676ac9f03dfde7f7ed379bac9f5a3cdfc0d433b78ee47b59282e0d47b` |
| 53 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/instance--5387e618d36906a8bd76b496.md) | 383 | `declaration-track:5387e618d36906a8bd76b496fb4d15a9d0d373ee0d92614cf2e5f1f1d999ed63` |
| 54 | `def` | [coeHom](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/coehom--5f681951103e0b6619767ca3.md) | 388 | `declaration-track:5f681951103e0b6619767ca3280b0fdfba117d071adc1adc51330b14b8cedf19` |
| 55 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/instance--3e7c96d4e58250981d0a3ff7.md) | 394 | `declaration-track:3e7c96d4e58250981d0a3ff7f30c6b89ea575750e31891f40499d2bb5bb345a8` |
| 56 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/instance--e96fbdcb2407b6627b2cf2dd.md) | 397 | `declaration-track:e96fbdcb2407b6627b2cf2dd5a428cf1538f93db699e40a9b2006c9aa9b3c745` |
| 57 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/declarations/instance--273d223d00292935cef189c6.md) | 400 | `declaration-track:273d223d00292935cef189c6277c52504636cc382e813cf0368f9da1035cc383` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
