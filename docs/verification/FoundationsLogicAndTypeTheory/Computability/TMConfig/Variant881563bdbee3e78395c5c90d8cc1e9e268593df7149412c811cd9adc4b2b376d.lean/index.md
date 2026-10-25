# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.TMConfig.Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a34e853b8a496717e8e8d6d9d733a758c24f04e",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a34e853b8a496717e8e8d6d9d733a758c24f04e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Halting` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Computability.PostTuringMachine` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Code](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/code--ce51122ae056b49165db2633.md) | 73 | `declaration-track:ce51122ae056b49165db2633751759b25f1354c8d2bbb051f4e49b145cdd3b71` |
| 2 | `def` | [Code.eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/code-eval--8debdfdd05f49b9be23ee713.md) | 109 | `declaration-track:8debdfdd05f49b9be23ee71332f61f5a80840a912d37983aea24a3f5a41889e4` |
| 3 | `theorem` | [zero'_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/zero-eval--4b4adf2199b4792bfaf823e2.md) | 125 | `result-track:4b4adf2199b4792bfaf823e20810be28c43554b7afea7ca358d3921c5ecf38e2` |
| 4 | `theorem` | [succ_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/succ-eval--07f5878d07bdc58c5a567adb.md) | 128 | `result-track:07f5878d07bdc58c5a567adb1e72e856c33d3165bb9ff31c2c7b9edfab94db82` |
| 5 | `theorem` | [tail_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/tail-eval--f8f91e6d1d0c7e3d65179e09.md) | 131 | `result-track:f8f91e6d1d0c7e3d65179e09733ed0730ea75f7bbe3550ac1ffa86020998aa77` |
| 6 | `theorem` | [cons_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/cons-eval--fd82e2e1082f05aec0103f52.md) | 134 | `result-track:fd82e2e1082f05aec0103f5272aaa47f56ba85f57475c552536044b90285955c` |
| 7 | `theorem` | [comp_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/comp-eval--58d6073c793691d3812c9989.md) | 140 | `result-track:58d6073c793691d3812c99899f89d356d80468229161d0838a9fd02f2160a0f9` |
| 8 | `theorem` | [case_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/case-eval--91acc1b44aeac42f13cccc45.md) | 143 | `result-track:91acc1b44aeac42f13cccc4590cbdd946ade5cc004f3deddce5fe6dea25d245b` |
| 9 | `theorem` | [fix_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/fix-eval--437a2d64f5fe8758b7afa206.md) | 148 | `result-track:437a2d64f5fe8758b7afa206c8e0c5545fc5f825cbb31bb723f03c38993c2b2f` |
| 10 | `def` | [nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/nil--ecfc744e18fa6a85bea19d2f.md) | 154 | `declaration-track:ecfc744e18fa6a85bea19d2fc94c0ac04c604dd6210c976d2a2e8a6f1b47dd2d` |
| 11 | `theorem` | [nil_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/nil-eval--7166568e1824ebdb40d4d4fc.md) | 158 | `result-track:7166568e1824ebdb40d4d4fcd15480123ebd316d04821586d62059bb8006a1be` |
| 12 | `def` | [id](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/id--d863ed9be46b7b03c9c48cc4.md) | 161 | `declaration-track:d863ed9be46b7b03c9c48cc47f51f0ed0afb507498d5d015b1f110d8499a87de` |
| 13 | `theorem` | [id_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/id-eval--36dd8d3b44ad32cca7a69833.md) | 165 | `result-track:36dd8d3b44ad32cca7a698339aaa7a7f15de10e06bbeff2a995afa9063262e7c` |
| 14 | `def` | [head](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/head--0b33b56c27ea378fae98a35f.md) | 168 | `declaration-track:0b33b56c27ea378fae98a35f4ff4c076cb02a9b15523b68d176f63b028be256a` |
| 15 | `theorem` | [head_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/head-eval--ca8d08829f8a856687de8bf5.md) | 172 | `result-track:ca8d08829f8a856687de8bf598dece19dd474017caa7d3e283425f04f9731c39` |
| 16 | `def` | [zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/zero--31e0f256c8e7b8483b00135a.md) | 175 | `declaration-track:31e0f256c8e7b8483b00135ae18ebd0eea35e35d512aba6079aed7caf4224c37` |
| 17 | `theorem` | [zero_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/zero-eval--30329c19eb25636de7a7f3fa.md) | 179 | `result-track:30329c19eb25636de7a7f3faf2c0e88c3419b5d80c1bfa7dd2e4664e60df69bf` |
| 18 | `def` | [pred](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/pred--884fdf9bfb01079dc69bcf6b.md) | 183 | `declaration-track:884fdf9bfb01079dc69bcf6b4af97f29704172c9835ed147547fd179daac1b00` |
| 19 | `theorem` | [pred_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/pred-eval--1d3ef016107bb2f4f7309f98.md) | 187 | `result-track:1d3ef016107bb2f4f7309f983c0395d577dbef31b930c82f17c5cd53cda7c2f3` |
| 20 | `def` | [rfind](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/rfind--30b1a641f874ce26618c0561.md) | 201 | `declaration-track:30b1a641f874ce26618c0561b5f2763d1a7056ce5d5d6e891a5e410a978576c9` |
| 21 | `def` | [prec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/prec--68067b132f5b70bedce299b6.md) | 226 | `declaration-track:68067b132f5b70bedce299b67d1ca192035e7a1bb87a4d7f800c879917295f64` |
| 22 | `theorem` | [exists_code.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/exists-code-comp--21eb4138aef153e7053d7420.md) | 237 | `result-track:21eb4138aef153e7053d7420074b425a33bf428806447faa21e335a250528fe5` |
| 23 | `theorem` | [exists_code](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/exists-code--e2a322cabf562816cf862417.md) | 259 | `result-track:e2a322cabf562816cf86241742891030f089eddad851794188d74559d986aff0` |
| 24 | `inductive` | [Cont](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/cont--ed68264b7cd43fb74d554155.md) | 407 | `declaration-track:ed68264b7cd43fb74d554155596d5a69785099e8c4b8a5421852fd217a1a9d2e` |
| 25 | `def` | [Cont.eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/cont-eval--2eeacd4f30976c38667df9cd.md) | 416 | `declaration-track:2eeacd4f30976c38667df9cd7f97b5654be10a36d8e77849d0668972ce1617ef` |
| 26 | `inductive` | [Cfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/cfg--17e9b5c2fc4c32b186ad0765.md) | 432 | `declaration-track:17e9b5c2fc4c32b186ad0765b07b8c7b5d990e044fe76f1e70e1e5e24a041b0c` |
| 27 | `def` | [stepNormal](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/stepnormal--b02504ff7d039d6130cd7238.md) | 454 | `declaration-track:b02504ff7d039d6130cd7238970171f01eb57d606a50bd9e3d948af4c926f426` |
| 28 | `def` | [stepRet](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/stepret--75fc18233035bf80f6faea36.md) | 477 | `declaration-track:75fc18233035bf80f6faea36bdc8aab14d73bc0df36af0538ba6f7a25be56c94` |
| 29 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/step--db15709faa2accca587a5c65.md) | 487 | `declaration-track:db15709faa2accca587a5c65627f7a1e5a2d952f407e2b5ca5e1e2a9dfbf6ea2` |
| 30 | `def` | [Cont.then](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/cont-then--845f13344abc70c53256d106.md) | 503 | `declaration-track:845f13344abc70c53256d106e392e58cd4a7e2db3b373a9039c33a1d0377f3ef` |
| 31 | `theorem` | [Cont.then_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/cont-then-eval--92bbfc1efbdf0697b01b2d7b.md) | 510 | `result-track:92bbfc1efbdf0697b01b2d7b462fb2bd3008d87cd19a3ed29eaef1b7ef3430d0` |
| 32 | `def` | [Cfg.then](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/cfg-then--bc8d85e0e97a311dad94b5a0.md) | 523 | `declaration-track:bc8d85e0e97a311dad94b5a05868a5983ed282b30c0ccfff56f28c0fcefda893` |
| 33 | `theorem` | [stepNormal_then](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/stepnormal-then--df80b6e3590fe99ac274f683.md) | 530 | `result-track:df80b6e3590fe99ac274f68389deb47a0d03a375f073c62f4ef374c7b20f5313` |
| 34 | `theorem` | [stepRet_then](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/stepret-then--3358b5ca5dc059afa6afc869.md) | 542 | `result-track:3358b5ca5dc059afa6afc8697d6e4acd886601c5d1f5699adf1d01cb14282949` |
| 35 | `def` | [Code.Ok](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/code-ok--a77f117c32485adcaf906cf7.md) | 563 | `declaration-track:a77f117c32485adcaf906cf781e7d5cfd53d4707d789fd5450d6a63700ab1faa` |
| 36 | `theorem` | [Code.Ok.zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/code-ok-zero--346b8794c1f4cc04193dffa9.md) | 567 | `result-track:346b8794c1f4cc04193dffa90eeba2406e62f2009c8ceeea21244b46ed90bfa4` |
| 37 | `theorem` | [stepNormal.is_ret](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/stepnormal-is-ret--7f2f92074292d5a0b04bab5b.md) | 572 | `result-track:7f2f92074292d5a0b04bab5b1cb49095469ed69f5a2bda89aee44e9dea20f84a` |
| 38 | `theorem` | [cont_eval_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/cont-eval-fix--0c0ac5611389092ddbc4f180.md) | 583 | `result-track:0c0ac5611389092ddbc4f1808f34ff0d06a6b5285b46c5a8a0053c6255f8cf6f` |
| 39 | `theorem` | [code_is_ok](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/code-is-ok--4c53cf28ada7a14871411479.md) | 655 | `result-track:4c53cf28ada7a148714114797da114cfca9e7ea7aa28022c22673c8894781a6d` |
| 40 | `theorem` | [stepNormal_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/stepnormal-eval--50ebaff0ed961a1f374ff821.md) | 677 | `result-track:50ebaff0ed961a1f374ff821ae4650980e71bf8b16245646cc46e80b1a797bbc` |
| 41 | `theorem` | [stepRet_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/declarations/stepret-eval--aa617a7746489ccafdd05e49.md) | 680 | `result-track:aa617a7746489ccafdd05e496edbdc406c1ccb2619042f76d3bcd2c5be91bd83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
