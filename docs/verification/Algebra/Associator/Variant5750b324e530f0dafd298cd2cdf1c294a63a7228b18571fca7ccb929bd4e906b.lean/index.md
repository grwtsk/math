# Verification target: GRWTSK.Algebra.Associator.Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fbed9a3a019b61212e740f92fa8c0b7b0a955fe",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fbed9a3a019b61212e740f92fa8c0b7b0a955fe`.

Source path: `GRWTSK/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [associator](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/associator--16ff80b3bd9b905606fed4c6.md) | 28 | `declaration-track:16ff80b3bd9b905606fed4c63a27c245f1e88cb7c3b24ab1bf21c6724a02d55f` |
| 2 | `theorem` | [associator_apply](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/associator-apply--8debea0812be8d334dc3e13c.md) | 30 | `result-track:8debea0812be8d334dc3e13c9e7e8be7460213bcb217e8dc40f059b9e85c3fee` |
| 3 | `theorem` | [associator_eq_zero_iff_associative](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/associator-eq-zero-iff-associative--9fa32f32f7a8172ed17119b5.md) | 32 | `result-track:9fa32f32f7a8172ed17119b5afb61aa6cd7797ad3804be628fc5df7084e0f285` |
| 4 | `theorem` | [associator_cocycle](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/associator-cocycle--ce93c2c28e7157637fb54304.md) | 37 | `result-track:ce93c2c28e7157637fb54304b252f5e7cfa25a2d6a5cbbedd71c813b71ba602a` |
| 5 | `theorem` | [associator_eq_zero](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/associator-eq-zero--1c1c2cee353f3d444bd34819.md) | 49 | `result-track:1c1c2cee353f3d444bd348193d611144b17026b4efdbcc86f5b1190fe78ddae3` |
| 6 | `def` | [mulLeft₃](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/mulleft--c574f5222efc902f6033453a.md) | 62 | `declaration-track:c574f5222efc902f6033453a07a91c3914e9641cbb0896e651e374db8c7f59f5` |
| 7 | `theorem` | [mulLeft₃_apply](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/mulleft-apply--56f4459fdaf506b835eb7078.md) | 68 | `result-track:56f4459fdaf506b835eb7078e9a857844487c08079bb8e2de3b6be24ad742f38` |
| 8 | `def` | [mulRight₃](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/mulright--92fa7e2f202563645eeedac8.md) | 72 | `declaration-track:92fa7e2f202563645eeedac8ca486729ca69ccf59764b3e0aafedbcfefec9163` |
| 9 | `theorem` | [mulRight₃_apply](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/mulright-apply--da29af81d133805cfcad41aa.md) | 78 | `result-track:da29af81d133805cfcad41aa6ea5a434609749e6da18c99f4bd49c699b1160ab` |
| 10 | `theorem` | [mulLeft₃_eq_mulRight₃_iff_associative](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/mulleft-eq-mulright-iff-associative--e221f9ac4aa671c055f67cbf.md) | 82 | `result-track:e221f9ac4aa671c055f67cbfb46e4e45f79bfa652993e5b2b18b9a265e8b3141` |
| 11 | `theorem` | [mulLeft₃_eq_mulRight₃](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/mulleft-eq-mulright--8754cd3836b7315e001ca114.md) | 92 | `result-track:8754cd3836b7315e001ca114073110d4a9b2cecde7a172a44281554f07943b23` |
| 12 | `def` | [associator](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/associator--c63473d9f6158545b1fd2100.md) | 102 | `declaration-track:c63473d9f6158545b1fd21001972834b16751262bf027a113882f3b524d992c7` |
| 13 | `theorem` | [associator_apply](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/associator-apply--59b00303f62625bb35172010.md) | 105 | `result-track:59b00303f62625bb35172010b4aafbf37b0af6bcb41bd1847e591180095b0789` |
| 14 | `theorem` | [associator_eq_zero_iff_associative](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/associator-eq-zero-iff-associative--db71844c3c04cc65fcc840f7.md) | 109 | `result-track:db71844c3c04cc65fcc840f70efef5cf7500009a257824cfea5bf6fd774b3d42` |
| 15 | `theorem` | [associator_eq_zero](../../../../mathematics/Algebra/Associator/Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.lean/declarations/associator-eq-zero--0de0b4a10f9b714ed8c14629.md) | 119 | `result-track:0de0b4a10f9b714ed8c14629ca2e8c23e2fb4960adb388b0b33bbe7315d92588` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
