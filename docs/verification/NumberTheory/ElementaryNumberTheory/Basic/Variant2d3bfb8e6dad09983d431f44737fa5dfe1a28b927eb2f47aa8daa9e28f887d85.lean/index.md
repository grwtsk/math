# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6edd0c993239d644af5e98089d0521c4624e37df",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6edd0c993239d644af5e98089d0521c4624e37df`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gcd_greatest](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/gcd-greatest--668a74d5f974783e9206ce22.md) | 43 | `result-track:668a74d5f974783e9206ce220f69c655843c14019a75dc515dd5a2d55058b75c` |
| 2 | `theorem` | [gcd_right_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/gcd-right-comm--9a0fc29aebd68a553a450969.md) | 47 | `result-track:9a0fc29aebd68a553a450969dbe406b1b512102c104891cfba31edd1742f5db8` |
| 3 | `theorem` | [gcd_gcd_gcd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/gcd-gcd-gcd-right--ad5be71dcaa50aff3b2c2fda.md) | 50 | `result-track:ad5be71dcaa50aff3b2c2fda2e53b667ca7a3876f9a981b8ac7ef50242d10642` |
| 4 | `theorem` | [gcd_gcd_gcd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/gcd-gcd-gcd-left--bac78ddec3fcdac8f15d6438.md) | 53 | `result-track:bac78ddec3fcdac8f15d6438084dafe9e6b8dad09339186a4c32d5eff674c2fa` |
| 5 | `theorem` | [pow_sub_one_mod_pow_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/pow-sub-one-mod-pow-sub-one--e07f4ad6080b7c73150573e7.md) | 59 | `result-track:e07f4ad6080b7c73150573e7e7dc48fa1f653379e4a46d84554d94f95b502666` |
| 6 | `theorem` | [pow_sub_one_gcd_pow_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/pow-sub-one-gcd-pow-sub-one--b4a1122903beb13755deb208.md) | 76 | `result-track:b4a1122903beb13755deb2080c7a5d1e8e9a36dc9e06ea6a99f305e171bb0a6e` |
| 7 | `theorem` | [dvd_lcm_of_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/dvd-lcm-of-dvd-left--bf8dd987187cff33741c4cf6.md) | 85 | `result-track:bf8dd987187cff33741c4cf65cfceca13fb9ed9e5bc881e4c45d1521dcf33d5e` |
| 8 | `theorem` | [dvd_of_lcm_right_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/dvd-of-lcm-right-dvd--2426b36bb54db9ca08d16182.md) | 90 | `result-track:2426b36bb54db9ca08d16182de0d126445ae9705dd3f6d1497f6b48b06ecfdef` |
| 9 | `theorem` | [dvd_lcm_of_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/dvd-lcm-of-dvd-right--0f8bf7c4da6374c692dc97d3.md) | 93 | `result-track:0f8bf7c4da6374c692dc97d3b592a37a49bd0bf5fb67eb4821b0f5e04a20c128` |
| 10 | `theorem` | [dvd_of_lcm_left_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/dvd-of-lcm-left-dvd--ee2381fd604d59779b563247.md) | 98 | `result-track:ee2381fd604d59779b5632477275f2a0dea9825968be6c5bb3e65611fabaeade` |
| 11 | `theorem` | [Coprime.lcm_eq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-lcm-eq-mul--088ee384c479b0a46fea7253.md) | 107 | `result-track:088ee384c479b0a46fea72534b6c687d8b00a3b1519d843a00901a8c0522b09d` |
| 12 | `instance` | [Coprime.stdSymm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-stdsymm--91ac4b4d928e65aac07cdc59.md) | 110 | `declaration-track:91ac4b4d928e65aac07cdc5949c95d165d53017d995254c35d75c8507b09c539` |
| 13 | `theorem` | [Coprime.dvd_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-dvd-mul-right--7e6f00b97abc680cb574a8ff.md) | 115 | `result-track:7e6f00b97abc680cb574a8ffdc2cdee6a8297c3fb6c236663b3289096946d947` |
| 14 | `theorem` | [Coprime.dvd_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-dvd-mul-left--5eaf10a6e7bc1ff9edbe802b.md) | 118 | `result-track:5eaf10a6e7bc1ff9edbe802bb4a559d9c820407d836a3326a31b24dd20c94cda` |
| 15 | `theorem` | [coprime_add_self_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-add-self-right--ff78fbac7d4cc10dda787c1e.md) | 122 | `result-track:ff78fbac7d4cc10dda787c1ec1816539efbefc8eac17a434f62cd46351209e07` |
| 16 | `theorem` | [coprime_self_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-self-add-right--c9042f3d2fb8af143f06d1c0.md) | 126 | `result-track:c9042f3d2fb8af143f06d1c0d584e7b850dfb340382da28106a3fe3020c578a4` |
| 17 | `theorem` | [coprime_add_self_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-add-self-left--2b1bdb1559d46c1def54d838.md) | 130 | `result-track:2b1bdb1559d46c1def54d8387856b547c93f13a9f6af21b2ed89f360b2f76fdb` |
| 18 | `theorem` | [coprime_self_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-self-add-left--359336fbc598318371a0997d.md) | 134 | `result-track:359336fbc598318371a0997d8ccc5859dfc326dd1641b4c2756a6da67b4b3d7f` |
| 19 | `theorem` | [coprime_add_mul_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-add-mul-right-right--93991a52252dce5bec674b17.md) | 138 | `result-track:93991a52252dce5bec674b177258836308eb193bde824ceb89f308c5a391c804` |
| 20 | `theorem` | [coprime_add_mul_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-add-mul-left-right--a8b25397c8ece4303cf0b3f2.md) | 142 | `result-track:a8b25397c8ece4303cf0b3f2ffb6bcf4b93c013b46fe64085ca10863d5ae3a47` |
| 21 | `theorem` | [coprime_mul_right_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-mul-right-add-right--3300b16b3aacdc870ccd905a.md) | 146 | `result-track:3300b16b3aacdc870ccd905ae64d0af4d155f2e9831a88e3598e6726a7cfdda6` |
| 22 | `theorem` | [coprime_mul_left_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-mul-left-add-right--4cbbe35d1899503797d65306.md) | 150 | `result-track:4cbbe35d1899503797d6530684fbc15ea2848a9f35ca20278ac53338762a33da` |
| 23 | `theorem` | [coprime_add_mul_right_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-add-mul-right-left--b53796f637c709320b169a8b.md) | 154 | `result-track:b53796f637c709320b169a8bac37e3629b7c00e462e7596569c7eba003e1493a` |
| 24 | `theorem` | [coprime_add_mul_left_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-add-mul-left-left--566175cb2ae1296796bfd54c.md) | 158 | `result-track:566175cb2ae1296796bfd54c7cfb6463ed6613717c922a2eeae045989cb0c875` |
| 25 | `theorem` | [coprime_mul_right_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-mul-right-add-left--ecfe2042ea25589f64a62119.md) | 162 | `result-track:ecfe2042ea25589f64a621192d33e5f13b626151f0496a64e5c9453b93e7b717` |
| 26 | `theorem` | [coprime_mul_left_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-mul-left-add-left--7dd7a76d67f37655212cb813.md) | 166 | `result-track:7dd7a76d67f37655212cb813409b9e543f4e3c7f1a3bb9132b3dd8ed48e34ec0` |
| 27 | `lemma` | [add_coprime_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/add-coprime-iff-left--ed6d6ee2c2406f2cbf7afdfb.md) | 169 | `result-track:ed6d6ee2c2406f2cbf7afdfbfdfc7abb7c15c90e6ba389694aac018e264dd846` |
| 28 | `lemma` | [add_coprime_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/add-coprime-iff-right--a1265f0f6439c68a23d42566.md) | 172 | `result-track:a1265f0f6439c68a23d42566a19755ca8ba482ff2658be25d6691c7ac522c2bb` |
| 29 | `lemma` | [coprime_add_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-add-iff-left--259d52565e6baaec078231f2.md) | 175 | `result-track:259d52565e6baaec078231f277d6f4bb44b83f42a47a2f1a2e30c6b45861b992` |
| 30 | `lemma` | [coprime_add_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-add-iff-right--508e7b4bc31f54d0d9c544d3.md) | 178 | `result-track:508e7b4bc31f54d0d9c544d391a142efe27bbe06b35ad704832e039664c364d0` |
| 31 | `lemma` | [Coprime.of_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-of-dvd-left--ab3f1817ffe0d985584b00c6.md) | 182 | `result-track:ab3f1817ffe0d985584b00c6897b3fadcb6a29929e834234b2e4252dc8248ea7` |
| 32 | `lemma` | [Coprime.of_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-of-dvd-right--4441d27418e49fc55980fb9c.md) | 185 | `result-track:4441d27418e49fc55980fb9ceee901a205213defcb0b586373d05452ea2a4970` |
| 33 | `lemma` | [Coprime.of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-of-dvd--ebb324f1a9c82bd98c8b760a.md) | 188 | `result-track:ebb324f1a9c82bd98c8b760a2c50d52495dc72105d50a7502660d997b1c2b4a9` |
| 34 | `theorem` | [coprime_sub_self_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-sub-self-left--bfe29fbf03e2878d3dcd30d5.md) | 192 | `result-track:bfe29fbf03e2878d3dcd30d5325958e86418d710629b6409bd850dc2f5af37c2` |
| 35 | `theorem` | [coprime_sub_self_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-sub-self-right--1911d6f2183d1fedda05ae0f.md) | 196 | `result-track:1911d6f2183d1fedda05ae0f46b140443af135e0caf4a593d894dc92fa17e70f` |
| 36 | `theorem` | [coprime_self_sub_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-self-sub-left--9b81f6bd94817f3e324bab23.md) | 200 | `result-track:9b81f6bd94817f3e324bab23b9ef16ca36f03b3dd38af914d33b1072f70ce78b` |
| 37 | `theorem` | [coprime_self_sub_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-self-sub-right--14f8a646442071e28482c969.md) | 204 | `result-track:14f8a646442071e28482c96961b0c2a84b53a6498b22225093cabd4cb9fd2736` |
| 38 | `theorem` | [coprime_pow_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-pow-left-iff--8ad1ca61b6269b11e1c13d87.md) | 208 | `result-track:8ad1ca61b6269b11e1c13d8765f88108fe616be524b9932bea2c8bf790dbae7e` |
| 39 | `theorem` | [coprime_pow_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-pow-right-iff--caac08671b1e444baed3999e.md) | 215 | `result-track:caac08671b1e444baed3999e908382a6c8f1d4bce918fa7dc41cad2befa3c95c` |
| 40 | `theorem` | [not_coprime_zero_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/not-coprime-zero-zero--70ca69e5ae552241bf9f2f30.md) | 219 | `result-track:70ca69e5ae552241bf9f2f30a7da82eba87708593e4f86630a2b5af02185de6f` |
| 41 | `theorem` | [coprime_one_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-one-left-iff--d8f7f534dc5dce394dc08191.md) | 221 | `result-track:d8f7f534dc5dce394dc081912f1a34814cf853f04dd23bcf4432b5a3012fcd2b` |
| 42 | `theorem` | [coprime_one_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-one-right-iff--86c1a32a2d62ad1c6b6ec6b1.md) | 223 | `result-track:86c1a32a2d62ad1c6b6ec6b172cae9fd045b4d3785251abb25824a14b3f63e1d` |
| 43 | `theorem` | [gcd_mul_of_coprime_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/gcd-mul-of-coprime-of-dvd--2bb9384fef242295e50a9246.md) | 225 | `result-track:2bb9384fef242295e50a9246f8707dce04b6c8163c96fae9aa01867c4fe408a0` |
| 44 | `theorem` | [Coprime.eq_of_mul_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-eq-of-mul-eq-zero--374dc36aa3b6e933ceebc9be.md) | 232 | `result-track:374dc36aa3b6e933ceebc9be425579bcee6c845cd67c6d6696d1eab7bee3bb8e` |
| 45 | `theorem` | [coprime_iff_isRelPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-iff-isrelprime--e1a2b307fa87b7b0b8693007.md) | 238 | `result-track:e1a2b307fa87b7b0b8693007dacb8c4fa1ae2eda0d9a23abd62b65e7a8b9bf44` |
| 46 | `theorem` | [eq_one_of_dvd_coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/eq-one-of-dvd-coprimes--0ee8fca6161b708f3183e5ae.md) | 243 | `result-track:0ee8fca6161b708f3183e5aea6af895bc6a56eb2b462831df5629ca54db8b63e` |
| 47 | `theorem` | [Coprime.mul_add_mul_ne_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/coprime-mul-add-mul-ne-mul--bcb99d85d48100d0bf8b1c11.md) | 247 | `result-track:bcb99d85d48100d0bf8b1c11aa997320f096e99dcc5bbaa527410f0f5b4b30ba` |
| 48 | `theorem` | [gcd_mul_gcd_eq_iff_dvd_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/gcd-mul-gcd-eq-iff-dvd-mul-of-coprime--3be92572818a5d59d46a15c3.md) | 264 | `result-track:3be92572818a5d59d46a15c3d236ff5bd243a3242113c987cc4e060bdf42c5aa` |
| 49 | `lemma` | [div_mul_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/div-mul-div--3df5b8d63c45720824cb0a3d.md) | 270 | `result-track:3df5b8d63c45720824cb0a3d8aed2197af00b568e15f805351b9a3fb79ec40a4` |
| 50 | `lemma` | [div_dvd_div_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/div-dvd-div-left--d77f6b49284e076c2c30bd04.md) | 276 | `result-track:d77f6b49284e076c2c30bd04934557f296af9f6fce1c866cf720dbec607758fd` |
| 51 | `lemma` | [div_dvd_div_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/div-dvd-div-iff-left--89e3b7177d55992436fa31ad.md) | 280 | `result-track:89e3b7177d55992436fa31ad48ff10ba116795f257cec20d26dd4320c47ce375` |
| 52 | `lemma` | [div_dvd_div_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/div-dvd-div-iff-right--04d7d0e332c44c0a7981b00b.md) | 285 | `result-track:04d7d0e332c44c0a7981b00b88f6bea40d53cad0cfccf5b1f68664063064c63b` |
| 53 | `lemma` | [div_lcm_eq_div_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2d3bfb8e6dad09983d431f44737fa5dfe1a28b927eb2f47aa8daa9e28f887d85.lean/declarations/div-lcm-eq-div-gcd--459619c8d427b7543cf00782.md) | 290 | `result-track:459619c8d427b7543cf007820f7ed6997a4c9ca3f267c56eaa20ec116e52031c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
