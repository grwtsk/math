# Verification target: GRWTSK.Algebra.Order.Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ded0305daee64a3e5c0a5e417c907ebca71a6d06",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/index.md) · [Full source](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ded0305daee64a3e5c0a5e417c907ebca71a6d06`.

Source path: `GRWTSK/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.LemmasAux` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Ext` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Grind.Ordered.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_mp](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/eq-mp--7a8b945387486b94c8b83b13.md) | 21 | `result-track:7a8b945387486b94c8b83b13e6dff4c169c447dda96d8f5838376480e7aa60f7` |
| 2 | `theorem` | [eq_mp_not](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/eq-mp-not--9f64d736a26db7b2fb54cc2b.md) | 24 | `result-track:9f64d736a26db7b2fb54cc2bfc6d5d36310a7da9f14aa67d310917dea7a83295` |
| 3 | `theorem` | [eq_trans_true](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/eq-trans-true--6310e8d08e8632bd860765a1.md) | 27 | `result-track:6310e8d08e8632bd860765a154845c25ff008d504bdf713921bebc3959ce6d88` |
| 4 | `theorem` | [eq_trans_false](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/eq-trans-false--bd4f2beb5a7e14588a99bce8.md) | 30 | `result-track:bd4f2beb5a7e14588a99bce8e6ffc1acda72c4670a5420e11a23d01b065d1d56` |
| 5 | `theorem` | [eq_trans_true'](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/eq-trans-true--bbe743e95a8d9da2cdb17a2f.md) | 33 | `result-track:bbe743e95a8d9da2cdb17a2fc2a30c2e01a953baa7bba9a614af60652da0b410` |
| 6 | `theorem` | [eq_trans_false'](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/eq-trans-false--d29408c2c976852bbe4c6994.md) | 36 | `result-track:d29408c2c976852bbe4c6994a3031b14e0e4a26dafb79e9bfd8b02aba61e34be` |
| 7 | `theorem` | [le_of_eq_1](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-of-eq-1--c9c35da15d442805576a8391.md) | 39 | `result-track:c9c35da15d442805576a839137b7847ef7b7e45b82c99ddb6933f303348b11e0` |
| 8 | `theorem` | [le_of_eq_2](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-of-eq-2--86775e8fd1e05e7a4db84975.md) | 43 | `result-track:86775e8fd1e05e7a4db84975d187e1a1a5c50611d168830d6593e660e7e71d4c` |
| 9 | `theorem` | [le_of_eq_1_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-of-eq-1-k--f6bfb4cac66b9a5e2e012f5e.md) | 51 | `result-track:f6bfb4cac66b9a5e2e012f5ecc2d983ed55854b85d404c705873ffc31c734cb5` |
| 10 | `theorem` | [le_of_eq_2_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-of-eq-2-k--191e3b7e620297586fe67fcc.md) | 56 | `result-track:191e3b7e620297586fe67fcc798c7a3d611f0faa73d44eb0ec741430299ad617` |
| 11 | `theorem` | [le_of_offset_eq_1_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-of-offset-eq-1-k--bf4b57ecb48abf1632731eab.md) | 61 | `result-track:bf4b57ecb48abf1632731eabcd2ab132472646042cb086ee341ffe28393abd3d` |
| 12 | `theorem` | [le_of_offset_eq_2_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-of-offset-eq-2-k--3f0ba63e6b37779702d3ff4a.md) | 65 | `result-track:3f0ba63e6b37779702d3ff4aecf02a066495e59919a8e452ac377f703dcd5b2f` |
| 13 | `theorem` | [nat_eq](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/nat-eq--af293636598d51d4222ad6b5.md) | 71 | `result-track:af293636598d51d4222ad6b55f96cd5f62de34556c9636499d40d309d96f8275` |
| 14 | `theorem` | [of_nat_eq](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/of-nat-eq--ecff2df794b655ea8cc610b6.md) | 75 | `result-track:ecff2df794b655ea8cc610b64e771df68beebdc155a06b358b6ff7498b856f5d` |
| 15 | `theorem` | [of_natCast_eq](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/of-natcast-eq--d7947147067becf8e1f46b7e.md) | 78 | `result-track:d7947147067becf8e1f46b7e1e736502eb94a19c3451b89b8b3ea8c40bd1b078` |
| 16 | `theorem` | [le_of_not_le](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-of-not-le--9fb65832c6cbd519756f72ea.md) | 81 | `result-track:9fb65832c6cbd519756f72ea461fac202fe8f48a34718e2220f4e8d4fb2ea398` |
| 17 | `theorem` | [lt_of_not_le](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-of-not-le--a488e59316aca5bc0b8ad6ec.md) | 87 | `result-track:a488e59316aca5bc0b8ad6ec72bad55f16c428c050ed4b2f10b31d3f9e0c8ff3` |
| 18 | `theorem` | [le_of_not_lt](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-of-not-lt--f40b14acaffce15c17dd4897.md) | 94 | `result-track:f40b14acaffce15c17dd4897e424d4901e873bf40f0591b79d7a0c1b7dd7ae26` |
| 19 | `theorem` | [le_of_not_lt_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-of-not-lt-k--24059d7ac3fc77fd30b1264e.md) | 105 | `result-track:24059d7ac3fc77fd30b1264e22842856e9d85f60791d9910ce7b1625d7e614da` |
| 20 | `theorem` | [lt_of_not_le_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-of-not-le-k--5c28905fdecc45a72fba45f4.md) | 114 | `result-track:5c28905fdecc45a72fba45f46f75eaf7c8da4650fb9bd39d3ae327fc6acfb5c5` |
| 21 | `theorem` | [int_lt](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/int-lt--e83d0f0e8fa97239a704d99c.md) | 123 | `result-track:e83d0f0e8fa97239a704d99c1bd8989fd2bbce2ffc1c27a518a89fbe12a34766` |
| 22 | `theorem` | [eq_of_le_of_le](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/eq-of-le-of-le--b05c231723e83effe7a955d4.md) | 130 | `result-track:b05c231723e83effe7a955d42cedb20de8a3fdb9c3efdc09a0eba84bea7b868e` |
| 23 | `theorem` | [eq_of_le_of_le_0](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/eq-of-le-of-le-0--57540dfb727d2d14f99e50ff.md) | 133 | `result-track:57540dfb727d2d14f99e50ffd4f2af17bafe7daca1e1cae659aff9a86ed73551` |
| 24 | `theorem` | [le_trans](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-trans--33dde60bb5169d8e69b85d8a.md) | 142 | `result-track:33dde60bb5169d8e69b85d8a2a3f79ffd95c287105d57a9cd2f7900b6d0a9a01` |
| 25 | `theorem` | [lt_trans](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-trans--11f9c8da1d642000bdfd8eb7.md) | 145 | `result-track:11f9c8da1d642000bdfd8eb758dcd481b6e9aac76694d61ff101c00f98312cb6` |
| 26 | `theorem` | [le_lt_trans](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-lt-trans--412beca227e0f11859ac0cf5.md) | 148 | `result-track:412beca227e0f11859ac0cf56e0212380763bc38566d63a50594cc9a28f08eb6` |
| 27 | `theorem` | [lt_le_trans](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-le-trans--d35acd9215b1ef0a1d43bfb7.md) | 151 | `result-track:d35acd9215b1ef0a1d43bfb70d564f1e1cc59ef2eac98629a7430e486270c065` |
| 28 | `theorem` | [lt_unsat](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-unsat--1a7538987f8f545d3a0c6aef.md) | 154 | `result-track:1a7538987f8f545d3a0c6aef9ea14242332fae5d58175c0aebec334afdf205bc` |
| 29 | `theorem` | [le_trans_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-trans-k--d8b51ba96f55048f2cf03f72.md) | 161 | `result-track:d8b51ba96f55048f2cf03f72edb13e8e1a354cbd900bd30a6691a53d02b959cd` |
| 30 | `theorem` | [lt_trans_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-trans-k--b19dfc17685f147fb74ca7a6.md) | 168 | `result-track:b19dfc17685f147fb74ca7a6c4ff07c42de5ce1733ef14a04558731884805ef0` |
| 31 | `theorem` | [le_lt_trans_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-lt-trans-k--21f33509e5782c49149fcc53.md) | 175 | `result-track:21f33509e5782c49149fcc53ed2eefa56cb05e7abcec9eaa12891656b09c27aa` |
| 32 | `theorem` | [lt_le_trans_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-le-trans-k--695e7883f7abcbcbe24351dd.md) | 182 | `result-track:695e7883f7abcbcbe24351ddfdfa98396809180ed1d25250ceb589197a4258a5` |
| 33 | `theorem` | [le_unsat_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-unsat-k--8bfe03b25f733bff3064a811.md) | 193 | `result-track:8bfe03b25f733bff3064a8112d2c1b06a108095ad31a8aa2dae0147865c704fe` |
| 34 | `theorem` | [lt_unsat_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-unsat-k--3de1e06f053f559c85da02df.md) | 203 | `result-track:3de1e06f053f559c85da02df5e3f29b28a604a71368f0daa087248fcdcb05931` |
| 35 | `theorem` | [add_lt_add_of_le_of_lt](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/add-lt-add-of-le-of-lt--1dacaa3fdc70f61dd75b1e36.md) | 217 | `result-track:1dacaa3fdc70f61dd75b1e362c5bb32b6fee57791d94c62e30beca7eff97418f` |
| 36 | `theorem` | [add_lt_add_of_lt_of_le](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/add-lt-add-of-lt-of-le--5c71a57f7c195e9038839118.md) | 221 | `result-track:5c71a57f7c195e90388391186eb1fbff3d203c5cf93e88289c6f9b2ff657a76c` |
| 37 | `theorem` | [le_eq_true_of_lt](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-eq-true-of-lt--bff6e100aba185ac9fe07c4f.md) | 227 | `result-track:bff6e100aba185ac9fe07c4f5d611b1e1621a99d70a8ddfa08ce886a7f80f1ee` |
| 38 | `theorem` | [le_eq_true](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-eq-true--bd5054b001da0bec34838d39.md) | 232 | `result-track:bd5054b001da0bec34838d391ff6ea6f02443393683b9c6c44af1ac61a774d5d` |
| 39 | `theorem` | [le_eq_true_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-eq-true-k--f8098d1f78d7a79538798d41.md) | 236 | `result-track:f8098d1f78d7a79538798d41d0acf996403e4a8bbdde5c022b4f2e5e10cd28f6` |
| 40 | `theorem` | [lt_eq_true_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-eq-true-k--47871c72fbb72414ff3eff3f.md) | 246 | `result-track:47871c72fbb72414ff3eff3f93680705224a970e4ebfb4d6331d3c46196f95cd` |
| 41 | `theorem` | [le_eq_true_of_le_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-eq-true-of-le-k--e55ef1514e0eafe33cf49772.md) | 256 | `result-track:e55ef1514e0eafe33cf49772f9591cc948ebcae6b264a1b6aacaff8fce12e98d` |
| 42 | `theorem` | [le_eq_true_of_lt_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-eq-true-of-lt-k--a99419a41b42af6359e29cd2.md) | 267 | `result-track:a99419a41b42af6359e29cd294c9f4a608725e26cbcff1896d568747d1046f47` |
| 43 | `theorem` | [lt_eq_true_of_lt_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-eq-true-of-lt-k--48062e9cd3d50e9537d5d968.md) | 273 | `result-track:48062e9cd3d50e9537d5d968ba14eeee5399b5f67c11d6707a703eccd8989154` |
| 44 | `theorem` | [lt_eq_true_of_le_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-eq-true-of-le-k--512fce44e3e5ae61696fa333.md) | 284 | `result-track:512fce44e3e5ae61696fa33317a542483a4fe49e9010397d12fa7dd6cbcd1fe8` |
| 45 | `theorem` | [lt_eq_false](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-eq-false--d02ec98cbf83a95664d4429b.md) | 297 | `result-track:d02ec98cbf83a95664d4429b0b6a631b1de9d12eaa87ba288bbbd6bd74903be6` |
| 46 | `theorem` | [le_eq_false_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-eq-false-k--04664ad0d42037c2240d86ca.md) | 303 | `result-track:04664ad0d42037c2240d86cae4ec1e9b160bf92b0d5d274134e619e4607a3d10` |
| 47 | `theorem` | [lt_eq_false_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-eq-false-k--9bea354f5c64c2c89b593ef7.md) | 316 | `result-track:9bea354f5c64c2c89b593ef759f5abcfaa82f68b2ecd32c9476868c20ef83d93` |
| 48 | `theorem` | [le_eq_false_of_lt](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-eq-false-of-lt--a1dfc16db578386fe6b89808.md) | 329 | `result-track:a1dfc16db578386fe6b89808d134c78721d6b8e8f64c520de957aeba90d1a67a` |
| 49 | `theorem` | [lt_eq_false_of_lt](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-eq-false-of-lt--c5438e9977b09468fd70d5cc.md) | 336 | `result-track:c5438e9977b09468fd70d5cc7c3da0c025455cd184de95e8dd3205cd775883a4` |
| 50 | `theorem` | [lt_eq_false_of_le](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-eq-false-of-le--862751764df5fde0cb449387.md) | 343 | `result-track:862751764df5fde0cb4493870459c32981798de221bf33ff4a3f760a7affe2de` |
| 51 | `theorem` | [le_eq_false_of_le_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-eq-false-of-le-k--576acc07b97f8e3285a067ec.md) | 350 | `result-track:576acc07b97f8e3285a067ece45613dad7d0c48b6404973f7133c2cea99cca57` |
| 52 | `theorem` | [lt_eq_false_of_le_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-eq-false-of-le-k--f4435b2912df96d9ef7dc4e7.md) | 357 | `result-track:f4435b2912df96d9ef7dc4e75d88ce755780a8a913fe72a4a90a0564f4e547a0` |
| 53 | `theorem` | [lt_eq_false_of_lt_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/lt-eq-false-of-lt-k--b61a925bac006df9d8904742.md) | 364 | `result-track:b61a925bac006df9d89047420c6bd42501d21cb4811c698c7dd4ce2146182d29` |
| 54 | `theorem` | [le_eq_false_of_lt_k](../../../../mathematics/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/declarations/le-eq-false-of-lt-k--f5e32abb31e3ee3435a9f54d.md) | 371 | `result-track:f5e32abb31e3ee3435a9f54d8df73564b1fcae6e98d27f2b074434b0876d7d71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
