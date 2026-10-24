# Verification target: GRWTSK.Algebra.Lattice.Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a041e0bd8e05ed901430f54ee90b7a7d2144335e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/index.md) · [Full source](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a041e0bd8e05ed901430f54ee90b7a7d2144335e`.

Source path: `GRWTSK/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/instance--98c0747c1fe95d10a80c57dd.md) | 43 | `declaration-track:98c0747c1fe95d10a80c57dd52ba5d6a24704287bda0159330a1296e4f9d0632` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/instance--12391a6dab42c6b567c5c752.md) | 46 | `declaration-track:12391a6dab42c6b567c5c7529255bc49eb559ece9ef151cdba9af6932954a4a5` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/instance--480127a4df6415f01c90c5a0.md) | 48 | `declaration-track:480127a4df6415f01c90c5a0ec9f57c941748c5e3e8655a095f8f7b7065822a3` |
| 4 | `theorem` | [eq_top_of_unit_mem](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/eq-top-of-unit-mem--47d3a5f441802bef07117b6c.md) | 51 | `result-track:47d3a5f441802bef07117b6c85abfb2df07b35ab41ba962d2bc07ecab187bef4` |
| 5 | `theorem` | [eq_top_of_isUnit_mem](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/eq-top-of-isunit-mem--2ea775d0081c1ccd10949727.md) | 58 | `result-track:2ea775d0081c1ccd109497272856a1aa1db6971a90bf87dea86435a9d22d3b2a` |
| 6 | `theorem` | [eq_top_iff_one](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/eq-top-iff-one--2abdb7c2c83c25fbed6823ba.md) | 62 | `result-track:2abdb7c2c83c25fbed6823ba34864ccaedd8dccfcaa6478b0d5cd0efce8a5d55` |
| 7 | `theorem` | [ne_top_iff_one](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/ne-top-iff-one--c446a435c56d0f40bb43d632.md) | 65 | `result-track:c446a435c56d0f40bb43d632483a2c6a07e09e93b19e5703e5ef26ab201fa606` |
| 8 | `theorem` | [mem_sup_left](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/mem-sup-left--816e40cf4be056bfe0f832a9.md) | 73 | `result-track:816e40cf4be056bfe0f832a92e4a1f0b4207bb40c4f6bf85a1f10f51cabdec04` |
| 9 | `theorem` | [mem_sup_right](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/mem-sup-right--8b8c1b29fad221f49efd6780.md) | 76 | `result-track:8b8c1b29fad221f49efd678017c234d6c81e0fa75fe34157d15ea1c8a6f08970` |
| 10 | `theorem` | [mem_iSup_of_mem](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/mem-isup-of-mem--a998dec896e9044ba4c5bb2c.md) | 79 | `result-track:a998dec896e9044ba4c5bb2ca841987f7a090ba9f501aa66531d890df5934117` |
| 11 | `theorem` | [mem_sSup_of_mem](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/mem-ssup-of-mem--3b59448228aba31e4a432e13.md) | 82 | `result-track:3b59448228aba31e4a432e131c70434c85862934047450a7b05fe3cb35ee3746` |
| 12 | `theorem` | [mem_sInf](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/mem-sinf--7d9bedf1ee9d5a62094dafab.md) | 86 | `result-track:7d9bedf1ee9d5a62094dafab10cffad5ea7d63370568deaf001a9e35862048d7` |
| 13 | `theorem` | [mem_inf](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/mem-inf--097dced7bd46ae3166cf608f.md) | 90 | `result-track:097dced7bd46ae3166cf608f17fe13613a21e95dedb2cfc22fedf31404271f0d` |
| 14 | `theorem` | [mem_iInf](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/mem-iinf--e6dce1637be6e2a79800d0a2.md) | 94 | `result-track:e6dce1637be6e2a79800d0a218ad9e45cf6a9f2c15b94d5dfaa60d347643b624` |
| 15 | `theorem` | [mem_bot](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/mem-bot--840418b852faf572e94c5177.md) | 98 | `result-track:840418b852faf572e94c5177e378b96d03c8ab7af2aeab024abe2534d4276b35` |
| 16 | `theorem` | [eq_bot_or_top](../../../../mathematics/Algebra/Lattice/Variant02f674c4f2edaa2fd21c617305c922cb0d6c3c3967305af0e15289a46d50d703.lean/declarations/eq-bot-or-top--f322ea22bba7a553f46e2adc.md) | 114 | `result-track:f322ea22bba7a553f46e2adc14c269db93e145e524f8d5a8d673fb040b389236` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
