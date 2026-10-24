# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22180ea94b9759320485c9c0573a7570ddee988c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22180ea94b9759320485c9c0573a7570ddee988c`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.CompleteLattice` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mono_outerMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/mono-outermeasure--53dc845c85d5e7cca217019c.md) | 16 | `result-track:53dc845c85d5e7cca217019c652243d43835609a4254b7afc5bcaff1f94c26cb` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/example--49a00f046fd9543252e41bc7.md) | 17 | `declaration-track:49a00f046fd9543252e41bc73734cd40a9e79ccae00115e8269d613adbd53b07` |
| 3 | `lemma` | [mono_measure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/mono-measure--996501e936bcef8072a7e686.md) | 21 | `result-track:996501e936bcef8072a7e68642dce6dadf57ba69935f328562aea43471368790` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/example--686b89ef3b1a4bcb5e7ebd43.md) | 22 | `declaration-track:686b89ef3b1a4bcb5e7ebd43bfae8542ecdc547eea78e9a7cf277f8c57681bd7` |
| 5 | `axiom` | [myAdd](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/myadd--e0aefc84c3bda34ae43a2625.md) | 32 | `declaration-track:e0aefc84c3bda34ae43a2625757f7a6c9d843bc17b2800ae2afc7f44ff81935d` |
| 6 | `axiom` | [rel](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/rel--3d32d44e7b1c3933b370ac37.md) | 34 | `declaration-track:3d32d44e7b1c3933b370ac37023e454d8ac75a759bc5c54f9b6c718329f3e236` |
| 7 | `axiom` | [myAdd_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/myadd-mono--7d8fe51d89edf89aff3b6af4.md) | 40 | `declaration-track:7d8fe51d89edf89aff3b6af4a88e012558469dc58ddfdb5e6dd69f137efa3c3f` |
| 8 | `axiom` | [myAdd_rfl](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/myadd-rfl--44b00673cc96321ac4f41699.md) | 42 | `declaration-track:44b00673cc96321ac4f416990b4be7474402c7d8ee2fee795c11a994b99fc439` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/example--389db5accd1e75a0624d65a7.md) | 57 | `declaration-track:389db5accd1e75a0624d65a71efc0194a37b887ccb4f72c3a8eca73e24f4fda3` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/example--a9bbee6843a6a196f6840d39.md) | 69 | `declaration-track:a9bbee6843a6a196f6840d397211a3d2cdc969be5d4d0573d114455d70be6672` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/example--5d3e4d6390b89ce33adeebc7.md) | 74 | `declaration-track:5d3e4d6390b89ce33adeebc7c9b230e0ccc9a0c8f95af16b36f66de3f360dbb9` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/example--72491b4121ca4f8fc8811733.md) | 77 | `declaration-track:72491b4121ca4f8fc88117336c6d0abedf34d126ded0a714f8e4c7421f04fa15` |
| 13 | `axiom` | [foo](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/foo--640d8a784b7406321779e0d8.md) | 84 | `declaration-track:640d8a784b7406321779e0d8d41cc28af18aaefd091f04b4a05e2cafd52af07e` |
| 14 | `axiom` | [foo_mono_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/foo-mono-iff--5b3a2b6274455eed5ae314c9.md) | 86 | `declaration-track:5b3a2b6274455eed5ae314c911b7a7042484f4def5e4db2c7eca2522fd02c84f` |
| 15 | `axiom` | [foo_mono_iff_rev](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/foo-mono-iff-rev--bae4ec0096dff40ad549f9e9.md) | 89 | `declaration-track:bae4ec0096dff40ad549f9e9145a1fc941731daacf3b3e42d318fbb65e296448` |
| 16 | `axiom` | [foo_monotone](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/foo-monotone--3384e047cabaa9ab264d89e9.md) | 92 | `declaration-track:3384e047cabaa9ab264d89e9caeefd6382148a119386e0e373cf9e187d1ab4f8` |
| 17 | `axiom` | [foo_mono_rev](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91.lean/declarations/foo-mono-rev--c21c58f477bd5d037151dd31.md) | 95 | `declaration-track:c21c58f477bd5d037151dd31d40a6434f2929649a115ab40a75ba3a2d4c661f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
