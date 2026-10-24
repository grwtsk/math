# Verification target: GRWTSK.Algebra.Cone.Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72ac2d34038dbab95ab4e95b8666bad4264b6f1d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72ac2d34038dbab95ab4e95b8666bad4264b6f1d`.

Source path: `GRWTSK/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Cone` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Order` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RingConeClass](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/declarations/ringconeclass--a63f52029711d9661c084d24.md) | 29 | `declaration-track:a63f52029711d9661c084d24f1e6af4204630dc7896f9b56ab1e38aa1162f994` |
| 2 | `structure` | [RingCone](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/declarations/ringcone--8f47d11560e249ef93118836.md) | 36 | `declaration-track:8f47d11560e249ef93118836b3d7d23cd4d06663729771cfc8c935b40fe7047d` |
| 3 | `instance` | [RingCone.instSetLike](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/declarations/ringcone-instsetlike--80fa155cc5e76a63864674ec.md) | 41 | `declaration-track:80fa155cc5e76a63864674ecdae5744e515c42d8d6caf94aa98daea07ae91153` |
| 4 | `instance` | [RingCone.instRingConeClass](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/declarations/ringcone-instringconeclass--a5a7fd93f1d01dab9e9c6c81.md) | 45 | `declaration-track:a5a7fd93f1d01dab9e9c6c81b14f004c1295c334d413698b04528d3fcbea8a9c` |
| 5 | `def` | [nonneg](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/declarations/nonneg--d93d0121d4e70d597ef47a0c.md) | 59 | `declaration-track:d93d0121d4e70d597ef47a0c0649ea5f37288e7f612b5319bea19a97feefa42c` |
| 6 | `lemma` | [nonneg_toSubsemiring](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/declarations/nonneg-tosubsemiring--d95500b8f28701e84dcd533d.md) | 63 | `result-track:d95500b8f28701e84dcd533daa00471a7c5b81c1e21e3f0cdc806431e8cba912` |
| 7 | `lemma` | [nonneg_toAddGroupCone](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/declarations/nonneg-toaddgroupcone--eaeb60f31fa89911bf43766b.md) | 64 | `result-track:eaeb60f31fa89911bf43766b44f16f11546009ff7590a289548b88ceedef6049` |
| 8 | `lemma` | [mem_nonneg](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/declarations/mem-nonneg--28248a8fde5dfb5de7f8f6cf.md) | 65 | `result-track:28248a8fde5dfb5de7f8f6cf982245e05f1b7c62a939addde166810c6af277db` |
| 9 | `lemma` | [coe_nonneg](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/declarations/coe-nonneg--201188aef822c7f5c3c157ce.md) | 66 | `result-track:201188aef822c7f5c3c157ce4957535f76d76bab37bc88f620558f88634a2a34` |
| 10 | `instance` | [nonneg.isMaxCone](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/declarations/nonneg-ismaxcone--20f3db2c7b6ed0ba14969f3f.md) | 68 | `declaration-track:20f3db2c7b6ed0ba14969f3faa17eed2a41af1d5f4f39164e17bfae0772f7be7` |
| 11 | `lemma` | [IsOrderedRing.mkOfCone](../../../../mathematics/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/declarations/isorderedring-mkofcone--20452d116ffad14e3626a08d.md) | 77 | `result-track:20452d116ffad14e3626a08d7542041224305fde52bee89e8556feb93a774e5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
