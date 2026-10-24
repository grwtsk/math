# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e7da02c1f206dd8c9490b6aa470fb98e013c31d",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e7da02c1f206dd8c9490b6aa470fb98e013c31d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_mul_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-mul-iff--8eaf0a9bdcce770471ea4ab4.md) | 25 | `result-track:8eaf0a9bdcce770471ea4ab4acbce7ed1493ba2aa41b9ff95731bda31bbf798d` |
| 2 | `theorem` | [not_prime_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/not-prime-mul--ee37cc75282e06f4b8123b86.md) | 28 | `result-track:ee37cc75282e06f4b8123b86bb6c157e74b1f29e84e5b53e96e41798c0449e13` |
| 3 | `theorem` | [not_prime_mul'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/not-prime-mul--9afe4aca5e30c6ae789ce555.md) | 31 | `result-track:9afe4aca5e30c6ae789ce5550bc42988ec0b99c2ef5c3304ff48d0c770e904e4` |
| 4 | `theorem` | [Prime.dvd_iff_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-dvd-iff-eq--b55877e078a9628a2d4e2a2e.md) | 34 | `result-track:b55877e078a9628a2d4e2a2e04c5e9029ac7cf4bbc1c8004c0a6e08cb35ff3bc` |
| 5 | `theorem` | [Prime.eq_two_or_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-eq-two-or-odd--12d27b8b7f39162c981c3e75.md) | 41 | `result-track:12d27b8b7f39162c981c3e75f91573f34daba6d01ac311a59b575e62d29ef597` |
| 6 | `theorem` | [Prime.eq_two_or_odd'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-eq-two-or-odd--2c9c208273f3ffba1f96a5ce.md) | 45 | `result-track:2c9c208273f3ffba1f96a5ce5f2607bbe8056493080f80bec88e8ad57944e79a` |
| 7 | `theorem` | [Prime.five_le_of_ne_two_of_ne_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-five-le-of-ne-two-of-ne-three--21e6ef19a2e88e1534540159.md) | 50 | `result-track:21e6ef19a2e88e1534540159295346d540d2d2f758df447d5139463360612247` |
| 8 | `theorem` | [Prime.pred_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-pred-pos--15fc508420da7fea59afa030.md) | 58 | `result-track:15fc508420da7fea59afa030d0d2a85290cea61d1187b669322ae78fa50bc614` |
| 9 | `theorem` | [succ_pred_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/succ-pred-prime--3f802e7bb5539ddf8af9488c.md) | 61 | `result-track:3f802e7bb5539ddf8af9488c15ef1c5b315c02965ef7be280ddc6db3dfd1be9b` |
| 10 | `theorem` | [exists_dvd_of_not_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/exists-dvd-of-not-prime--b5b0dd88c6fc27a659e01c56.md) | 64 | `result-track:b5b0dd88c6fc27a659e01c561091b601df1053f01841e2c00e3dcac90ef37672` |
| 11 | `theorem` | [exists_dvd_of_not_prime2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/exists-dvd-of-not-prime2--a0c62f6733b6803251777876.md) | 68 | `result-track:a0c62f6733b6803251777876c9299e31aec3765849616b29dc8855fc3437f927` |
| 12 | `theorem` | [not_prime_of_dvd_of_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/not-prime-of-dvd-of-ne--fc5b56f4b05438339aedfb69.md) | 73 | `result-track:fc5b56f4b05438339aedfb69635e23716f0d982dc66ced2c51af99de26bc4aa2` |
| 13 | `theorem` | [not_prime_of_dvd_of_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/not-prime-of-dvd-of-lt--81de8cc19fd0e42f9a0565b5.md) | 76 | `result-track:81de8cc19fd0e42f9a0565b5b2bdd6564f0d07a95bffc13aa7fdc62bd6630291` |
| 14 | `theorem` | [not_prime_iff_exists_dvd_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/not-prime-iff-exists-dvd-ne--f545ef41ae7600543e878d7e.md) | 79 | `result-track:f545ef41ae7600543e878d7eb9072549dfd5025c10222a50ace709b708607c25` |
| 15 | `theorem` | [not_prime_iff_exists_dvd_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/not-prime-iff-exists-dvd-lt--4276e6bd4f7e777362466cb7.md) | 82 | `result-track:4276e6bd4f7e777362466cb7e7d99551b10d171eb2b2706d5082464adf8a09f0` |
| 16 | `theorem` | [dvd_of_forall_prime_mul_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/dvd-of-forall-prime-mul-dvd--0006d168059f117796c64a9b.md) | 85 | `result-track:0006d168059f117796c64a9b07cd99441ae0e7f0e7b539bf6ed0eae93c2e1895` |
| 17 | `theorem` | [Prime.even_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-even-iff--65435a3f01106ece7acf97f5.md) | 92 | `result-track:65435a3f01106ece7acf97f5b6dbc2335e4436e1522ae0419e225de0e659935c` |
| 18 | `theorem` | [Prime.odd_of_ne_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-odd-of-ne-two--859e5d3b57b5a9b74054fe62.md) | 95 | `result-track:859e5d3b57b5a9b74054fe62966cc74d5900ae5bc2450a555b6e1597860c7fdd` |
| 19 | `theorem` | [Prime.even_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-even-sub-one--a30161e86789b67ea0cb2962.md) | 98 | `result-track:a30161e86789b67ea0cb2962614b39539dff5dc7fee350ce92524b7dd0704313` |
| 20 | `theorem` | [Prime.mod_two_eq_one_iff_ne_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-mod-two-eq-one-iff-ne-two--5fd632a5911fd9ac09836c5a.md) | 102 | `result-track:5fd632a5911fd9ac09836c5ad4667f9ef20981ec3e3322078f26310f2c50eeea` |
| 21 | `theorem` | [coprime_of_dvd'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/coprime-of-dvd--e028372fcd2e03b2ecb16842.md) | 107 | `result-track:e028372fcd2e03b2ecb1684208ed15d41e992bb822bca083b2409b497a511dc3` |
| 22 | `theorem` | [Prime.dvd_iff_not_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-dvd-iff-not-coprime--d7144bc389da1d52428c1338.md) | 110 | `result-track:d7144bc389da1d52428c1338bda128427c8e2b59f61019058755d1f896c81aa2` |
| 23 | `theorem` | [Prime.not_coprime_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-not-coprime-iff-dvd--fca7295994463d8c02881ae9.md) | 113 | `result-track:fca7295994463d8c02881ae98730c5101249f281e6123bf0a8a3f22bb96cd73c` |
| 24 | `lemma` | [coprime_of_lt_minFac](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/coprime-of-lt-minfac--13fb0bd9f281dc5e1321884c.md) | 124 | `result-track:13fb0bd9f281dc5e1321884c409bd369fd2fabe74446be88e20b7512d7455559` |
| 25 | `lemma` | [gcd_eq_one_of_lt_minFac](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/gcd-eq-one-of-lt-minfac--188921c248a8410dd385f96f.md) | 131 | `result-track:188921c248a8410dd385f96f9ef55fc23d4ef0beb89118a749539458a6c4da4c` |
| 26 | `theorem` | [Prime.not_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-not-dvd-mul--a98ed5333320a97a67b83bb1.md) | 134 | `result-track:a98ed5333320a97a67b83bb1fd03b20506728cbeba2d704ccb11578fcd9e85c8` |
| 27 | `lemma` | [coprime_two_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/coprime-two-left--2dcc363f7bdae0a10bd74318.md) | 137 | `result-track:2dcc363f7bdae0a10bd74318aad7e9d1d5d816cd0b5f5cd0b8ce6235a9eb664a` |
| 28 | `lemma` | [coprime_two_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/coprime-two-right--14b5d83dcaaaa60806510d45.md) | 140 | `result-track:14b5d83dcaaaa60806510d45dff87147f8bb4c860979434c5a1becc73509f5ea` |
| 29 | `theorem` | [Prime.dvd_of_dvd_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-dvd-of-dvd-pow--90795be4a0e84ae44594c0c0.md) | 145 | `result-track:90795be4a0e84ae44594c0c08dc5b6d7fec5386422dfd62ec068bb441c536442` |
| 30 | `theorem` | [Prime.not_prime_pow'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-not-prime-pow--1a2bc0aa0f225ed48a7dcff0.md) | 148 | `result-track:1a2bc0aa0f225ed48a7dcff0c3cc9b1cf322420bf42b2219ed1bac0ff214fdc0` |
| 31 | `theorem` | [Prime.not_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-not-prime-pow--a9842d4933674afcd5f1e577.md) | 151 | `result-track:a9842d4933674afcd5f1e577c105a9b58a3e3c4cd1c6967f354675404ba94b2f` |
| 32 | `theorem` | [Prime.eq_one_of_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-eq-one-of-pow--22479394b485b35963d556e6.md) | 154 | `result-track:22479394b485b35963d556e6f7755b19a66a1519fdc27e26c8dcea2c332ec099` |
| 33 | `theorem` | [Prime.pow_eq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-pow-eq-iff--ca4251ad9b3cf2ba468ae7a7.md) | 157 | `result-track:ca4251ad9b3cf2ba468ae7a73b2230033d23bea35086076d0052781b3e51eb5a` |
| 34 | `theorem` | [Prime.mul_eq_prime_sq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-mul-eq-prime-sq-iff--3244ae6afd3c832d085ed9bf.md) | 162 | `result-track:3244ae6afd3c832d085ed9bfb4cb64bd5e4f3049bc81dac4250ca11254ec424e` |
| 35 | `theorem` | [Prime.coprime_pow_of_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-coprime-pow-of-not-dvd--08f595d4aaa7ed0f5acb8b6d.md) | 188 | `result-track:08f595d4aaa7ed0f5acb8b6d161b0ebfc80d2a14fdbc6112c039a4265f977a7e` |
| 36 | `theorem` | [coprime_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/coprime-primes--847990d2f20c7e0866ccf717.md) | 191 | `result-track:847990d2f20c7e0866ccf717764287fd094ebd54f2f2f11c9d1c02b52fca5adc` |
| 37 | `theorem` | [coprime_pow_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/coprime-pow-primes--efcda2c9777e38fd0d706595.md) | 194 | `result-track:efcda2c9777e38fd0d70659586586b6446bb4f84a4e539f184dc8abf6eb3b301` |
| 38 | `theorem` | [coprime_or_dvd_of_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/coprime-or-dvd-of-prime--2471c30c05dadcc6b1466ed7.md) | 198 | `result-track:2471c30c05dadcc6b1466ed7e0a44a90075d1b1c35d17982ee35c64a58e20339` |
| 39 | `theorem` | [coprime_of_lt_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/coprime-of-lt-prime--14f372d428643b63dd3aad22.md) | 201 | `result-track:14f372d428643b63dd3aad22bc24924ec50aa3220d077e9246c3780c4a4dd749` |
| 40 | `theorem` | [eq_or_coprime_of_le_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/eq-or-coprime-of-le-prime--c45d7a2503d0b524c30be506.md) | 204 | `result-track:c45d7a2503d0b524c30be506e39f1b764e29471d501cb226426dcd7a19742d5a` |
| 41 | `theorem` | [prime_eq_prime_of_dvd_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-eq-prime-of-dvd-pow--7268ae8f7c292bc57523ed86.md) | 208 | `result-track:7268ae8f7c292bc57523ed86f1d1ff8e3d77c35f4a2ed290a4ecf75b10fcb1f2` |
| 42 | `theorem` | [dvd_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/dvd-prime-pow--70e72f27fe92ae065e13cccf.md) | 211 | `result-track:70e72f27fe92ae065e13cccf9e25f24ac23bff4160ee0a81cf3e592a2b7a63f6` |
| 43 | `theorem` | [Prime.dvd_mul_of_dvd_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/prime-dvd-mul-of-dvd-ne--c1e30034359137632ec6138f.md) | 214 | `result-track:c1e30034359137632ec6138f6057677dc40f3f110ea9d5e84b78d3dd03ea4a17` |
| 44 | `theorem` | [eq_prime_pow_of_dvd_least_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/eq-prime-pow-of-dvd-least-prime-pow--47ee5368922a97ce43294c27.md) | 222 | `result-track:47ee5368922a97ce43294c2749c8eaa67d88cfd22ef580bab4b166827446f091` |
| 45 | `theorem` | [ne_one_iff_exists_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/ne-one-iff-exists-prime-dvd--ef852a7ae362820768179005.md) | 228 | `result-track:ef852a7ae362820768179005af95a70422339051c34bddc7c4fc864be0c1cb16` |
| 46 | `theorem` | [eq_one_iff_not_exists_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/eq-one-iff-not-exists-prime-dvd--281bee24c21dfba89dfdd14f.md) | 237 | `result-track:281bee24c21dfba89dfdd14fa12f86dffa2a4104b670461e7e6e1bc0208e5cb0` |
| 47 | `theorem` | [succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/declarations/succ-dvd-or-succ-dvd-of-succ-sum-dvd-mul--38351df5520d1ddbbd91a93a.md) | 240 | `result-track:38351df5520d1ddbbd91a93ac43f739e3b000d679ca4c7dadcf6fe42a769dc0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
