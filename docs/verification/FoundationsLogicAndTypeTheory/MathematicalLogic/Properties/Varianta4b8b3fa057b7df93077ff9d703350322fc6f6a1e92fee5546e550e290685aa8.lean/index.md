# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Properties.Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ca6af0273ef1f29018f3507316b8519a2397832",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ca6af0273ef1f29018f3507316b8519a2397832`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/declarations/isinjective--8374d9a10487971f1980fa8a.md) | 15 | `declaration-track:8374d9a10487971f1980fa8aca208ecb7b866a2ced4d23a673056d6ccb7eb6d8` |
| 2 | `def` | [IsSurjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/declarations/issurjective--b278fc8bdce34c6adfb9c80e.md) | 18 | `declaration-track:b278fc8bdce34c6adfb9c80e2e83f534859ccacb1bad9c7707285967f8b644dc` |
| 3 | `def` | [IsBijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/declarations/isbijective--28132524efe188a6f86e4f88.md) | 21 | `declaration-track:28132524efe188a6f86e4f8830563586d63eff01ef62f76560da17ef55c2713a` |
| 4 | `def` | [IsLeftInverseOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/declarations/isleftinverseof--db84280e99ddb84ca932c636.md) | 24 | `declaration-track:db84280e99ddb84ca932c6367946712cfb2715d140cbfcda822f4b5f1a32133b` |
| 5 | `def` | [IsRightInverseOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/declarations/isrightinverseof--8f195134923bc9ee2b7513e4.md) | 27 | `declaration-track:8f195134923bc9ee2b7513e493a35f919dff0a134c04ea7e4467ca1935c1e1dc` |
| 6 | `def` | [IsInverseOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/declarations/isinverseof--decc97fffe952612da42e6c2.md) | 30 | `declaration-track:decc97fffe952612da42e6c23fdedbd10aec77188c1dfb326d6853f3518daf45` |
| 7 | `theorem` | [isInjective_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/declarations/isinjective-comp--20d4f22896979fdc79330650.md) | 33 | `result-track:20d4f22896979fdc79330650d6a724b090e3637c5bf23120e6713dee2cf97830` |
| 8 | `theorem` | [isSurjective_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/declarations/issurjective-comp--7303ec04fc02745bfbe541e3.md) | 39 | `result-track:7303ec04fc02745bfbe541e376a657725c927f561caa0161cd91efa8d86e2a29` |
| 9 | `theorem` | [isBijective_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/declarations/isbijective-comp--8bd2d1d550895357bc6f28cf.md) | 45 | `result-track:8bd2d1d550895357bc6f28cff2c2d4357402803bb9cf1c5975fef521fb12d646` |
| 10 | `def` | [toEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/declarations/toequiv--678562d44c69b12b42061c14.md) | 54 | `declaration-track:678562d44c69b12b42061c149969e8e35e14c4bd3fa3778e3be5c2c06b56699f` |
| 11 | `theorem` | [toEquiv_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8.lean/declarations/toequiv-apply--f97e19529d9f4ea68eae489c.md) | 58 | `result-track:f97e19529d9f4ea68eae489c0daa8ff75aed184f8a3792bc1dc4b73c0d93a432` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
