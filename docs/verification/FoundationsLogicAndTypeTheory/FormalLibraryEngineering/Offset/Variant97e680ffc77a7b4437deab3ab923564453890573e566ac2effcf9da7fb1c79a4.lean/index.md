# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Offset.Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccd017b25966749d694b52471bf9e2afb15ff3a9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccd017b25966749d694b52471bf9e2afb15ff3a9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.NatInstTesters` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Util.SafeExponentiation` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [withInstantiatedMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean/declarations/withinstantiatedmvars--46efb1c7d43d854f769c468f.md) | 25 | `declaration-track:46efb1c7d43d854f769c468fe5cb8313f895c9a67fe592bf2a964553b1382c55` |
| 2 | `def` | [evalNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean/declarations/evalnat--def1688595c6032362ce6d54.md) | 36 | `declaration-track:def1688595c6032362ce6d54ec17d918577a3183e283c5bd125ab2f50bda182d` |
| 3 | `def` | [matchesInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean/declarations/matchesinstance--16f6166cc5925d6e3970836a.md) | 80 | `declaration-track:16f6166cc5925d6e3970836a9477ac58918bda17fde0b92d757992a12f1a3e87` |
| 4 | `def` | [getOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean/declarations/getoffset--33d8f895e32ddd82cd59947e.md) | 91 | `declaration-track:33d8f895e32ddd82cd59947e2a60c7e962415ca589994b4643b600c7e464ac37` |
| 5 | `def` | [isOffset?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean/declarations/isoffset--9f8c071b7ed1d66ce833fd34.md) | 97 | `declaration-track:9f8c071b7ed1d66ce833fd349408a70af9292a300fc90099c709679cdc0043b0` |
| 6 | `def` | [isNatZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean/declarations/isnatzero--d289e7734e1cae19ed105fed.md) | 113 | `declaration-track:d289e7734e1cae19ed105fede0315f1007f49d5d5ef6d1f4de699a76abe3518d` |
| 7 | `def` | [mkOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean/declarations/mkoffset--2d560ff625ee84bfb6ab10b7.md) | 118 | `declaration-track:2d560ff625ee84bfb6ab10b7c5936fefef8239b1693cff1ca0a9d4984d00d566` |
| 8 | `def` | [isDefEqOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Variant97e680ffc77a7b4437deab3ab923564453890573e566ac2effcf9da7fb1c79a4.lean/declarations/isdefeqoffset--bb7ea4f24b170a2836f3187e.md) | 126 | `declaration-track:bb7ea4f24b170a2836f3187ee55c7feced6cd658f1382d11df54748e628256f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
