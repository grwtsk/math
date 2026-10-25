# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TrigReduced.Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92edf658b7fdbb8615acee717947249c8a434d08",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92edf658b7fdbb8615acee717947249c8a434d08`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalRat.Taylor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piRatLo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/piratlo--ae567ff6120e30fd60e49b5e.md) | 41 | `declaration-track:ae567ff6120e30fd60e49b5e274b8e7427c0ef510c99d095441374e464373382` |
| 2 | `def` | [piRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/pirathi--091cb1ce5bfdd3fd805d3254.md) | 44 | `declaration-track:091cb1ce5bfdd3fd805d3254abd4647d7d516830acc3efe993b6c725813ee040` |
| 3 | `def` | [twoPiRatLo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/twopiratlo--e26a89dcede8118777efabe0.md) | 47 | `declaration-track:e26a89dcede8118777efabe0c1cdc3b0c820d276264d93961383684acb16e9bd` |
| 4 | `def` | [twoPiRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/twopirathi--c52168ff3a58f69ed8b4fb56.md) | 50 | `declaration-track:c52168ff3a58f69ed8b4fb56c5535dd1a6855f94d3d568db518cacd8c5d3367f` |
| 5 | `theorem` | [piRatLo_lt_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/piratlo-lt-pi--289a2d7a7cf9304a020e9d6b.md) | 53 | `result-track:289a2d7a7cf9304a020e9d6b258ab52fd9b9bbdc223a12801f2e35c757fe39e9` |
| 6 | `theorem` | [pi_lt_piRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/pi-lt-pirathi--8a8eab700a394f2f09b5942c.md) | 59 | `result-track:8a8eab700a394f2f09b5942cf5cc6bda0257082d0b6afe50e7a7e53881f84db8` |
| 7 | `theorem` | [twoPiRatLo_lt_two_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/twopiratlo-lt-two-pi--23de5a01e4153236b7b6517c.md) | 65 | `result-track:23de5a01e4153236b7b6517c9a7d4c6c09f75246fd8202d582ed66349fa7c04b` |
| 8 | `theorem` | [two_pi_lt_twoPiRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/two-pi-lt-twopirathi--969564f256e7a403f2e5675c.md) | 72 | `result-track:969564f256e7a403f2e5675c462aa11e281bf0ade12817db82a674a41b816ef8` |
| 9 | `theorem` | [twoPiRatLo_le_twoPiRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/twopiratlo-le-twopirathi--a592e074176c7e2606ec9b53.md) | 79 | `result-track:a592e074176c7e2606ec9b53dc6fd3556471b14bfc28dfded2eb32bfd283d041` |
| 10 | `def` | [computeShiftK](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/computeshiftk--8090a8091bebdf8ba4341166.md) | 86 | `declaration-track:8090a8091bebdf8ba43411667eaee1d7c47fff82eb452417805ce6969b241cb8` |
| 11 | `def` | [shiftInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/shiftinterval--ec8e798303e9790f7602bcd2.md) | 95 | `declaration-track:ec8e798303e9790f7602bcd2b7821cbe32cc25acf19b0bc3f1873ecfa1d94eb4` |
| 12 | `def` | [reduceToMainPeriod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/reducetomainperiod--ec1ea2b2ad4492e169ad4013.md) | 113 | `declaration-track:ec1ea2b2ad4492e169ad401360bfc358e08e8e09b920458c7ff499bb4bad56fa` |
| 13 | `theorem` | [mem_shiftInterval_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/mem-shiftinterval-of-mem--84f60144dad1479ee1cfcd9f.md) | 120 | `result-track:84f60144dad1479ee1cfcd9fa3b12e1472325f12d4cc7a4a57ccce4c191c1ebf` |
| 14 | `def` | [sinComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/sincomputablereduced--cadf4ce4103a27de78de576e.md) | 167 | `declaration-track:cadf4ce4103a27de78de576e3168165b1573f8260df5dd3be8423ec2348bba99` |
| 15 | `def` | [cosComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/coscomputablereduced--c9fc5db14af8a77071926c3f.md) | 175 | `declaration-track:c9fc5db14af8a77071926c3f0a0f39b04f1356d034c5a62179c2bf83c1d3289f` |
| 16 | `theorem` | [mem_sinComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/mem-sincomputablereduced--68155e85501e9d4b393cfa37.md) | 183 | `result-track:68155e85501e9d4b393cfa37d0684d108c99aa3373906868cab624ac735553af` |
| 17 | `theorem` | [mem_cosComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantbae358a48f77add858b288b2960e562e5dd435f62eda62559158becf9037d94d.lean/declarations/mem-coscomputablereduced--f22b259f1bbb5fbf733febb9.md) | 205 | `result-track:f22b259f1bbb5fbf733febb983a45682a84a11061e88b336a6cbe2da95ed665e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
