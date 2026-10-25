# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProveEq.Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0b683c2dd829d6d378a490678df701d83231f19",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0b683c2dd829d6d378a490678df701d83231f19`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ensureInternalized](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean/declarations/ensureinternalized--94f704bebe78073965b400f8.md) | 27 | `declaration-track:94f704bebe78073965b400f8a77b9cedda6ebbdf2e2acb8e383c5abdeab8fcee` |
| 2 | `structure` | [AbstractM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean/declarations/abstractm-context--79bd1f4de5f0377661166270.md) | 72 | `declaration-track:79bd1f4de5f0377661166270dc9f06b9b4e0a76b9bc678c589ca74e1841dfcbd` |
| 3 | `structure` | [AbstractM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean/declarations/abstractm-state--ad49e8f0e91693a3c785ba77.md) | 77 | `declaration-track:ad49e8f0e91693a3c785ba777f9a495307fd2cd44d3f1a07d7e51b6b2950c872` |
| 4 | `abbrev` | [AbstractM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean/declarations/abstractm--425b6b905ba14506ab44521e.md) | 87 | `declaration-track:425b6b905ba14506ab44521ee40c6b4005387f9ef391856d5d7f03df221ba6db` |
| 5 | `def` | [inBinder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean/declarations/inbinder--49a5e2b386dc1f5fc8a4aab0.md) | 90 | `declaration-track:49a5e2b386dc1f5fc8a4aab004d057e675e2933275e66871fedc41b837942da6` |
| 6 | `abbrev` | [withIncOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean/declarations/withincoffset--e0ced7aca895aca7f10b3138.md) | 94 | `declaration-track:e0ced7aca895aca7f10b3138ea8d2aa5e74420e4190adaad5863a7e5ce773cb4` |
| 7 | `def` | [mkLambdaWithBodyAndVarType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean/declarations/mklambdawithbodyandvartype--7b6aad57d4a40419d1f6f665.md) | 101 | `declaration-track:7b6aad57d4a40419d1f6f665e53cdf2134ee650ddedfe457159bde7936a488c0` |
| 8 | `def` | [abstractGroundMismatches?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean/declarations/abstractgroundmismatches--8dd930907b0da5d7f2d4474a.md) | 116 | `declaration-track:8dd930907b0da5d7f2d4474a11bcbcf5ab340307cb895b4d7f618bdf406240fd` |
| 9 | `def` | [proveEq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean/declarations/proveeq--defe8630a402b9e5a5bdb746.md) | 190 | `declaration-track:defe8630a402b9e5a5bdb7463a957408880e163070578e133500d984e9bdf55a` |
| 10 | `def` | [proveHEq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant98683c5b17eecd0b9f7040f9f2bbad71507dc5bb13dc575a09c430564dd34d17.lean/declarations/proveheq--9355f80e6ace1f0071d13e12.md) | 230 | `declaration-track:9355f80e6ace1f0071d13e1268da1525ab425f216dd2619d2a26a1c905c6bd1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
