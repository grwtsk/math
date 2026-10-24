# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Lemmas.Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff3a70d2a3b1c62ae9ad250768735f02faa6b5b7",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff3a70d2a3b1c62ae9ad250768735f02faa6b5b7`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Parity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [num_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/num-dvd--d44550c6ff2acada7f5f5252.md) | 19 | `result-track:d44550c6ff2acada7f5f5252e79ff59826d13ec6fb3f186d13465f627a704c03` |
| 2 | `theorem` | [den_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/den-dvd--a309a324219b31b9fbf97acc.md) | 27 | `result-track:a309a324219b31b9fbf97acc6fa38bd8bddeef250357ceb7b859814dd8681986` |
| 3 | `theorem` | [num_den_mk](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/num-den-mk--b25d25bc77f1d1d518b8dd6a.md) | 34 | `result-track:b25d25bc77f1d1d518b8dd6a5683932273a758a143ee978e39bd54f37781418f` |
| 4 | `theorem` | [num_mk](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/num-mk--c3b2927bb57d0aa6bb0341a9.md) | 51 | `result-track:c3b2927bb57d0aa6bb0341a99fb6d6be13884b0c23d5f0f20297034996e73a3e` |
| 5 | `theorem` | [den_mk](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/den-mk--b28f131e229de9b53cde1bf7.md) | 58 | `result-track:b28f131e229de9b53cde1bf780adebf4535a5e491f3775d1d4439c80cf4dc019` |
| 6 | `theorem` | [add_den_dvd_lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/add-den-dvd-lcm--d62f22c88d63c2c36179ab65.md) | 65 | `result-track:d62f22c88d63c2c36179ab655383092796874e7b26767107855cbbb4ed9ef480` |
| 7 | `theorem` | [add_den_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/add-den-dvd--cef82297357b8368218ddc27.md) | 75 | `result-track:cef82297357b8368218ddc273c3317ad7a0bc27475c0daea09c8296bf9d51d7b` |
| 8 | `theorem` | [mul_den_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/mul-den-dvd--939138a5ff38bfd19151d8f1.md) | 80 | `result-track:939138a5ff38bfd19151d8f1b0680e1f15aef168af1b3a397c976b836a0e1ae6` |
| 9 | `theorem` | [mul_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/mul-num--2279d0c22b66464a55881b7c.md) | 85 | `result-track:2279d0c22b66464a55881b7c76161fef7c7f2faa8e89d33cff64b964e13d79d9` |
| 10 | `theorem` | [mul_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/mul-den--0d120533c62c82a9d87f918e.md) | 89 | `result-track:0d120533c62c82a9d87f918eb9e31db61957ed65066885827725900ec08ed715` |
| 11 | `theorem` | [mul_self_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/mul-self-num--7ee31fba6f4ec271604f048a.md) | 94 | `result-track:7ee31fba6f4ec271604f048a3479609386eb4fdd99e951b89fb312142dc84382` |
| 12 | `theorem` | [mul_self_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/mul-self-den--56c73c1b479c2d6347b4a64c.md) | 98 | `result-track:56c73c1b479c2d6347b4a64c4934d3bd3acfe237375709692a9212ff8632145c` |
| 13 | `theorem` | [add_num_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/add-num-den--a47a3e1c8bcbc824f18ba187.md) | 102 | `result-track:a47a3e1c8bcbc824f18ba187e8d992f8f99bcefc2a2454f481161250c347d124` |
| 14 | `theorem` | [isSquare_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/issquare-iff--3e7d44ac528132c3448ef46e.md) | 110 | `result-track:3e7d44ac528132c3448ef46ef1e748713a0d8765fc985b3dea7e7fb4d0da289c` |
| 15 | `theorem` | [isSquare_natCast_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/issquare-natcast-iff--d198aa19a5fc5499195788ef.md) | 120 | `result-track:d198aa19a5fc5499195788ef24ae9ba33fbed1ae4f368dcb9a119b57a33cc0e0` |
| 16 | `theorem` | [isSquare_intCast_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/issquare-intcast-iff--a5e2d8c40b9e1a9a399c51a3.md) | 124 | `result-track:a5e2d8c40b9e1a9a399c51a3e973b3690fac2916c4690c59cfa33a8fb277bb70` |
| 17 | `theorem` | [isSquare_ofNat_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/issquare-ofnat-iff--7fba2f3b51f5fdea793dd2c1.md) | 128 | `result-track:7fba2f3b51f5fdea793dd2c1c22afd8f8ff0b644422ab55709b6ab67b69dc56d` |
| 18 | `theorem` | [exists_eq_mul_div_num_and_eq_mul_div_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/exists-eq-mul-div-num-and-eq-mul-div-den--491e0ffd00beaf2e89378048.md) | 134 | `result-track:491e0ffd00beaf2e89378048aa19abfb8f34c4d8435f61c373a463a593017a2e` |
| 19 | `theorem` | [mul_num_den'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/mul-num-den--d4d90dcef6c72fa54e73f0c6.md) | 139 | `result-track:d4d90dcef6c72fa54e73f0c6aa2540969f2374cd8901aae8dae3f9bde367f698` |
| 20 | `theorem` | [add_num_den'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/add-num-den--6c0d3b5ca986019b9bbe3100.md) | 153 | `result-track:6c0d3b5ca986019b9bbe31002a669f44ff9625d36ee1cae9872507ccb36c2124` |
| 21 | `theorem` | [substr_num_den'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/substr-num-den--8842f1c49f2e0aa5aec5e29e.md) | 172 | `result-track:8842f1c49f2e0aa5aec5e29efa4e6739652007ec71118461d22ff3cce86d9a37` |
| 22 | `theorem` | [inv_neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/inv-neg--fe73e568b0916c47e8bb1628.md) | 179 | `result-track:fe73e568b0916c47e8bb16280ce1628cf1d568b5b9c3c7b1c79d896ba08a54fb` |
| 23 | `theorem` | [num_div_eq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/num-div-eq-of-coprime--e361f5fbd7ecd1a00c452c39.md) | 183 | `result-track:e361f5fbd7ecd1a00c452c39b4bc0302e9837c0d26cf3c0dbf65003becc29285` |
| 24 | `theorem` | [den_div_eq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/den-div-eq-of-coprime--ff4b604caa41a37d082c13c1.md) | 189 | `result-track:ff4b604caa41a37d082c13c1ea6bbc3cc1997a713a3dbe9c2efc192cccd7ad88` |
| 25 | `theorem` | [div_int_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/div-int-inj--51c6d8ddb3806f0e162995a0.md) | 195 | `result-track:51c6d8ddb3806f0e162995a05b7f135c9b2e1808ed88e08c7ed13d10a98f4ff7` |
| 26 | `theorem` | [intCast_div_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/intcast-div-self--cbaf51d413086b62b13c0b33.md) | 202 | `result-track:cbaf51d413086b62b13c0b33c20424467f6a4d616bbd0d5fe4736cd4c956ed36` |
| 27 | `theorem` | [natCast_div_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/natcast-div-self--881ba05f979eae78ae49114f.md) | 210 | `result-track:881ba05f979eae78ae49114f6ae7157f95e6ad12bc72ea49b37327d1434305fe` |
| 28 | `theorem` | [intCast_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/intcast-div--12871f593a2327f9f4e7159c.md) | 213 | `result-track:12871f593a2327f9f4e7159c1da022e09a1eb5266f0decd7c65d8ff798c598c5` |
| 29 | `theorem` | [natCast_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/natcast-div--9f902d74ae542e32d80de945.md) | 218 | `result-track:9f902d74ae542e32d80de9456eba36cc0226f6c3c17556f33ac2dfa65ed8687a` |
| 30 | `theorem` | [den_div_intCast_eq_one_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/den-div-intcast-eq-one-iff--d36a3c7ff7fa33eee4bc0fd8.md) | 221 | `result-track:d36a3c7ff7fa33eee4bc0fd8ec35ce37847d3c6fe91c4523f86d273793328955` |
| 31 | `theorem` | [den_div_natCast_eq_one_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/den-div-natcast-eq-one-iff--cae23f7a412a60fc72d2a42b.md) | 228 | `result-track:cae23f7a412a60fc72d2a42b6c146703e1e8d9a72e80b8dce66cd0e6dc437c52` |
| 32 | `theorem` | [inv_intCast_num_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/inv-intcast-num-of-pos--b732e6260376bcb63b19552d.md) | 231 | `result-track:b732e6260376bcb63b19552db8927284c1b9e8ad7981d7af093e2a0600604aaa` |
| 33 | `theorem` | [inv_natCast_num_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/inv-natcast-num-of-pos--1e4a3f45d43aafe4162c7456.md) | 237 | `result-track:1e4a3f45d43aafe4162c745677e713aec7dae62498d3be473b5601794d13f2d8` |
| 34 | `theorem` | [inv_intCast_den_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/inv-intcast-den-of-pos--8a64f52bc19d2a2d0a8a1553.md) | 240 | `result-track:8a64f52bc19d2a2d0a8a1553593dff7f40381cb72f4a257a8ec20f522ca349d2` |
| 35 | `theorem` | [inv_natCast_den_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/inv-natcast-den-of-pos--510fb4510de0555649df5549.md) | 246 | `result-track:510fb4510de0555649df55498ec222679fef0364f2ec7ffa81d8a762ae88cf27` |
| 36 | `theorem` | [inv_intCast_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/inv-intcast-num--c1b4b6b7619b9f4621e43353.md) | 251 | `result-track:c1b4b6b7619b9f4621e43353d129a70ab10811efb3c97a5cfbf4864fabdb7d9b` |
| 37 | `theorem` | [inv_natCast_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/inv-natcast-num--64f54afd5f3b8da0d9c04a4c.md) | 260 | `result-track:64f54afd5f3b8da0d9c04a4c998dd96967f941bcde31d4aa6aeff47c8f4134e1` |
| 38 | `theorem` | [inv_ofNat_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/inv-ofnat-num--f94bb1116fb838653de63b0e.md) | 264 | `result-track:f94bb1116fb838653de63b0ec52f5e6a08edacbe185e63516fb9730249ed149c` |
| 39 | `theorem` | [inv_intCast_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/inv-intcast-den--039eb5522d935e09e8f5ec7d.md) | 268 | `result-track:039eb5522d935e09e8f5ec7d80495320717661da0c4481ef059e2195d2064460` |
| 40 | `theorem` | [inv_natCast_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/inv-natcast-den--98c8c50960d43af30cd5ee27.md) | 282 | `result-track:98c8c50960d43af30cd5ee276439eb5d17b3cd6f874dd2e349a5f64075fe6a35` |
| 41 | `theorem` | [inv_ofNat_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/inv-ofnat-den--0163514524fe3e22748ba34d.md) | 286 | `result-track:0163514524fe3e22748ba34dd1fb77765fd5c45590220914d38bf18c1feaddde` |
| 42 | `theorem` | [«forall»](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/forall--aa239982f7eb941558b76284.md) | 290 | `result-track:aa239982f7eb941558b76284b5f69a96f19210cea444e2cb2b1216a8b7b745ce` |
| 43 | `theorem` | [«exists»](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/exists--db1f60ce7e5d1300f86c5143.md) | 296 | `result-track:db1f60ce7e5d1300f86c514342b2eb99a53c153e73b4073171d9c22f25a648f8` |
| 44 | `def` | [pnatDen](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/pnatden--5e618e6f0d1505f193d56488.md) | 307 | `declaration-track:5e618e6f0d1505f193d564887a576853454d07aff8157d8325c76a94ccfc5916` |
| 45 | `theorem` | [coe_pnatDen](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/coe-pnatden--d02e7e6556c77bd6fd9466f2.md) | 311 | `result-track:d02e7e6556c77bd6fd9466f29de9db5cb2ffaab7942ba0851bd9e9db095e226c` |
| 46 | `theorem` | [pnatDen_eq_iff_den_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/pnatden-eq-iff-den-eq--e9f6608ffb6df9b91e3ef2cb.md) | 314 | `result-track:e9f6608ffb6df9b91e3ef2cb92bdeb77c1d930aba839518b27e77f11b22765c9` |
| 47 | `theorem` | [pnatDen_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/pnatden-one--bb6b0cbf143c602dbe256ff6.md) | 318 | `result-track:bb6b0cbf143c602dbe256ff6bfa9afb91a4cdea6785958cdee7ff634b753b76a` |
| 48 | `theorem` | [pnatDen_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/declarations/pnatden-zero--94cb996eff8095f47285ada3.md) | 322 | `result-track:94cb996eff8095f47285ada384ef59b35c0b93a2eb35fcbeb45349fc60edcd29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
