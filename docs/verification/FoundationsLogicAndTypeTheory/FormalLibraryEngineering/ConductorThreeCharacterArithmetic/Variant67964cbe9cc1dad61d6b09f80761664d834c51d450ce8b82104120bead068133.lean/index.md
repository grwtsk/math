# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeCharacterArithmetic.Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa12ffadef7bdb111fb34d0a6dac54f46e4f0db2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa12ffadef7bdb111fb34d0a6dac54f46e4f0db2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeIntegerCharacter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreeintegercharacter--0e0303398b3bdab5a111dec1.md) | 38 | `declaration-track:0e0303398b3bdab5a111dec18e0a3c85446c4d28c8dccbd9ccf5788905ad8df9` |
| 2 | `def` | [conductorThreeIntegerValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreeintegervalue--ec0660434e14ed6038d62bd5.md) | 45 | `declaration-track:ec0660434e14ed6038d62bd5e819c286d218a1a62a7c0e07dc9e0f333fa992c6` |
| 3 | `theorem` | [conductorThreeIntegerValue_mod_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreeintegervalue-mod-zero--4521b7f4c10fb9d2d919f5b6.md) | 49 | `result-track:4521b7f4c10fb9d2d919f5b6f4263fa111cf3bbbc4ad8627b4fdded5d67dd0a3` |
| 4 | `theorem` | [conductorThreeIntegerValue_mod_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreeintegervalue-mod-one--1a8adb30f86a81d89b8057fe.md) | 57 | `result-track:1a8adb30f86a81d89b8057fee3d6063a6e2ee47b41d7147678df979a679abebf` |
| 5 | `theorem` | [not_isSquare_two_zmod_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/not-issquare-two-zmod-three--b7149a01e3206484d189db70.md) | 68 | `result-track:b7149a01e3206484d189db7058f19d4172d60a9611fb0693a64282c4013471bb` |
| 6 | `theorem` | [two_ne_zero_zmod_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/two-ne-zero-zmod-three--8eb6718519762e6e707221d2.md) | 72 | `result-track:8eb6718519762e6e707221d2736019be20148795a48103c0dc7ce88c3d80276c` |
| 7 | `theorem` | [conductorThreeIntegerValue_mod_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreeintegervalue-mod-two--59b8bec9f0ff58b0c0502106.md) | 77 | `result-track:59b8bec9f0ff58b0c050210620cf2c2da9dcba55dd6054ac3f5c503524274935` |
| 8 | `theorem` | [conductorThreeIntegerValue_cases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreeintegervalue-cases--49f0bcf3499d85b491e5927f.md) | 89 | `result-track:49f0bcf3499d85b491e5927f0939ca6f64b6c62131d186f0e8a73a3e6bfb917d` |
| 9 | `theorem` | [conductorThreeIntegerValue_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreeintegervalue-eq-zero-iff--a4344d48c2a7a60d83772386.md) | 97 | `result-track:a4344d48c2a7a60d83772386cee767bec017fe7dff12162dc003ebcd94af1d73` |
| 10 | `theorem` | [conductorThreeIntegerValue_eq_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreeintegervalue-eq-one-iff--3dd419739b3835da7f84881c.md) | 104 | `result-track:3dd419739b3835da7f84881ca72c9b068ac51204e12e3965829445fc98192309` |
| 11 | `theorem` | [conductorThreeIntegerValue_eq_neg_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreeintegervalue-eq-neg-one-iff--522a91c038fde65dbc75690b.md) | 110 | `result-track:522a91c038fde65dbc75690bf3beac319a4e1da1c07d047803f1d13891f58b4e` |
| 12 | `theorem` | [conductorThreeIntegerValue_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreeintegervalue-mul--5da5ccdf9be579755384b3e4.md) | 117 | `result-track:5da5ccdf9be579755384b3e4c6f6de4330fa896e51ee667ffb5466f7247af476` |
| 13 | `theorem` | [conductorThreeIntegerValue_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreeintegervalue-pow--34a3dd527802353dc3842803.md) | 125 | `result-track:34a3dd527802353dc384280346d826a5438c4df7e019a8228afa0294a9681804` |
| 14 | `theorem` | [conductorThreeCharacter_eq_intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreecharacter-eq-intcast--083221fd0ded3ed3020ba2ac.md) | 134 | `result-track:083221fd0ded3ed3020ba2acf0edd75c6d17df374cc6c6566e11906c8a040d48` |
| 15 | `theorem` | [conductorThreeCharacter_odd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreecharacter-odd--f32dfbf35253937c2a2a7319.md) | 141 | `result-track:f32dfbf35253937c2a2a7319dc632513ab84fa132e95ee804c1888baf5b06aba` |
| 16 | `theorem` | [conductorThreeCharacter_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant67964cbe9cc1dad61d6b09f80761664d834c51d450ce8b82104120bead068133.lean/declarations/conductorthreecharacter-inv--f9a2156a89fc1fa4c085ff59.md) | 151 | `result-track:f9a2156a89fc1fa4c085ff59ce23d5649366c1ff3cc3dec5b6d687c45a0c68a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
