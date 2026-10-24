# Verification target: GRWTSK.Analysis.ErrorBounds.RationalExpTrace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "875ba04830194bd422818d22a705a02d0cf197ff",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalExpTrace.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `875ba04830194bd422818d22a705a02d0cf197ff`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalExpTrace.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalExpTrace.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure`](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.List.GetD` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Range` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Trace](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/trace--d936c5a1d7d9ef6b86e0cbac.md) | 28 | `declaration-track:d936c5a1d7d9ef6b86e0cbac8eac174c9ae5500ca036c41be2479a90023b6218` |
| 2 | `def` | [valueAt](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/valueat--37ca5e7658ad4555cc70e103.md) | 35 | `declaration-track:37ca5e7658ad4555cc70e1038e4639d9185c5d75baa25608dbccf692b75d351e` |
| 3 | `def` | [radiusAt](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/radiusat--a869ccc06a4a0f165869ea04.md) | 36 | `declaration-track:a869ccc06a4a0f165869ea048cb3880153c2f20748b18c82be2397d5782ffcce` |
| 4 | `def` | [seedValue](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/seedvalue--38ec17c1edb9695c634e51ba.md) | 38 | `declaration-track:38ec17c1edb9695c634e51bacddd13c82fad155bb5e0179175ce3e1fc46d95a5` |
| 5 | `def` | [exactSquares](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/exactsquares--7c642befb59646aa48bfe4fc.md) | 42 | `declaration-track:7c642befb59646aa48bfe4fc35dd19d36309587603d1fc8c61b140a5f7139593` |
| 6 | `def` | [exactValue](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/exactvalue--a47cd2424e0fc09e5834d436.md) | 46 | `declaration-track:a47cd2424e0fc09e5834d436580c0aadbb886793779bbdb24ac722412d239cf9` |
| 7 | `def` | [exactTrace](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/exacttrace--075f1c08410ad3f62c872cd9.md) | 50 | `declaration-track:075f1c08410ad3f62c872cd96d3ed49aa61fb25f0860c51a8f42a2f7dfda337f` |
| 8 | `def` | [seedTail](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/seedtail--05f2e0f146b656197d7028ee.md) | 54 | `declaration-track:05f2e0f146b656197d7028eea254d11395133dcf79ce34f13c030b3787590821` |
| 9 | `def` | [propagate](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/propagate--d844bf5d06a9528235ff86e2.md) | 58 | `declaration-track:d844bf5d06a9528235ff86e277469a6635e25f83c4ffec230008f86bfd4fb188` |
| 10 | `def` | [outputRadius](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/outputradius--74f35954f3fb1f296a3908ee.md) | 62 | `declaration-track:74f35954f3fb1f296a3908ee3ed421d9941ad8ac960f5da00332e227166d4a3a` |
| 11 | `def` | [Valid](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/valid--0c4e335a6577f9978ab2c1cc.md) | 66 | `declaration-track:0c4e335a6577f9978ab2c1ccda8bdaf2a0fce527ae74c1bbe06737783935b943` |
| 12 | `instance` | [instDecidableValid](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/instdecidablevalid--029040a3c7a45d27b15f5562.md) | 77 | `declaration-track:029040a3c7a45d27b15f55620742c597df7d3ce56e2ee860c56bccf5b5e54a25` |
| 13 | `def` | [check](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/check--8c06bca13ae5bda6f1197571.md) | 83 | `declaration-track:8c06bca13ae5bda6f11975712112e1f3fa91d6b34a8939f57a172984db0da872` |
| 14 | `def` | [checkWithin](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/checkwithin--5c048a36ec772e0324e52165.md) | 87 | `declaration-track:5c048a36ec772e0324e521651da37d25206a7197b22756e279f8f5497f8d69b6` |
| 15 | `theorem` | [check_iff_valid](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/check-iff-valid--b64fbf37682bfe00719f06ae.md) | 90 | `result-track:b64fbf37682bfe00719f06aecc43b8a68c9d0159025457e21b0a87934cb3a0c4` |
| 16 | `theorem` | [checked_lengths](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/checked-lengths--66b1e227794a72ee350d0f00.md) | 94 | `result-track:66b1e227794a72ee350d0f00a35585682366961d1eab78273f4c02faa9ca2be7` |
| 17 | `theorem` | [toComplex_seedValue](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/tocomplex-seedvalue--1a2c646cdbb829760b6efe90.md) | 100 | `result-track:1a2c646cdbb829760b6efe90dd5c655f087695893b5e1f520562f19f55f7b6ae` |
| 18 | `theorem` | [toComplex_exactSquares](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/tocomplex-exactsquares--87af64d7cfbeaf04f6a03c3a.md) | 106 | `result-track:87af64d7cfbeaf04f6a03c3ab54b188213491c4199f8203d698fbcbc397ae756` |
| 19 | `theorem` | [toComplex_exactValue](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/tocomplex-exactvalue--88032ab7066dce2b4a716f61.md) | 113 | `result-track:88032ab7066dce2b4a716f6119bce57a6719d375b8f3b63fa2316054f3e1edb4` |
| 20 | `theorem` | [exactTrace_value](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/exacttrace-value--57d466687f0732cb6a2e9c5a.md) | 118 | `result-track:57d466687f0732cb6a2e9c5a57d8c556655f6eec0b8a5d92b3d366b943899a12` |
| 21 | `theorem` | [exactTrace_radius](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/exacttrace-radius--cc1a424b3e6fcb80d1a4fd65.md) | 125 | `result-track:cc1a424b3e6fcb80d1a4fd65bdb5225ec6c9605a547e62a7ad883779d75fc552` |
| 22 | `theorem` | [exactTrace_checked](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/exacttrace-checked--0d3fd6f32a1eb134edc99c31.md) | 130 | `result-track:0d3fd6f32a1eb134edc99c316224a5953a6f4af6a4cb5aa71dd4c115c5ddefdb` |
| 23 | `theorem` | [cast_seedTail](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/cast-seedtail--22f39b643d5b27a042927837.md) | 144 | `result-track:22f39b643d5b27a0429278379b7478b1399fecfd7910274d1be6feecffafb9b1` |
| 24 | `theorem` | [cast_propagate](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/cast-propagate--245132743b01324b181486be.md) | 149 | `result-track:245132743b01324b181486beeef388c9f2d4590551c1a2f0839ec2a3eea8d5f0` |
| 25 | `theorem` | [check_sound](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/check-sound--ced328f8747abde4b5427bbf.md) | 158 | `result-track:ced328f8747abde4b5427bbf017f4c6dd1447c264b05099e2d69e40b123298b4` |
| 26 | `theorem` | [checked_radius_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/checked-radius-nonneg--9d9f1fe478dd9eb436a6f4f0.md) | 186 | `result-track:9d9f1fe478dd9eb436a6f4f0b828a144471285d7578f55d7c53d01cee6c6b9c6` |
| 27 | `theorem` | [exactValue_error](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/exactvalue-error--ad04473416987ebb6a3b02d4.md) | 192 | `result-track:ad04473416987ebb6a3b02d448b6e27dc89d2530647124a1fc6af0dc295cf3b8` |
| 28 | `theorem` | [checkWithin_sound](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/checkwithin-sound--ae8abf2b1dc88a438af5daa3.md) | 201 | `result-track:ae8abf2b1dc88a438af5daa3d7cca19fdee2a72413378de9c6224392a3dff779` |
| 29 | `theorem` | [missing_values_rejected](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/missing-values-rejected--2b576a7eb7d18c08a7a10143.md) | 210 | `result-track:2b576a7eb7d18c08a7a10143d205038bc462fbbef02514cbd44840f44fc73e7b` |
| 30 | `theorem` | [missing_radii_rejected](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/missing-radii-rejected--3aced71735c2795f1283b1e9.md) | 216 | `result-track:3aced71735c2795f1283b1e975543ecf0e4798848d8752345fe711b4b9845098` |
| 31 | `def` | [negativeOneTrace](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/negativeonetrace--77f204bf8dc79dc58caf36f8.md) | 223 | `declaration-track:77f204bf8dc79dc58caf36f8c210ceb4f640cc46c8dab66326e969f79763f56c` |
| 32 | `theorem` | [negative_one_checked](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/negative-one-checked--888a058ba6e8cdc3dcf6202b.md) | 225 | `result-track:888a058ba6e8cdc3dcf6202b541a2592f8c9ee1e5e3c6426bd26135d9fbc9009` |
| 33 | `theorem` | [negative_one_enclosure](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/negative-one-enclosure--e417d5c0a0509baa1a63eda9.md) | 228 | `result-track:e417d5c0a0509baa1a63eda9c62c44258a38978966a328d621aee9ad828dc5de` |
| 34 | `theorem` | [wrong_input_rejected](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/wrong-input-rejected--e06f45679e0773505ba6b8e3.md) | 234 | `result-track:e06f45679e0773505ba6b8e3e7d7bce44b1890a98cfa2ce4c093b19ee76ef2ed` |
| 35 | `theorem` | [wrong_seed_rejected](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/wrong-seed-rejected--dde7621912e24527f9df2d90.md) | 237 | `result-track:dde7621912e24527f9df2d905212b7abe9daff31725176662b39075905a56011` |
| 36 | `theorem` | [wrong_square_rejected](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/wrong-square-rejected--b31f99c7be47174fb73a6fcc.md) | 241 | `result-track:b31f99c7be47174fb73a6fccfea3b54cf7d9def1ef1fdf3c9a2d0b2c33a789bb` |
| 37 | `theorem` | [rounded_trace_control](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/rounded-trace-control--59d5a80477f9fc44a592a538.md) | 245 | `result-track:59d5a80477f9fc44a592a538f2fd08eaa948388b035c1321d239cc928edaa41c` |
| 38 | `theorem` | [input_guards_rejected](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/input-guards-rejected--b6efc8a76c70b619f8b55ea8.md) | 252 | `result-track:b6efc8a76c70b619f8b55ea8c5422c56ed1ccace136a4a25dd6a154effc762f6` |
| 39 | `theorem` | [coarse_is_not_precise](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/coarse-is-not-precise--9caf66882a675458b67ec901.md) | 257 | `result-track:9caf66882a675458b67ec9010ade0685c4c9ec54aaeaf92c6112cf9380d74312` |
| 40 | `theorem` | [malformed_trace_rejected](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/declarations/malformed-trace-rejected--4af395211ee3ca5f16c6ff80.md) | 262 | `result-track:4af395211ee3ca5f16c6ff80e7197444f372c2c6ca6845718cd3828b62602a2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
