# Verification target: GRWTSK.Topology.GeneralTopology.LawfulFix.Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2bf4b33951d4b88242acef5f2a0f10e6967443c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2bf4b33951d4b88242acef5f2a0f10e6967443c`.

Source path: `GRWTSK/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Stream.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Fix` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OmegaCompletePartialOrder` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LawfulFix](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/lawfulfix--fb243f347a63d43bee074c9d.md) | 48 | `declaration-track:fb243f347a63d43bee074c9d46289b24a7fd49eba1d5850201421fd7e712c6a0` |
| 2 | `theorem` | [LawfulFix.fix_eq'](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/lawfulfix-fix-eq--9cfa827cb6a2af4609ebe318.md) | 52 | `result-track:9cfa827cb6a2af4609ebe31816ded6e9ec772e40e3209735b5379e06d1e394c6` |
| 3 | `theorem` | [approx_mono'](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/approx-mono--c91a57107363bd38e3e15665.md) | 65 | `result-track:c91a57107363bd38e3e156651638c2dbca00e3fdfde57249b3d1943af4b03d96` |
| 4 | `theorem` | [approx_mono](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/approx-mono--75776529a78925d7f0ce1968.md) | 71 | `result-track:75776529a78925d7f0ce1968d694d8c82357c16108bf8e27f6ab2e1002ef6805` |
| 5 | `theorem` | [mem_iff](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/mem-iff--e51455182814d602657c4561.md) | 79 | `result-track:e51455182814d602657c456161d147c15e6d4677d4ed672346e3d91afd1c6b52` |
| 6 | `theorem` | [approx_le_fix](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/approx-le-fix--c538c86c622b4e5558c90625.md) | 102 | `result-track:c538c86c622b4e5558c906258575a98d30eb4f346ceea2f412d71945cce2d37d` |
| 7 | `theorem` | [exists_fix_le_approx](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/exists-fix-le-approx--174b8fe9fa7afa81e635afa5.md) | 107 | `result-track:174b8fe9fa7afa81e635afa5178939bca240a3b9f0906c2f0bd1f02c36f46216` |
| 8 | `def` | [approxChain](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/approxchain--1d1e86ccf3308392871bd9e4.md) | 124 | `declaration-track:1d1e86ccf3308392871bd9e4b77729c10e8ec2544640dc6afbe896824d908d2a` |
| 9 | `theorem` | [le_f_of_mem_approx](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/le-f-of-mem-approx--a6d79501fbbab51482f0f8c3.md) | 128 | `result-track:a6d79501fbbab51482f0f8c3731bcf60d96910087e25ac7c6ef5ff3c9c8497ec` |
| 10 | `theorem` | [approx_mem_approxChain](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/approx-mem-approxchain--628742e1d92aef206752318e.md) | 134 | `result-track:628742e1d92aef206752318e8528eac307038a30f5283ddfbf0fc53154457190` |
| 11 | `theorem` | [fix_eq_ωSup](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/fix-eq-sup--0368634aab752daa682fb873.md) | 154 | `result-track:0368634aab752daa682fb873f6e1478257b43911275ad34671d9b180805d8d9d` |
| 12 | `theorem` | [fix_le](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/fix-le--5395a0e38a3c94540c639a31.md) | 171 | `result-track:5395a0e38a3c94540c639a3196f2d6ab496e72c17c33ae2bee0e072685987256` |
| 13 | `theorem` | [fix_eq](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/fix-eq--753b69f2281cf9eb2cf879a1.md) | 183 | `result-track:753b69f2281cf9eb2cf879a12113e872bac06bd08039ab20a3b9fff99f0435dc` |
| 14 | `def` | [toUnitMono](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/tounitmono--7f3f6276a7d4acfde486bd33.md) | 203 | `declaration-track:7f3f6276a7d4acfde486bd33e50fc7e01b1f515fa9bd5f212831ca3c0ea5e0b7` |
| 15 | `theorem` | [to_unit_cont](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/to-unit-cont--279b7faba8004fa22e477b52.md) | 208 | `result-track:279b7faba8004fa22e477b52a3466d19705ee67b2b098f71808d36b939407d78` |
| 16 | `instance` | [lawfulFix](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/lawfulfix--c4797cc51cf03cfec1b58014.md) | 215 | `declaration-track:c4797cc51cf03cfec1b5801452b73323b5e51c158aac04714ed3b3b8522fbd4b` |
| 17 | `instance` | [lawfulFix](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/lawfulfix--cb7b6d1f5a97958194f2d0ea.md) | 226 | `declaration-track:cb7b6d1f5a97958194f2d0eafd436ed5398e3b31c484a34003522ccdcdf5df47` |
| 18 | `def` | [monotoneCurry](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/monotonecurry--f3105c5031977483e7cf02d9.md) | 238 | `declaration-track:f3105c5031977483e7cf02d94956acc59d931bde7354eba0a0a7029db3904645` |
| 19 | `def` | [monotoneUncurry](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/monotoneuncurry--d695a071a100afefa063aaf5.md) | 246 | `declaration-track:d695a071a100afefa063aaf523622aa62237ab265d5440d30b0b95bf60050b91` |
| 20 | `theorem` | [continuous_curry](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/continuous-curry--00acbef4d3b6308e1a5b7f4f.md) | 256 | `result-track:00acbef4d3b6308e1a5b7f4f4fcd4aace94a1780e339dbfbc2635d17c4e8409d` |
| 21 | `theorem` | [continuous_uncurry](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/continuous-uncurry--bea51cb78870b31cdc1ff8dd.md) | 263 | `result-track:bea51cb78870b31cdc1ff8dd187609b5348e4db771bc4ae3eea2fc7246b96f0b` |
| 22 | `instance` | [hasFix](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/hasfix--b2d45073c1e7e24864622e29.md) | 274 | `declaration-track:b2d45073c1e7e24864622e2911ab37690e3b8640d79ab80dff78fd7a4a596008` |
| 23 | `theorem` | [uncurry_curry_continuous](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/uncurry-curry-continuous--999567e43a1fbb8323054e5c.md) | 286 | `result-track:999567e43a1fbb8323054e5c4a3836f4b08861f921d6bf00e16df8735deeb1fb` |
| 24 | `instance` | [Pi.lawfulFix'](../../../../../mathematics/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/declarations/pi-lawfulfix--ce459bda9d5c706fd8a97302.md) | 293 | `declaration-track:ce459bda9d5c706fd8a9730254c39cd064f1eb6177104f5a85856b9033c87c33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
