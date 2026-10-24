# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDSharpDivisibilityTail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2642927ce9edc1680b15c445153abd720c29efed",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2642927ce9edc1680b15c445153abd720c29efed`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDRestrictedMobiusLog`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDLargeMobiusTailIncidence`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTailDivisorBlock](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/centeredtaildivisorblock--497d0a4b630ccd0210787c45.md) | 32 | `declaration-track:497d0a4b630ccd0210787c453bfb34d205f152b2386c0a1a1c334e4e35b637e8` |
| 2 | `def` | [divisibleOctaveIndexSet](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/divisibleoctaveindexset--005e3823e46f0600762864c3.md) | 38 | `declaration-track:005e3823e46f0600762864c342de4a28170e9cdb3372077c4e001abbf55c12e7` |
| 3 | `theorem` | [mem_divisibleOctaveIndexSet_iff](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/mem-divisibleoctaveindexset-iff--c3132a06cc285d19995d2caa.md) | 43 | `result-track:c3132a06cc285d19995d2caa950b4d806ba0bcca4bbf3d7d48dca8f0ef0fc4ba` |
| 4 | `theorem` | [centeredDivisibilityTail_eq_weighted_divisorBlocks](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/centereddivisibilitytail-eq-weighted-divisorblocks--e4324dea7222c4602c8e32cc.md) | 50 | `result-track:e4324dea7222c4602c8e32cc614ff7e30c2b43ff443a41504c5ee9ee560737ad` |
| 5 | `def` | [positiveMulEmbedding](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/positivemulembedding--61f076a9d52302a8d0587cb6.md) | 70 | `declaration-track:61f076a9d52302a8d0587cb6814ff068a8fbbaf77ff485229930d326cc72cbab` |
| 6 | `theorem` | [centeredTailDivisorBlock_eq_restrictedProductMobiusLogBlock](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/centeredtaildivisorblock-eq-restrictedproductmobiuslogblock--c5a6c72ebbc4d24a70a0a2bd.md) | 79 | `result-track:c5a6c72ebbc4d24a70a0a2bd7951ca99e1b10803ac9709b7fca68a7a3b350358` |
| 7 | `theorem` | [centeredTailDivisorBlock_eq_zero_of_not_dvd](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/centeredtaildivisorblock-eq-zero-of-not-dvd--82bdaef88722c431563a8017.md) | 135 | `result-track:82bdaef88722c431563a8017aef43b7e02ff05dfc956bf104e8e04b37169712a` |
| 8 | `theorem` | [centeredDivisibilityTail_eq_weighted_restrictedBlocks](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/centereddivisibilitytail-eq-weighted-restrictedblocks--63860c7277034f831db41f96.md) | 150 | `result-track:63860c7277034f831db41f966b2663de15d17182911590f04a7bea856364b08e` |
| 9 | `theorem` | [divisibleOctave_quotient_mapsTo](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/divisibleoctave-quotient-mapsto--1df1ff92462a4bf1c6e64125.md) | 169 | `result-track:1df1ff92462a4bf1c6e6412585b7b9bf3d383f1eba07f318dfec5f9fb72706db` |
| 10 | `theorem` | [divisibleOctave_quotient_injOn](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/divisibleoctave-quotient-injon--64d0a1aa1d85bcc6ae95a3ac.md) | 185 | `result-track:64d0a1aa1d85bcc6ae95a3ac58c739001c3523a79cbcadeb8100a6c2a7b964a9` |
| 11 | `theorem` | [divisibleOctaveIndexSet_card_le](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/divisibleoctaveindexset-card-le--0e40686ba4e12a81d3780fae.md) | 202 | `result-track:0e40686ba4e12a81d3780fae9a4de9a963f5afbb407b106e61a42d8cf950e325` |
| 12 | `theorem` | [abs_weighted_restrictedBlock_le_log_four_mul_scale](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/abs-weighted-restrictedblock-le-log-four-mul-scale--cc940c427cfa2cfac8409529.md) | 216 | `result-track:cc940c427cfa2cfac84095291471b0dead498401b1df84209cd835c2e63c875c` |
| 13 | `theorem` | [abs_centeredDivisibilityTail_le_quotient_mul_log](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/declarations/abs-centereddivisibilitytail-le-quotient-mul-log--bcad67de437c5f424e87cd07.md) | 255 | `result-track:bcad67de437c5f424e87cd0731a0a4577927d5d314d6ea1043c79a08b75acff2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
