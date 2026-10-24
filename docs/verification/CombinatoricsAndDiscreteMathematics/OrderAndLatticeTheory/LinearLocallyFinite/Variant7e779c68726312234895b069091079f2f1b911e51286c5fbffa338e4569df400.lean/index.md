# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LinearLocallyFinite.Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06205b18fd676a36811ea3165dd7b9c346f9fa41",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06205b18fd676a36811ea3165dd7b9c346f9fa41`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.LocallyFinite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [succFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/succfn--cf7cf0a66628c7f132f58390.md) | 73 | `declaration-track:cf7cf0a66628c7f132f58390ad3b351649b682b49a62e7c51cd3de6e912760bc` |
| 2 | `theorem` | [succFn_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/succfn-spec--b05863adf501ab9e58729074.md) | 77 | `result-track:b05863adf501ab9e587290740ed04a3f4ae829e2373c0a0f94357c39f5e4ac60` |
| 3 | `theorem` | [le_succFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/le-succfn--c0fdb8fa30de739bf5feb113.md) | 81 | `result-track:c0fdb8fa30de739bf5feb1135cd447200db768e3e900fc20100272f24426cd5e` |
| 4 | `theorem` | [isGLB_Ioc_of_isGLB_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/isglb-ioc-of-isglb-ioi--c3e279157ee12bc72b2c0ef1.md) | 86 | `result-track:c3e279157ee12bc72b2c0ef1e43e1f27f0735256c30cbfe78a33b82799b435a7` |
| 5 | `theorem` | [isMax_of_succFn_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/ismax-of-succfn-le--a3735ebe73a99dca470dd71b.md) | 96 | `result-track:a3735ebe73a99dca470dd71b106973df4041db7ae28a316505a1f2555c186460` |
| 6 | `theorem` | [succFn_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/succfn-le-of-lt--60d7f862d86f2911a5a1dbdc.md) | 111 | `result-track:60d7f862d86f2911a5a1dbdcc62fc8fe1735cbe350f33f6e1475ea6b2bd88eb3` |
| 7 | `theorem` | [le_of_lt_succFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/le-of-lt-succfn--b5143bb26573427a89f37981.md) | 117 | `result-track:b5143bb26573427a89f379818daf728f32aac188c9e840596024a8b278ab3b08` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/instance--48d6cce1b7a1872560f0737e.md) | 124 | `declaration-track:48d6cce1b7a1872560f0737e509045c5d6dc3f15f4d5e93f4219d21e253cd479` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/instance--6e3349dd2782b299bddb7754.md) | 131 | `declaration-track:6e3349dd2782b299bddb7754a508af6b0503a51edc0bf59fd55946ac75118e89` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/instance--6138e58de661617a82bfc091.md) | 136 | `declaration-track:6138e58de661617a82bfc09100e3a4c8e1aff9080b5d5ae527b198e9aa4a616b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/instance--d46e48e2c50367362d38b8c8.md) | 168 | `declaration-track:d46e48e2c50367362d38b8c80af5a9468cd735b4735c172b8e825a1c5c8a9c01` |
| 12 | `def` | [toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz--d54ead22a3eb2343920ecfe4.md) | 200 | `declaration-track:d54ead22a3eb2343920ecfe45f9c41084948cebfafb3e6d564178c4cc86d9cdd` |
| 13 | `theorem` | [toZ_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-of-ge--bfe31ee843bce28587f1a7e4.md) | 205 | `result-track:bfe31ee843bce28587f1a7e432782cc438a0ff18cb8df3802e39f2764f0bcedb` |
| 14 | `theorem` | [toZ_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-of-lt--1ce2175e1c830685231f965b.md) | 209 | `result-track:1ce2175e1c830685231f965b3e3bfa5d901c9aae1e3c0e9881fd43379b1c58f2` |
| 15 | `theorem` | [toZ_of_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-of-eq--4ca3c11265990657fafce979.md) | 214 | `result-track:4ca3c11265990657fafce979a001974305b0cae43b17a3d43c5194b4f3d43569` |
| 16 | `theorem` | [iterate_succ_toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/iterate-succ-toz--28453a36799230e81ee2303e.md) | 221 | `result-track:28453a36799230e81ee2303e36406f95ed5ff4d04ca2f06a18648e2809ace429` |
| 17 | `theorem` | [iterate_pred_toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/iterate-pred-toz--4f142a869b55841113acf4f1.md) | 226 | `result-track:4f142a869b55841113acf4f1e067d07ac65064ff9ea8126687de5e8a6315d4a4` |
| 18 | `theorem` | [toZ_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-nonneg--dcffd5e23562b78b47c14d53.md) | 231 | `result-track:dcffd5e23562b78b47c14d534787d842c7c091ac28edfe520489a53679ec3b7a` |
| 19 | `theorem` | [toZ_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-neg--bf5c3d9ba50bb4fcef6639de.md) | 236 | `result-track:bf5c3d9ba50bb4fcef6639defe6712ca3b1e7de1facfaaa4c9907576c71b8874` |
| 20 | `theorem` | [toZ_iterate_succ_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-iterate-succ-le--ce15a12852eb293bf238769d.md) | 246 | `result-track:ce15a12852eb293bf238769d1201ba09a744dcf41a68e9e7bcbdb924713ea968` |
| 21 | `theorem` | [toZ_iterate_pred_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-iterate-pred-ge--1f23d6b598341a24bd8c23f0.md) | 252 | `result-track:1f23d6b598341a24bd8c23f0b74c0572e62fa78b823f9cfef0002665a8fb056f` |
| 22 | `theorem` | [toZ_iterate_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-iterate-succ-of-not-ismax--f87ad90bae72a1f6cddeb460.md) | 262 | `result-track:f87ad90bae72a1f6cddeb460a4d0df662f6b8e63f8ed2a65f20ba94bb2c98d6b` |
| 23 | `theorem` | [toZ_iterate_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-iterate-pred-of-not-ismin--9922abcbbbfa5bac483bd8ef.md) | 274 | `result-track:9922abcbbbfa5bac483bd8ef6a5e31c0e1455f9d0c45f182909475f3ff8a997f` |
| 24 | `theorem` | [le_of_toZ_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/le-of-toz-le--c34e2352f263dd6993390a9e.md) | 295 | `result-track:c34e2352f263dd6993390a9e355f89e2be453985a36426c286f2154f65bd39e4` |
| 25 | `theorem` | [toZ_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-mono--37e89957664a2bc7dbe03b95.md) | 306 | `result-track:37e89957664a2bc7dbe03b95ecee8fde2b064893893e083ed1d60b266b8883ab` |
| 26 | `theorem` | [toZ_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-le-iff--b8619f797e2ac9fdcbe6b4d4.md) | 355 | `result-track:b8619f797e2ac9fdcbe6b4d408e0c0552ff11b93e44187e80ee651fb63cfb6c3` |
| 27 | `theorem` | [toZ_iterate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-iterate-succ--984a649376d5b4506ea4eeed.md) | 359 | `result-track:984a649376d5b4506ea4eeed86b10417a0a9ca65f2e1f43589db25957320d0ad` |
| 28 | `theorem` | [toZ_iterate_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/toz-iterate-pred--d22b276270b056fc5d0d7f6d.md) | 363 | `result-track:d22b276270b056fc5d0d7f6d8d0aa8a548ae95150e9fe6f732cf8039821e091f` |
| 29 | `theorem` | [injective_toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/injective-toz--cafaa0c0d3f4e4c2045980a0.md) | 367 | `result-track:cafaa0c0d3f4e4c2045980a0bea42af8788af4f748a69d252fc429005604ce25` |
| 30 | `def` | [orderIsoRangeToZOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/orderisorangetozoflinearsuccpredarch--ac45dfe4522b2d1a43450de9.md) | 378 | `declaration-track:ac45dfe4522b2d1a43450de992e45b8ae4444c1a8b3978fd2a51eeb2122504e2` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/instance--0cdf5dab11baec6fa4c5075a.md) | 385 | `declaration-track:0cdf5dab11baec6fa4c5075a1053bf7954a6ca783767591b6e1740d71276aef0` |
| 32 | `def` | [orderIsoIntOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/orderisointoflinearsuccpredarch--5a220294f6ee48f9a3e6fa1a.md) | 392 | `declaration-track:5a220294f6ee48f9a3e6fa1ae8298d7307c711b290d958ad1c9e14cff2c0e8e8` |
| 33 | `def` | [orderIsoNatOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/orderisonatoflinearsuccpredarch--33098e771f0ffccfab9fd84c.md) | 416 | `declaration-track:33098e771f0ffccfab9fd84c15d90c55c79f8a0e77f8c2da86fa217cb821d653` |
| 34 | `def` | [orderIsoRangeOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/declarations/orderisorangeoflinearsuccpredarch--2a63dcd0f445486a9cede706.md) | 434 | `declaration-track:2a63dcd0f445486a9cede7060f1ba277bdf2670a7dbd1925983a998bd5de343e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
