# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c2707824918dc3823c1afa2a8fc252eb4e13e84",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c2707824918dc3823c1afa2a8fc252eb4e13e84`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Bitwise.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_isPowerOfTwo_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9.lean/declarations/not-ispoweroftwo-zero--57ad3752c28c940dbb884933.md) | 28 | `result-track:57ad3752c28c940dbb884933f0f390cc1abb45975911496bce25176a8401f911` |
| 2 | `theorem` | [and_sub_one_testBit_log2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9.lean/declarations/and-sub-one-testbit-log2--1e51b42513025cea3f19513d.md) | 34 | `result-track:1e51b42513025cea3f19513db4ee90bfbd452f2680eda022b2f32173f415d0a2` |
| 3 | `theorem` | [and_sub_one_eq_zero_iff_isPowerOfTwo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9.lean/declarations/and-sub-one-eq-zero-iff-ispoweroftwo--6352a70d1e851723a0742b38.md) | 48 | `result-track:6352a70d1e851723a0742b38afa1fc2cc32f68ce8dae67aba1b4284c11ffcba0` |
| 4 | `theorem` | [ne_zero_and_sub_one_eq_zero_iff_isPowerOfTwo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9.lean/declarations/ne-zero-and-sub-one-eq-zero-iff-ispoweroftwo--238220f204ed636b92746c22.md) | 60 | `result-track:238220f204ed636b92746c224f52ec67ede8ce48aa67353f9a1d8df61bbe5ce4` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9.lean/declarations/instance--19e0d0330ef6850760c47a28.md) | 67 | `declaration-track:19e0d0330ef6850760c47a2879084e794e529afdd0927c3718a3601bab3229d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
