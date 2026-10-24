# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuotientLimit.Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3354b0fcd0e330344578f58c6a0615ab5ae19c8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3354b0fcd0e330344578f58c6a0615ab5ae19c8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kernel.InverseLimit` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Stage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/stage--9d829a1e2970da4022074f52.md) | 22 | `declaration-track:9d829a1e2970da4022074f525c256691779ece006c718fec0e890376e234d820` |
| 2 | `def` | [finiteStageClaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/finitestageclaim--9915e9aee8f4043f635831c0.md) | 29 | `declaration-track:9915e9aee8f4043f635831c07c5e48050594589c9d809601aeb575b67037c72e` |
| 3 | `def` | [finiteStageWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/finitestagewitness--2ab2147f4b92ed2a3f28fc3d.md) | 32 | `declaration-track:2ab2147f4b92ed2a3f28fc3d3df9f0f7e93cee70fa1c39d00556ef52b77add50` |
| 4 | `theorem` | [finiteStageWitness_isProved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/finitestagewitness-isproved--3ff8c3de9a673da9293e116b.md) | 36 | `result-track:3ff8c3de9a673da9293e116b9622f9cad021de10db5753be29f98348a28bb0d2` |
| 5 | `def` | [compactShellInjectiveClaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/compactshellinjectiveclaim--68985715c53c7f195947e214.md) | 40 | `declaration-track:68985715c53c7f195947e214d48de6b1afbdecd552cb5c6a5c40aa85def35cd3` |
| 6 | `def` | [compactShellInjectivityResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/compactshellinjectivityresidue--6bcec9ad02894032e3d4bdf3.md) | 43 | `declaration-track:6bcec9ad02894032e3d4bdf3a805d94d191df5df0e259716b61488c5a9ed7b51` |
| 7 | `def` | [compactShellInjectivityWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/compactshellinjectivitywitness--4435c200cfb817a2e5760b1a.md) | 50 | `declaration-track:4435c200cfb817a2e5760b1a8c85cd675ec6942a83002eab2ff1bbbd4705490f` |
| 8 | `theorem` | [compactShellInjectivity_hasResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/compactshellinjectivity-hasresidue--e4ba9153022860f00a1cf32e.md) | 54 | `result-track:e4ba9153022860f00a1cf32ea2115ab53a15d2c9923914310ddda92a52311e6c` |
| 9 | `def` | [limitRoundTripClaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/limitroundtripclaim--8322389634136fdb5fb61fba.md) | 58 | `declaration-track:8322389634136fdb5fb61fba200f81e25ae5ff7b0e4ca39345b93ceca61df502` |
| 10 | `theorem` | [limitRoundTrip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/limitroundtrip--ecc796b1e20f593dac18a2aa.md) | 64 | `result-track:ecc796b1e20f593dac18a2aabcb8a137f1e2acbf7b262a9e2e362678b0a1d251` |
| 11 | `def` | [limitBridgeWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/limitbridgewitness--2bbd1479335626c6ecf4021c.md) | 72 | `declaration-track:2bbd1479335626c6ecf4021cf02f1fd9ceb16bb89412c7b2bd830a4503426c04` |
| 12 | `theorem` | [limitBridgeWitness_isProved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/limitbridgewitness-isproved--7889764a52f7e754ead48ed7.md) | 76 | `result-track:7889764a52f7e754ead48ed7ce2e66b673743369139972ae44004b52438438ef` |
| 13 | `inductive` | [Atom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/atom--93cf6f030fcbfd9ea59f2fd5.md) | 80 | `declaration-track:93cf6f030fcbfd9ea59f2fd5624fe7e7af7bd3391332f90149060e4648adfd79` |
| 14 | `def` | [Atom.id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/atom-id--a8beeb9285af65b4abacbc95.md) | 92 | `declaration-track:a8beeb9285af65b4abacbc95449088ca32584347fa4bd1c6aa0b014b14ea44b7` |
| 15 | `def` | [residueOfAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/residueofatom--be7feb03f82a6fad41611e58.md) | 103 | `declaration-track:be7feb03f82a6fad41611e5826b83c6cca2a532780b276734cf6e79c18996d90` |
| 16 | `def` | [allAtoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/allatoms--3854290b22060facbb81829a.md) | 120 | `declaration-track:3854290b22060facbb81829a95fabcbb214b35d5e822548a37253e6bc777c391` |
| 17 | `def` | [validationResidues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/validationresidues--637131a81436414f636fd717.md) | 132 | `declaration-track:637131a81436414f636fd7173491b95f28e47fae809cebf3d20690d51cef099b` |
| 18 | `theorem` | [validationResidues_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/validationresidues-count--8ecba566ac6ea4775c14f843.md) | 135 | `result-track:8ecba566ac6ea4775c14f8430ef1f8a30e8710e1844da83559540814b12b36d0` |
| 19 | `theorem` | [validationResidues_targets_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/validationresidues-targets-correct--7df2adce2380b8ca2007b645.md) | 139 | `result-track:7df2adce2380b8ca2007b645d2654b66e890178e20b082784ded05f7444d6c16` |
| 20 | `theorem` | [allAtoms_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/allatoms-nodup--e6e370b1b83cbd2ca0218719.md) | 147 | `result-track:e6e370b1b83cbd2ca021871983488b70e3e261d0dbe7ab02b3bfa99e78ecab08` |
| 21 | `theorem` | [atomId_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variantaff85a7c5747198c760f58c48910ec284ae463b7d39167dcfe92d66f7c112228.lean/declarations/atomid-injective--7ce22858cca9bb8ce9a00583.md) | 151 | `result-track:7ce22858cca9bb8ce9a00583dafc151a32f663fb30d1f2836155645769b07d9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
