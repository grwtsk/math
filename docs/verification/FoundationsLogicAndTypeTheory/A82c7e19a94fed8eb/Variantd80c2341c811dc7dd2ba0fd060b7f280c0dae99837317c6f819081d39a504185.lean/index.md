# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.A82c7e19a94fed8eb.Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9c3955b302e54489b1325ffb0625321a2d5e294",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9c3955b302e54489b1325ffb0625321a2d5e294`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Oracle.Naming.Evidence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `MathDiscovery.Atom.IdAtoms.A_8cebf9493d0b1cd2` — import line 4; external provider; requires a separately pinned dependency.
- `MathDiscovery.Core.IdAtoms.A_ac5db8f52326a0f1` — import line 5; external provider; requires a separately pinned dependency.
- `MathDiscovery.Oracle.Naming.EventAtoms.A_b682f481daef9a4c` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NamingStateKind](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/declarations/namingstatekind--ae82aa71fa6bf40d602c3179.md) | 18 | `declaration-track:ae82aa71fa6bf40d602c31794f03661949ef28afd9f9115123760c2f6d644b46` |
| 2 | `inductive` | [NamingEventKind](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/declarations/namingeventkind--3d8d35d1f7b27d3fbd148350.md) | 31 | `declaration-track:3d8d35d1f7b27d3fbd1483503351710cee6861158486cd043f6db5703216a889` |
| 3 | `inductive` | [NamingActor](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/declarations/namingactor--f70c7cae150693d5f5b90b57.md) | 44 | `declaration-track:f70c7cae150693d5f5b90b57bee8b59598195a1c997c445795f491a113ae7343` |
| 4 | `structure` | [NamingVertex](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/declarations/namingvertex--b31e63fb811f4485342611e4.md) | 51 | `declaration-track:b31e63fb811f4485342611e462851090af65bf8bafdf3552d558080b10985efd` |
| 5 | `structure` | [NamingEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/declarations/namingedge--7e338fdf54d6eeca871ab7e5.md) | 57 | `declaration-track:7e338fdf54d6eeca871ab7e5c8f2dd2011ce710b0e1c5b88ee840b17ee1b957c` |
| 6 | `structure` | [NamingSquare](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/declarations/namingsquare--ec1b097cd3b8b1b9fc058ee9.md) | 66 | `declaration-track:ec1b097cd3b8b1b9fc058ee95b117c75bf798be6a92ff97f42219b66aa35a4dd` |
| 7 | `def` | [NamingSquare.topEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/declarations/namingsquare-topedge--556b95eb1fbadbad45c25f31.md) | 74 | `declaration-track:556b95eb1fbadbad45c25f31473977d38ddcd22b8e8c4aeec58c5ba9d16a27ec` |
| 8 | `def` | [NamingSquare.rightEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/declarations/namingsquare-rightedge--64b901828f7aef42105df9cd.md) | 83 | `declaration-track:64b901828f7aef42105df9cd8daaa1a214539098ffa111bc414b2d1fc2462d33` |
| 9 | `def` | [NamingSquare.bottomEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/declarations/namingsquare-bottomedge--5dc0225ffbdf7b9642c37eec.md) | 92 | `declaration-track:5dc0225ffbdf7b9642c37eecbb72b51c62b594459a4a9d8fad995cf59156c508` |
| 10 | `def` | [NamingSquare.leftEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/declarations/namingsquare-leftedge--86f1b364410a39a7b3fac475.md) | 101 | `declaration-track:86f1b364410a39a7b3fac475af758584dca99808fbf5a9107a7a0a224d5205c7` |
| 11 | `def` | [NamingSquare.Valid](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/declarations/namingsquare-valid--5ea7b250e0c4486fc07aa167.md) | 110 | `declaration-track:5ea7b250e0c4486fc07aa167372ca6df953f61a7ddb881d7bc770865032e7416` |
| 12 | `structure` | [NamingEventComplex](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variantd80c2341c811dc7dd2ba0fd060b7f280c0dae99837317c6f819081d39a504185.lean/declarations/namingeventcomplex--94e83e98df0930c08c4be25d.md) | 115 | `declaration-track:94e83e98df0930c08c4be25d7fca4152ffd9c0b73ed070be800647abf3fd177f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
