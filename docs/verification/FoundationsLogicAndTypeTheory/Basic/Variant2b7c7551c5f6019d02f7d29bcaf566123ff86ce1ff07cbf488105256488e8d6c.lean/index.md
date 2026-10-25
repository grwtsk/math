# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90156894dabdccc157db17c8bb099284810741b3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90156894dabdccc157db17c8bb099284810741b3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-sub--63b6d574363be7284998ae99.md) | 40 | `result-track:63b6d574363be7284998ae99781a4b4e2fb89ee651c7f0ca9a1b67e3ee1b3564` |
| 2 | `theorem` | [cast_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-pred--23ec2b910105c055d4c3ef50.md) | 45 | `result-track:23ec2b910105c055d4c3ef50b6c9e8dbfbafaff777c77d7d4ec97212f4697982` |
| 3 | `theorem` | [cast_negSucc](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-negsucc--0e81cdaf2c5513f93d591418.md) | 60 | `result-track:0e81cdaf2c5513f93d5914184b8754779d4f450560a0782ee4c0cea521c40297` |
| 4 | `theorem` | [cast_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-zero--9d6da60b2f1f3f162df72892.md) | 65 | `result-track:9d6da60b2f1f3f162df728927334a47b174c9179e26fdd74ce0a543c8607370c` |
| 5 | `theorem` | [cast_natCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-natcast--c4456ef48b5d809e58df0ae7.md) | 71 | `result-track:c4456ef48b5d809e58df0ae7a5f158f444dbd9dd32cf291681fc98d1fa6189e6` |
| 6 | `theorem` | [cast_ofNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-ofnat--35ff13a05f5fa30969cce0dd.md) | 76 | `result-track:35ff13a05f5fa30969cce0dd8988a58748cb52c0493b7eae765dc12a92ca290d` |
| 7 | `theorem` | [cast_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-one--62e99112e71413c7146de97e.md) | 81 | `result-track:62e99112e71413c7146de97e500282a3767af38304ded8eed03f75ed7be414d5` |
| 8 | `theorem` | [cast_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-neg--3a833d906d0530a6043750fa.md) | 86 | `result-track:3a833d906d0530a6043750fab1fea9deba55139d3c5590bf2efde9821fa2bf11` |
| 9 | `theorem` | [cast_subNatNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-subnatnat--8d1715e748fdce2b58868e19.md) | 93 | `result-track:8d1715e748fdce2b58868e1930961c231404d3f278c7d9cfdf8a52ceac14791f` |
| 10 | `theorem` | [cast_negOfNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-negofnat--b23befabd88bd511daf69323.md) | 102 | `result-track:b23befabd88bd511daf69323a2e56538816357df08488cc8325341ca4d580aa1` |
| 11 | `theorem` | [cast_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-add--6bf8b75e54ee477dcff91387.md) | 105 | `result-track:6bf8b75e54ee477dcff91387636dac02bcd4dcaffa626b7c373d404c73d7f2ad` |
| 12 | `theorem` | [cast_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-sub--e95fb4b2850166f32ea40c88.md) | 118 | `result-track:e95fb4b2850166f32ea40c88b8299f800c386e2c49a5e0fa8fea6c92152bd780` |
| 13 | `theorem` | [cast_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-two--97d7395a67b948ab3adc7b78.md) | 122 | `result-track:97d7395a67b948ab3adc7b78273a478335ffcc00c274595fafd231ff32158cbe` |
| 14 | `theorem` | [cast_three](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-three--6ea8eaf72180d7b0c9024aeb.md) | 124 | `result-track:6ea8eaf72180d7b0c9024aebec21301598d3f8c2b05ff265c294f96249fee4d2` |
| 15 | `theorem` | [cast_four](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/cast-four--65efb25f2c787a4f00a65450.md) | 126 | `result-track:65efb25f2c787a4f00a6545027c919d68ea4e238d934afabfb66acb56ca1c11e` |
| 16 | `lemma` | [zsmul_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant2b7c7551c5f6019d02f7d29bcaf566123ff86ce1ff07cbf488105256488e8d6c.lean/declarations/zsmul-one--15e1c0989be989a01b60ada3.md) | 134 | `result-track:15e1c0989be989a01b60ada369e525669891c89d7a9e3d2d4799012c7125169d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
