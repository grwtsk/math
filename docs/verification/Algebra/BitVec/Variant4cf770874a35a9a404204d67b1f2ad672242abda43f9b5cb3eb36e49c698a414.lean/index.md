# Verification target: GRWTSK.Algebra.BitVec.Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d9f02965a368b379faa62775cbe904e0e612bef",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/index.md) · [Full source](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d9f02965a368b379faa62775cbe904e0e612bef`.

Source path: `GRWTSK/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.InjSurj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toNat_injective](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/tonat-injective--0acc5ac7ffc8cad6f3f9149e.md) | 36 | `result-track:0acc5ac7ffc8cad6f3f9149eb0d70b8dd87ea629e4bd2633b92d170129e508c6` |
| 2 | `theorem` | [toFin_injective](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/tofin-injective--fc9a314823587efb05563553.md) | 39 | `result-track:fc9a314823587efb05563553b03b14e2b23f5e5d7d0210ab0d70f37f895bb103` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/instance--a0c7222530f6bbc0213370c9.md) | 47 | `declaration-track:a0c7222530f6bbc0213370c915289fe47331101daf9a0d817cd61e0bb9a483a5` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/instance--0279f4c74eb0c2dbb3c90b53.md) | 48 | `declaration-track:0279f4c74eb0c2dbb3c90b53f2ede4f057fc668842b898f2b74a69d747b9a31c` |
| 5 | `lemma` | [toFin_nsmul](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/tofin-nsmul--af04cdc28c5578b72bbe74fb.md) | 49 | `result-track:af04cdc28c5578b72bbe74fb38cf8981fb51acd935baf9f503e2366fe3b1b770` |
| 6 | `lemma` | [toFin_zsmul](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/tofin-zsmul--86c99a73685c6efa7e921824.md) | 50 | `result-track:86c99a73685c6efa7e92182486a1143c4103a322ab055da6b4b112f5f292790b` |
| 7 | `lemma` | [toFin_pow](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/tofin-pow--2e6a9d2fa6ff12b680ffb747.md) | 51 | `result-track:2e6a9d2fa6ff12b680ffb74762de11efc52b0f2eb11235dc8890482df3588d08` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/instance--b145bf367ac465f85f1d44bb.md) | 60 | `declaration-track:b145bf367ac465f85f1d44bb5d9f9ad7deef31a4ef634e84d08dac65ce9e942c` |
| 9 | `lemma` | [ofFin_neg](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/offin-neg--3aafffcf71b9c5e887c433c5.md) | 71 | `result-track:3aafffcf71b9c5e887c433c52639cd796af4adef1ec37cbb0f47479cfe3b28dd` |
| 10 | `lemma` | [ofFin_natCast](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/offin-natcast--904c15e4f2f68d5e94b4deb3.md) | 74 | `result-track:904c15e4f2f68d5e94b4deb3d1645036c195cc4a65785204df3c2b4f00ccb045` |
| 11 | `lemma` | [toFin_natCast](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/tofin-natcast--b06b86345e78477b1501a25f.md) | 77 | `result-track:b06b86345e78477b1501a25fbd39809d40d2ecbf35dfce73c36fe2ca64a7cb1d` |
| 12 | `theorem` | [ofFin_intCast](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/offin-intcast--3683dc10a1b9e0cc4b3bebd7.md) | 80 | `result-track:3683dc10a1b9e0cc4b3bebd73b1cb4398a8a4c7386dfd0eefce2865f57930f8b` |
| 13 | `theorem` | [toFin_intCast](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/tofin-intcast--430222581df500eaba357148.md) | 94 | `result-track:430222581df500eaba35714830ad28309135209bc10b1520c5468740892c996e` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/instance--838af91629104f9a97ee20ca.md) | 97 | `declaration-track:838af91629104f9a97ee20ca75f8c8b73fc231e1563c403fdec21d8b294ccf9d` |
| 15 | `def` | [equivFin](../../../../mathematics/Algebra/BitVec/Variant4cf770874a35a9a404204d67b1f2ad672242abda43f9b5cb3eb36e49c698a414.lean/declarations/equivfin--128bd362312193e1ff3e4b41.md) | 104 | `declaration-track:128bd362312193e1ff3e4b411590cd2a4f93c9e76fc236667983e8b6fa8edacc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
