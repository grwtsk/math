# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VCGen.Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "964b9a3545181fb2bd21a38d7eac3761854f7eb7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `964b9a3545181fb2bd21a38d7eac3761854f7eb7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Do.VCGen.Split` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.ProofMode.Revert` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.LetElim` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.Spec` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.TryThis` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.VCGen.SuggestInvariant` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProofMode.MGoal.withNewProg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/declarations/proofmode-mgoal-withnewprog--cd9c7f1dd523f1569e30409a.md) | 33 | `declaration-track:cd9c7f1dd523f1569e30409afcdb87e2839868d4db5203699f985675db8acbc1` |
| 2 | `structure` | [Result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/declarations/result--d0648ca7aed113f94ec4fbef.md) | 44 | `declaration-track:d0648ca7aed113f94ec4fbefed42334dfcec841731ff69a123535ee50b282d8e` |
| 3 | `def` | [genVCs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/declarations/genvcs--8046e82f4b5654ef9f3367f2.md) | 48 | `declaration-track:8046e82f4b5654ef9f3367f27bd156b9b42159d7c21c2fb2e2d5468b379d4ff2` |
| 4 | `def` | [elabInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/declarations/elabinvariants--81e5283c42e145f42c705395.md) | 363 | `declaration-track:81e5283c42e145f42c705395b21be4961635dea829a58e1877857af3f96c544c` |
| 5 | `def` | [patchVCAltIntoCaseTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/declarations/patchvcaltintocasetactic--e1e12eb584c9866b2b0a2e2c.md) | 428 | `declaration-track:e1e12eb584c9866b2b0a2e2c340d05e568995b50a2380104035e75a12f8f4a35` |
| 6 | `def` | [elabVCs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/declarations/elabvcs--21ac0ebd8708b841df56d78c.md) | 433 | `declaration-track:21ac0ebd8708b841df56d78cd0e436720252b42d3a7b7889a04308d15ec29b29` |
| 7 | `def` | [elabMVCGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/declarations/elabmvcgen--9a4007d0ebb25514b6b1c2e2.md) | 462 | `declaration-track:9a4007d0ebb25514b6b1c2e2a54ee6b5ff11369830a6954463bf050f09bf5826` |
| 8 | `def` | [elabMVCGenHint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/declarations/elabmvcgenhint--005f01695bd4ba2bfa45c099.md) | 499 | `declaration-track:005f01695bd4ba2bfa45c0990c0fc9293fad68c48e313efd5286bae538145eba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
