# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EMatchAction.Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a27c60481bf9b5a18904b43e9cf5e8fa1e4e5601",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a27c60481bf9b5a18904b43e9cf5e8fa1e4e5601`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.ParamMinimizer` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatch` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatchTheoremParam` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatchTheoremPtr` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MarkNestedSubsingletons` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CollectState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/declarations/collectstate--a9d12971778289ab303ec061.md) | 53 | `declaration-track:a9d12971778289ab303ec061f90ca45733cd96bd7e22315be8e51f501dbf88d7` |
| 2 | `def` | [collect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/declarations/collect--8a4bab2089628cfabf4be2aa.md) | 58 | `declaration-track:8a4bab2089628cfabf4be2aac1209b576b2427700b105f387b558af251363b14` |
| 3 | `def` | [mkInstantiateTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/declarations/mkinstantiatetactic--a3df7f98f75e99f6464ae242.md) | 89 | `declaration-track:a3df7f98f75e99f6464ae2421d4ab5a2785f193bbcc37a0ee267f1a6f39e9cda` |
| 4 | `def` | [mkNewSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/declarations/mknewseq--268870650a41a60db78a8d34.md) | 126 | `declaration-track:268870650a41a60db78a8d34639df75437b160553f42dd13f3e4f273a6922927` |
| 5 | `abbrev` | [EMatchTheoremIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/declarations/ematchtheoremids--35cc8a29a24dbe196a7826e8.md) | 132 | `declaration-track:35cc8a29a24dbe196a7826e80ed66e50b13e56b854942f65abe12e5af77904e4` |
| 6 | `def` | [getAllTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/declarations/getalltheorems--54128cfce934c8991c68ffb8.md) | 134 | `declaration-track:54128cfce934c8991c68ffb84710a153fbb66500e379dc02dd2bf723b58f54ca` |
| 7 | `def` | [mkMask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/declarations/mkmask--8b5c6453e8e5cea868226a39.md) | 146 | `declaration-track:8b5c6453e8e5cea868226a39ae2b8098f1c8a3eadfc94f06a6f647b2ae9abc49` |
| 8 | `def` | [maskToThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/declarations/masktothms--59979ace67106fcdf743f4ba.md) | 153 | `declaration-track:59979ace67106fcdf743f4ba32d2e961e2476c8df7f0cc5b07c77dcbca51166f` |
| 9 | `def` | [instantiate'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/declarations/instantiate--606fb89aaf4b32ad87a7749b.md) | 160 | `declaration-track:606fb89aaf4b32ad87a7749b47a4012c48ea309a1075bec179aa7ff586be0d02` |
| 10 | `def` | [instantiate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/declarations/instantiate--2ed3a470d719ba85c3436694.md) | 189 | `declaration-track:2ed3a470d719ba85c3436694e312de477f5f5d9bfeedb3b810e8ff2533bfe5c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
