# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SplitIfs.Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64e0fa989bcac05a4768b47f3a368bdeee8d2f5c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64e0fa989bcac05a4768b47f3a368bdeee8d2f5c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Location` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.SplitIf` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Simp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SplitPosition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/declarations/splitposition--55fcc011a62da55f9ca7b9c2.md) | 21 | `declaration-track:55fcc011a62da55f9ca7b9c2e2564fcaf823b5108b02d93167eba0e13a4c6e9b` |
| 2 | `def` | [getSplitCandidates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/declarations/getsplitcandidates--f0f3e5b87255febe8a2c40cd.md) | 27 | `declaration-track:f0f3e5b87255febe8a2c40cddaacc9faa69efbbc7d849e6e36ba91be9420e8d9` |
| 3 | `def` | [findIfToSplit?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/declarations/findiftosplit--ed9ff68bb4ec583413eefcfc.md) | 45 | `declaration-track:ed9ff68bb4ec583413eefcfc3654f9e1f4e1ca42eb98230f1ec08810c4ea9d1b` |
| 4 | `def` | [findIfCondAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/declarations/findifcondat--32ec14ec467da9a48d259d89.md) | 56 | `declaration-track:32ec14ec467da9a48d259d892c58166c5dcaee33b3915b0deffda41d75bb8106` |
| 5 | `def` | [discharge?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/declarations/discharge--bf084b8d0c1ffcc3c5ee81ce.md) | 66 | `declaration-track:bf084b8d0c1ffcc3c5ee81ce38a36a7e24156c1c23edc0db01f3ca40ae4494e9` |
| 6 | `def` | [reduceIfsAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/declarations/reduceifsat--c978883988515cd28eb8ad74.md) | 76 | `declaration-track:c978883988515cd28eb8ad74569cb0100b0e90dfa4dc93fe3ef2d36b513dcc8c` |
| 7 | `def` | [splitIf1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/declarations/splitif1--a3af1fa7e623f681ff1b2fc8.md) | 87 | `declaration-track:a3af1fa7e623f681ff1b2fc8ac8880374f905f2816a683d6c566726d266718bc` |
| 8 | `def` | [getNextName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/declarations/getnextname--80cb23a0e3e85e08319dba4a.md) | 95 | `declaration-track:80cb23a0e3e85e08319dba4a5c4485a57d61e3ef4e80312f4b28b4560a9dc294` |
| 9 | `def` | [valueKnown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/declarations/valueknown--157054cad529a34ed25317e6.md) | 105 | `declaration-track:157054cad529a34ed25317e6a82bb3efce3b6c08c42f011fdb712ddd5bdea726` |
| 10 | `def` | [splitIfsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/declarations/splitifscore--d106db04ff8cc0de6890591e.md) | 116 | `declaration-track:d106db04ff8cc0de6890591e9d85c8f6abd3095cd23aaa408f01aeb963d83463` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/declarations/syntax--a77f595a49a17644fedfe3b6.md) | 144 | `declaration-track:a77f595a49a17644fedfe3b6d61947611d086220e0140fe4dc91fb912a2d30e2` |
| 12 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/declarations/elab-rules--c5a092da7d890391dc24a7ed.md) | 146 | `declaration-track:c5a092da7d890391dc24a7ed95df0806bbca9681a0e0fd9999f9274c6b345150` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
