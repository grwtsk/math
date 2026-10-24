# Verification target: GRWTSK.Algebra.UniversalAlgebra.ZeroLEOne.Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9d4e15447f0287b89cb7df60fc974f1aa524bb9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9d4e15447f0287b89cb7df60fc974f1aa524bb9`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/declarations/zeroleoneclass--92b6c5b3eb382ba1255b224f.md) | 21 | `declaration-track:92b6c5b3eb382ba1255b224fff7d7cb2403e87c98ba1f7d3de3ee9cc6dd80dae` |
| 2 | `lemma` | [zero_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/declarations/zero-le-one--36a77c4292afd62c8499b3a3.md) | 26 | `result-track:36a77c4292afd62c8499b3a3d451527a8e55eb9fee5908ee64f5778fce77ff45` |
| 3 | `instance` | [ZeroLEOneClass.factZeroLeOne](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/declarations/zeroleoneclass-factzeroleone--dff92b12102325efa67fbd67.md) | 29 | `declaration-track:dff92b12102325efa67fbd6759bbe35196f57e38433ace42f84e160367619205` |
| 4 | `lemma` | [zero_le_one'](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/declarations/zero-le-one--ced69323c6585c9164e40a9a.md) | 34 | `result-track:ced69323c6585c9164e40a9aa74a0161fd59b90854770c41aacf6af18621420d` |
| 5 | `instance` | [Prod.instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/declarations/prod-instzeroleoneclass--ede3b1a2de3ac8688a8f4bc2.md) | 37 | `declaration-track:ede3b1a2de3ac8688a8f4bc296ad84f03afca4235d438c7ca1c8581cf15882e0` |
| 6 | `instance` | [Pi.instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/declarations/pi-instzeroleoneclass--3c1b76628b18fb05def39558.md) | 41 | `declaration-track:3c1b76628b18fb05def395586606bb8e28ba9c57c3313f9896dd65d93edd6021` |
| 7 | `lemma` | [zero_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/declarations/zero-lt-one--7891bb1cdef15ed8adb834db.md) | 49 | `result-track:7891bb1cdef15ed8adb834db3995ebd2613ca9cf134df77cd796cfe19526ed0c` |
| 8 | `instance` | [ZeroLEOneClass.factZeroLtOne](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/declarations/zeroleoneclass-factzeroltone--e9c32ba756975a17890dafd8.md) | 51 | `declaration-track:e9c32ba756975a17890dafd887b4d6f27a29ae5802eac2a5fc7fe41d42cf05a1` |
| 9 | `lemma` | [zero_lt_one'](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/declarations/zero-lt-one--c3b3724f6e1b936e29189078.md) | 57 | `result-track:c3b3724f6e1b936e2918907801cddb7641fa014cafd0fded77a0a655dccada6e` |
| 10 | `instance` | [Nat.instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/declarations/nat-instzeroleoneclass--0070855e2152a7c387094a1c.md) | 63 | `declaration-track:0070855e2152a7c387094a1c0bcd2787c88fc278df3b90062598aef0e0604166` |
| 11 | `instance` | [Int.instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/declarations/int-instzeroleoneclass--b709a2612d850e30f879d174.md) | 64 | `declaration-track:b709a2612d850e30f879d174d5268c15642cbc5e3b4e3629c32488d635b06138` |
| 12 | `instance` | [Rat.instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/declarations/rat-instzeroleoneclass--29575708c584fc8580502f05.md) | 65 | `declaration-track:29575708c584fc8580502f05d9dde08aec7ef98995a2c30858dfcd1738771002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
