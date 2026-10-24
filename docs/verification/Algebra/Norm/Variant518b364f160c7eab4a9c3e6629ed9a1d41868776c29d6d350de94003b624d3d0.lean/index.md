# Verification target: GRWTSK.Algebra.Norm.Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a27201019a798f28da55b796aee34d5fd60c7c3d",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/index.md) · [Full source](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a27201019a798f28da55b796aee34d5fd60c7c3d`.

Source path: `GRWTSK/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iff_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/iff-eq--23f2e4edf899fce0124e1c8b.md) | 24 | `result-track:23f2e4edf899fce0124e1c8b092cbba09f7efa6929b4b74456d861720681b0a7` |
| 2 | `theorem` | [eq_true_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/eq-true-eq--d773bcb93b22a28fcfbb8db7.md) | 27 | `result-track:d773bcb93b22a28fcfbb8db70d0b25af141daef429db72edfbd99f6a94db3165` |
| 3 | `theorem` | [eq_false_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/eq-false-eq--91cfe5c4e86edd408681b7ba.md) | 28 | `result-track:91cfe5c4e86edd408681b7bad21adcaf33d08ad6ba0cbe1a9310859a3de214ef` |
| 4 | `theorem` | [not_eq_prop](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/not-eq-prop--b9fcc0bff31d1d145f37f941.md) | 29 | `result-track:b9fcc0bff31d1d145f37f941867b7ae59077321636f4969c5d3c2cf1762a27de` |
| 5 | `theorem` | [imp_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/imp-eq--2df3863a62fad019dde5091c.md) | 34 | `result-track:2df3863a62fad019dde5091c4ded83a2ef01c424dd19211d6bbf35b883c0c0f5` |
| 6 | `theorem` | [forall_imp_eq_or](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/forall-imp-eq-or--2bf4fec88a4cb34995cf9ce6.md) | 39 | `result-track:2bf4fec88a4cb34995cf9ce646b1f1b569269a22e5a544bee45e14a473f533a1` |
| 7 | `theorem` | [true_imp_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/true-imp-eq--4b3ee1c782d6644b67f26d56.md) | 42 | `result-track:4b3ee1c782d6644b67f26d563e16fb44fabd9bd222a641e43a9ab8986f7216f3` |
| 8 | `theorem` | [false_imp_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/false-imp-eq--cdb65cbbbda2bcc403795f36.md) | 43 | `result-track:cdb65cbbbda2bcc403795f36579b68ec7f14a6d011cf872d20d5b856cdac8402` |
| 9 | `theorem` | [imp_true_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/imp-true-eq--70b85d97f53bd80b2f0ece78.md) | 44 | `result-track:70b85d97f53bd80b2f0ece782d99f4c191b5b60af1ebfea01dea57337dbbe8cb` |
| 10 | `theorem` | [imp_false_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/imp-false-eq--6eea27e329fabbd6a59bd81b.md) | 45 | `result-track:6eea27e329fabbd6a59bd81bad3f4f6da1df87dc0a52c958de09b576a0b9bc1f` |
| 11 | `theorem` | [imp_self_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/imp-self-eq--e6c41e279750b6e59b092594.md) | 46 | `result-track:e6c41e279750b6e59b092594cfbd78394464c71fed0b1fab95926425f0128e10` |
| 12 | `theorem` | [not_true](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/not-true--afac13416719f58712049341.md) | 48 | `result-track:afac13416719f58712049341a3b906ee843e3f8397fa6d60b6d2bfc30e9cb6c6` |
| 13 | `theorem` | [not_false](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/not-false--0732fc85f7259381f565a2e6.md) | 49 | `result-track:0732fc85f7259381f565a2e61f3e771b5434f85e94a5fce2fdeb1b835e37a610` |
| 14 | `theorem` | [not_not](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/not-not--f8168611f7d6adb4a99e6b22.md) | 50 | `result-track:f8168611f7d6adb4a99e6b224ef1d15596249d4496321d2e0bdbb2ff1ffb2c84` |
| 15 | `theorem` | [not_and](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/not-and--8a741ec6242c4411a7a163d8.md) | 51 | `result-track:8a741ec6242c4411a7a163d86aa21a5fad97c0d6d1d59552c95cb6588fd1edde` |
| 16 | `theorem` | [not_or](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/not-or--fdb3f9e811b2ca59b3f9517e.md) | 52 | `result-track:fdb3f9e811b2ca59b3f9517e20be55ab1e285531703faabb4b24d97f0ab28e6b` |
| 17 | `theorem` | [not_ite](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/not-ite--69ad16a32a64d5751b41e97b.md) | 53 | `result-track:69ad16a32a64d5751b41e97b547696b4837e29cf8a2082ab772a59fa011f37be` |
| 18 | `theorem` | [not_forall](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/not-forall--f5bed7f93d962142e71469ea.md) | 54 | `result-track:f5bed7f93d962142e71469ea047a60e0ba1cb9157cda90f0d67a30a08c839a54` |
| 19 | `theorem` | [not_exists](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/not-exists--6e4976879f09dfc8fd52c341.md) | 55 | `result-track:6e4976879f09dfc8fd52c3412ed96b323dbd41c27353a2421bf23d3ec31c5f59` |
| 20 | `theorem` | [not_implies](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/not-implies--2f886e2b56faa020bf28b9ba.md) | 56 | `result-track:2f886e2b56faa020bf28b9ba48dca56b28fe2928a9e0324763de78f1b797bb0d` |
| 21 | `theorem` | [or_assoc](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/or-assoc--41afea6405ff80f00e90191e.md) | 58 | `result-track:41afea6405ff80f00e90191e0f294941d34a0f83549b1073c3ec04d516223afb` |
| 22 | `theorem` | [or_swap12](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/or-swap12--3724e86b944af088051eb011.md) | 59 | `result-track:3724e86b944af088051eb011fb655774995c075fd328ecae5d5d4c02220dd51b` |
| 23 | `theorem` | [or_swap13](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/or-swap13--49f19f12a485b0815bf8173e.md) | 60 | `result-track:49f19f12a485b0815bf8173e6b3eaab31e8be99f88d773778dffde718ec6981c` |
| 24 | `theorem` | [ite_true_false](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/ite-true-false--7e1092554a943954b81c306f.md) | 62 | `result-track:7e1092554a943954b81c306f42b898f2a3d9df2d74d8c98632f16bb6f3c3d440` |
| 25 | `theorem` | [ite_false_true](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/ite-false-true--0fca7a0d012412d74bcb1c00.md) | 65 | `result-track:0fca7a0d012412d74bcb1c00f002c3cccb07de3814ef45ead37265efec3cfe16` |
| 26 | `theorem` | [cond_eq_ite](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/cond-eq-ite--c992ab1c0a70893eb0754c0d.md) | 68 | `result-track:c992ab1c0a70893eb0754c0d4223b388f186ada4836c76bf95efde9021fc933b` |
| 27 | `theorem` | [Nat.lt_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/nat-lt-eq--6429ee1f177285ca28aff85c.md) | 71 | `result-track:6429ee1f177285ca28aff85c83413c7c9710ababc7a9e6b907a18b333a8131a8` |
| 28 | `theorem` | [Int.lt_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/int-lt-eq--b93f46eb1403d79b5585c267.md) | 74 | `result-track:b93f46eb1403d79b5585c2673aa5b6d11f97f0fb53528ee41903332ecbe8ef59` |
| 29 | `theorem` | [beq_eq_decide_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/beq-eq-decide-eq--74d82c1f03bd28b7ec2eef5f.md) | 77 | `result-track:74d82c1f03bd28b7ec2eef5fd084b7520c28a17b73b8a7d25ef08537288ffe35` |
| 30 | `theorem` | [bne_eq_decide_not_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/bne-eq-decide-not-eq--df7d4be826aeb4246a4fb792.md) | 82 | `result-track:df7d4be826aeb4246a4fb7925b9a08f7d2a1be647e503340837c0991e0a84240` |
| 31 | `theorem` | [natCast_div](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/natcast-div--45b7fdecd10c996f4002036e.md) | 85 | `result-track:45b7fdecd10c996f4002036e47d0a8e800d2f5aee5f39ce8f9b62c92bdb21275` |
| 32 | `theorem` | [natCast_mod](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/natcast-mod--4ea57f0675dfba9b0bb82494.md) | 86 | `result-track:4ea57f0675dfba9b0bb82494201c3ad0acfa910b1fdcacc53742d53489c3782c` |
| 33 | `theorem` | [natCast_add](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/natcast-add--2ae48139cf0e5be770b18c78.md) | 87 | `result-track:2ae48139cf0e5be770b18c78de105ee6a566e64f0eecf195da25cfcc01656143` |
| 34 | `theorem` | [natCast_mul](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/natcast-mul--04a0e7d4591bc615a7ce5ba0.md) | 88 | `result-track:04a0e7d4591bc615a7ce5ba01b7fed9145df335d0022fa742dda3735a591a410` |
| 35 | `theorem` | [natCast_pow](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/natcast-pow--7db3839eeb5974738dff191a.md) | 89 | `result-track:7db3839eeb5974738dff191ab01841e75ca8e0e928ea11e922332ce3f16e755d` |
| 36 | `theorem` | [natCast_id](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/natcast-id--fa2ef9547246cb2713a3af5e.md) | 90 | `result-track:fa2ef9547246cb2713a3af5ed166a67ebf46f9ad657c428bee223141d04f4975` |
| 37 | `theorem` | [Nat.pow_one](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/nat-pow-one--a196a32bfd0e9f460a306bae.md) | 92 | `result-track:a196a32bfd0e9f460a306bae5809781877de7bd5a5787893557b02366cadc048` |
| 38 | `theorem` | [Int.pow_one](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/int-pow-one--5251cb0bf6675ff387ec9580.md) | 95 | `result-track:5251cb0bf6675ff387ec9580eafedc8d0361fdd046fa2408c411c184658ce44f` |
| 39 | `theorem` | [forall_true](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/forall-true--b020090e04e4c342a474475f.md) | 98 | `result-track:b020090e04e4c342a474475f4ed028e4179895234e1c9dea16ce5b3b6b19ef41` |
| 40 | `theorem` | [flip_bool_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/flip-bool-eq--9a2ed80c0d92c3cbbe1c0fbe.md) | 102 | `result-track:9a2ed80c0d92c3cbbe1c0fbe606b6f5f3907ac09fe31cccdf6b045cf6a7f5fd5` |
| 41 | `theorem` | [bool_eq_to_prop](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/bool-eq-to-prop--62ecee9c87f074ce643e7505.md) | 106 | `result-track:62ecee9c87f074ce643e75055cea9ff4d55dda564d2176fcb24a7c2a667ca4a3` |
| 42 | `theorem` | [forall_or_forall](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/forall-or-forall--aed5be5a268a1db8d04bccd9.md) | 109 | `result-track:aed5be5a268a1db8d04bccd9bfb665d8a04136e99bfae074840938d2ff890ec1` |
| 43 | `theorem` | [forall_forall_or](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/forall-forall-or--eea5e545d7d7f01c63b6dcf5.md) | 119 | `result-track:eea5e545d7d7f01c63b6dcf5aada0cbbdc686a9cd4ad05db4342e34f3cfc9013` |
| 44 | `theorem` | [forall_and](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/forall-and--1f7fc151ba04797c05bc949b.md) | 129 | `result-track:1f7fc151ba04797c05bc949be81e3a7ec1b5740b3231d0f24bd42d7fc3f56638` |
| 45 | `theorem` | [exists_const](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/exists-const--3ac91349b686d92d1dfdc006.md) | 132 | `result-track:3ac91349b686d92d1dfdc0062fff723aeda73189a5d65e9e3906452f688b0421` |
| 46 | `theorem` | [exists_or](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/exists-or--19effe9334fdc450d2564b8f.md) | 135 | `result-track:19effe9334fdc450d2564b8f871774dfe9514df4ffb96e9658ed0c41de680bc8` |
| 47 | `theorem` | [exists_prop](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/exists-prop--9e0c8f26962589f381083490.md) | 138 | `result-track:9e0c8f26962589f381083490626c2114f3f80310c05e5d47c2a4262368de7768` |
| 48 | `theorem` | [exists_and_left](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/exists-and-left--990b7a6c400929abf96e3b22.md) | 141 | `result-track:990b7a6c400929abf96e3b22cd0e016167610e923e1e00af41021e6add7b1da4` |
| 49 | `theorem` | [exists_and_right](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/exists-and-right--a4d3438895571453bd60cf29.md) | 144 | `result-track:a4d3438895571453bd60cf295de3f1a8e0bc84fdfaa393fea3ec750282909b6a` |
| 50 | `theorem` | [zero_sub](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/zero-sub--1c9a2a83426775b215b98d09.md) | 147 | `result-track:1c9a2a83426775b215b98d0920621764d4b0636398c1ebb10a567f1662fce1a8` |
| 51 | `theorem` | [smul_nat_eq_mul](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/smul-nat-eq-mul--a4cf1455871894b4befc4fc8.md) | 151 | `result-track:a4cf1455871894b4befc4fc81d6e66bd672588be5d297c708c05b16828b7cf87` |
| 52 | `theorem` | [smul_int_eq_mul](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/smul-int-eq-mul--f868dd58feb9b38c88bfbb25.md) | 154 | `result-track:f868dd58feb9b38c88bfbb25d3065fd95236f86cf55a26eb4134742895d7a3e6` |
| 53 | `theorem` | [Int.subNatNat_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/int-subnatnat-eq--27e72a4095a4575244f39f93.md) | 157 | `result-track:27e72a4095a4575244f39f9337e71bde3009d73bba2e1bb2ca8f9bafc0613ded` |
| 54 | `theorem` | [Int.sign_eq](../../../../mathematics/Algebra/Norm/Variant518b364f160c7eab4a9c3e6629ed9a1d41868776c29d6d350de94003b624d3d0.lean/declarations/int-sign-eq--ff4d758a5e13171f9bccb656.md) | 160 | `result-track:ff4d758a5e13171f9bccb656acf47ec67cc0487a67b4ed4eb8ad48a13ef18efc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
