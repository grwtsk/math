# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShellCutoffMatrix.Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3542d64aa78e88610f4db75760eb38d7fc10594e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3542d64aa78e88610f4db75760eb38d7fc10594e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [typeIIShellIntervalMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean/declarations/typeiishellintervalmatrix--6ba70155620b368317fdffc7.md) | 32 | `declaration-track:6ba70155620b368317fdffc781ca1fedf27bb3df9a84477b8bce08f04617acec` |
| 2 | `theorem` | [typeIIShellIntervalMatrix_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean/declarations/typeiishellintervalmatrix-apply--e06394f59b959cbe5cde7ff2.md) | 38 | `result-track:e06394f59b959cbe5cde7ff20566d535202af0e0ee679e9480ac364d0cd0d330` |
| 3 | `theorem` | [typeIIShellIntervalMatrix_eq_sum_fibers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean/declarations/typeiishellintervalmatrix-eq-sum-fibers--bc8cdff624bd920e2c7b618d.md) | 49 | `result-track:bc8cdff624bd920e2c7b618d9159538e15abb03bfcfc0f8940d16bbb331f81c2` |
| 4 | `def` | [typeIIShellPrefixMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean/declarations/typeiishellprefixmatrix--ab7176af3c8a3a4a1f2c8038.md) | 60 | `declaration-track:ab7176af3c8a3a4a1f2c8038183ed2094c6e41ccf21119a8ea4de9105a87804d` |
| 5 | `theorem` | [typeIIShellPrefixMatrix_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean/declarations/typeiishellprefixmatrix-apply--c1921eeb4ccf187d6793cffc.md) | 66 | `result-track:c1921eeb4ccf187d6793cffc26fd715d8905dc340854d3a1951b37ac0adc2148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
