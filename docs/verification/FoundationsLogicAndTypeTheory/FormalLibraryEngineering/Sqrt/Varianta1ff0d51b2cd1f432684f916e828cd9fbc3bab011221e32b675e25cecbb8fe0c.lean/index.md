# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sqrt.Varianta1ff0d51b2cd1f432684f916e828cd9fbc3bab011221e32b675e25cecbb8fe0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e8bfdc25292ca2ae0bc90842aa598318d8a292e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Varianta1ff0d51b2cd1f432684f916e828cd9fbc3bab011221e32b675e25cecbb8fe0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Varianta1ff0d51b2cd1f432684f916e828cd9fbc3bab011221e32b675e25cecbb8fe0c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Varianta1ff0d51b2cd1f432684f916e828cd9fbc3bab011221e32b675e25cecbb8fe0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e8bfdc25292ca2ae0bc90842aa598318d8a292e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Varianta1ff0d51b2cd1f432684f916e828cd9fbc3bab011221e32b675e25cecbb8fe0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Varianta1ff0d51b2cd1f432684f916e828cd9fbc3bab011221e32b675e25cecbb8fe0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Sqrt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Varianta1ff0d51b2cd1f432684f916e828cd9fbc3bab011221e32b675e25cecbb8fe0c.lean/declarations/sqrt--b1de9d5b2e0a911c6a7ef675.md) | 31 | `declaration-track:b1de9d5b2e0a911c6a7ef67525078481977db193d9a124c68dafc374c39795b7` |
| 2 | `theorem` | [sqrt_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Varianta1ff0d51b2cd1f432684f916e828cd9fbc3bab011221e32b675e25cecbb8fe0c.lean/declarations/sqrt-eq--8e40169cba560b3d21051175.md) | 34 | `result-track:8e40169cba560b3d210511753f89b04198770ad238e47bf4bcbd79678472f685` |
| 3 | `theorem` | [exists_mul_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Varianta1ff0d51b2cd1f432684f916e828cd9fbc3bab011221e32b675e25cecbb8fe0c.lean/declarations/exists-mul-self--b4426259a3a70d89cb78dff8.md) | 37 | `result-track:b4426259a3a70d89cb78dff8b83f61e0bd4e21c602f3f7fc3c7d74391c51b2ab` |
| 4 | `theorem` | [sqrt_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Varianta1ff0d51b2cd1f432684f916e828cd9fbc3bab011221e32b675e25cecbb8fe0c.lean/declarations/sqrt-nonneg--7e0ea0365fabbea77bdd6c6d.md) | 40 | `result-track:7e0ea0365fabbea77bdd6c6dd8a7df063c4d897ad5c3f494a137cbb1013dfdd5` |
| 5 | `theorem` | [sqrt_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Varianta1ff0d51b2cd1f432684f916e828cd9fbc3bab011221e32b675e25cecbb8fe0c.lean/declarations/sqrt-natcast--89a920598df5480f901b55f5.md) | 44 | `result-track:89a920598df5480f901b55f5300f4ab4a52f1306836cef1a39b2a6e8cfd1aec6` |
| 6 | `theorem` | [sqrt_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Varianta1ff0d51b2cd1f432684f916e828cd9fbc3bab011221e32b675e25cecbb8fe0c.lean/declarations/sqrt-ofnat--42804f3e1d3b658f45af2205.md) | 47 | `result-track:42804f3e1d3b658f45af2205f8d01e9d98f325be117b2fe06b503f98ab21ca49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
