# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Functions.Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36046a297dc7d6c498c9c3b851fb473f7714c06b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36046a297dc7d6c498c9c3b851fb473f7714c06b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Range` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sigma` — import line 9; external provider; requires a separately pinned dependency.
- `Plausible.Functions` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [apply_eq_dlookup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/apply-eq-dlookup--a9d3e228b9f30ea371c034c6.md) | 60 | `result-track:a9d3e228b9f30ea371c034c6747ccafc13cf30a5549236c8d555db0c315694b0` |
| 2 | `def` | [zeroDefault](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/zerodefault--c08827d5bffb6aa57bc332b1.md) | 79 | `declaration-track:c08827d5bffb6aa57bc332b16454607c996b0c496ea4b5e5417626ef2ab407ef` |
| 3 | `def` | [zeroDefaultSupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/zerodefaultsupp--e0817e9ef89bf9fbc2d2bbb3.md) | 84 | `declaration-track:e0817e9ef89bf9fbc2d2bbb3bc94014b1d24809ee5bd0826905d9c94fc8acab7` |
| 4 | `def` | [applyFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/applyfinsupp--db142b122d4076d7ab95f82b.md) | 90 | `declaration-track:db142b122d4076d7ab95f82be8174a1c9ce9ed94efddf336b0d8526be872ef6f` |
| 5 | `instance` | [Finsupp.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/finsupp-sampleableext--3834dd296936d9e55cf32140.md) | 115 | `declaration-track:3834dd296936d9e55cf321401906556c82e09639711d028b37c8ff755828c3a0` |
| 6 | `instance` | [DFinsupp.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/dfinsupp-sampleableext--bb3a745c6b9795835892833a.md) | 123 | `declaration-track:bb3a745c6b9795835892833a1bb2a2f4283173b196c19ad5a558fbea00bd7e41` |
| 7 | `inductive` | [InjectiveFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/injectivefunction--467a6f7be289c4ac65784d88.md) | 145 | `declaration-track:467a6f7be289c4ac65784d880e826e49d601f68137e03b4eff244daade564f88` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/instance--e57ae3901697d2c1b9c994cd.md) | 149 | `declaration-track:e57ae3901697d2c1b9c994cd4d2861dfe4723d14f33885f62606668070289102` |
| 9 | `def` | [apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/apply--f38ffffea7a577a961e128a1.md) | 155 | `declaration-track:f38ffffea7a577a961e128a1f9c7aa478bfc75138326c1f2a55d18304c139199` |
| 10 | `def` | [repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/repr--e04512a5939ee3f58cf15c66.md) | 163 | `declaration-track:e04512a5939ee3f58cf15c6612698aa9f8b12be6478dd0c14bc8d80e30d67fd4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/instance--ac63b563fcd72375a88b20fd.md) | 166 | `declaration-track:ac63b563fcd72375a88b20fdab43c262612dac986e80a55fc86ff2afa8a805ee` |
| 12 | `def` | [List.applyId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/list-applyid--97cfc4c9da994c02d2ad160b.md) | 171 | `declaration-track:97cfc4c9da994c02d2ad160b31caa46d8e92c83bd2399428827204376fa87e1c` |
| 13 | `theorem` | [List.applyId_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/list-applyid-cons--4a811861dc861fec0ba0c08a.md) | 175 | `result-track:4a811861dc861fec0ba0c08a5e7d2a5fb06accda1021c4e14c770cc68ab34b95` |
| 14 | `theorem` | [List.applyId_zip_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/list-applyid-zip-eq--f61d028947b7228bafbdd00f.md) | 185 | `result-track:f61d028947b7228bafbdd00f14b0ea0530a872fb14b4610c32a3a76c1ca7587d` |
| 15 | `theorem` | [applyId_mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/applyid-mem-iff--cc98a53e18026f6018ce3d61.md) | 206 | `result-track:cc98a53e18026f6018ce3d61a7a57286adf7bbbf15f452c2c0afae1f14b2c2b6` |
| 16 | `theorem` | [List.applyId_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/list-applyid-eq-self--dd69531e322d42b52097675c.md) | 239 | `result-track:dd69531e322d42b52097675c6cb061bc191c9b9d8c44c14e4d7716edbed59d12` |
| 17 | `theorem` | [applyId_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/applyid-injective--306ad2d9c77c78c932ea4867.md) | 250 | `result-track:306ad2d9c77c78c932ea486737f99276d2e5e02d9c53b1bdc592bdc079224ce3` |
| 18 | `def` | [Perm.slice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/perm-slice--9ec11bd6b1562aab13ab9625.md) | 283 | `declaration-track:9ec11bd6b1562aab13ab96252714320963f41b7e7ee8dd60c959d4fe5e11a013` |
| 19 | `def` | [sliceSizes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/slicesizes--f633ebea9791bd55b34e5194.md) | 293 | `declaration-track:f633ebea9791bd55b34e5194f8228cc4f7673b75147385d1f486c280b048b665` |
| 20 | `def` | [shrinkPerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/shrinkperm--42ca61c37aec9ac7caef3537.md) | 306 | `declaration-track:42ca61c37aec9ac7caef35379263ba025a9b14d3ba55c1997e34257905ca72a8` |
| 21 | `def` | [shrink](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/shrink--c2ca7a59fa010270daf94c5b.md) | 319 | `declaration-track:c2ca7a59fa010270daf94c5b38c2b25153fa7028e4686266d3b3d6f8027a28cf` |
| 22 | `def` | [mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/mk--98e311e3aafebd587a572e7f.md) | 332 | `declaration-track:98e311e3aafebd587a572e7ff8a6fad58e6efb6ccee3a11d1b77be3b2f609f1c` |
| 23 | `theorem` | [injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/injective--8764695881eaef739b5b3e8f.md) | 341 | `result-track:8764695881eaef739b5b3e8f05bc5433152cafb5c60aa0f2435d3053f824c4b3` |
| 24 | `instance` | [PiInjective.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/piinjective-sampleableext--bb9de9cd863296e60b82c0aa.md) | 360 | `declaration-track:bb9de9cd863296e60b82c0aa51be498f3eb0b3f973eaecbf488c8bdd970b315c` |
| 25 | `instance` | [Injective.testable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/injective-testable--3c3743f3733d94ed2f0dd58d.md) | 378 | `declaration-track:3c3743f3733d94ed2f0dd58ddca65397ae90f9cd2504e98c1e9ec9d2c3ffda2d` |
| 26 | `instance` | [Monotone.testable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/monotone-testable--cb7b565bb77d315e8d1c68ba.md) | 384 | `declaration-track:cb7b565bb77d315e8d1c68baf6322ef501e51240167a0c0eefc18434b5db5214` |
| 27 | `instance` | [Antitone.testable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/declarations/antitone-testable--a8f1b239f020de5edcd7538c.md) | 390 | `declaration-track:a8f1b239f020de5edcd7538c3334f499488c34818635daea739c1653d610c501` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
