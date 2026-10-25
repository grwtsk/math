# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Apply.Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "649426cbbe5bf47dcd5cd4f8ba256bc963ec3cb3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `649426cbbe5bf47dcd5cd4f8ba256bc963ec3cb3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.AppBuilder` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getExpectedNumArgsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/getexpectednumargsaux--a42d411a4c5453dccd93233a.md) | 29 | `declaration-track:a42d411a4c5453dccd93233a5f214d0e3dd3388c46bc8e338e3b2b38dff54a8e` |
| 2 | `def` | [getExpectedNumArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/getexpectednumargs--31e273672964011f2e4ffb0b.md) | 33 | `declaration-track:31e273672964011f2e4ffb0bd0185b69b4881e9802b7e890c31a2e979b74f9fa` |
| 3 | `def` | [throwApplyError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/throwapplyerror--05054b1a44ab84a4c9336b09.md) | 37 | `declaration-track:05054b1a44ab84a4c9336b09ba25619db4c33a1e76f449e1dff8bafaed494c3f` |
| 4 | `def` | [synthAppInstances](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/synthappinstances--ed536569e230f9d965e7d65e.md) | 48 | `declaration-track:ed536569e230f9d965e7d65e6614961102de3a979b6e9b6f2a5b65f78c6ebed5` |
| 5 | `def` | [appendParentTag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/appendparenttag--18c564a703b116a9dc2a230e.md) | 116 | `declaration-track:18c564a703b116a9dc2a230e5c04c6017b4e65047b79b7b5fbfec3f97e6fafc5` |
| 6 | `def` | [postprocessAppMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/postprocessappmvars--233c66e553361b4fe252896d.md) | 135 | `declaration-track:233c66e553361b4fe252896d2990dd53af4ee67fa273342b06df4b6227f78207` |
| 7 | `def` | [dependsOnOthers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/dependsonothers--e1efb7b533b2cef63535dcc7.md) | 140 | `declaration-track:e1efb7b533b2cef63535dcc718e8fc31e70eba1d76b7fc8585ff541882739ba0` |
| 8 | `def` | [partitionDependentMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/partitiondependentmvars--278f7fc3940ee399f809c679.md) | 150 | `declaration-track:278f7fc3940ee399f809c6795b5771e87c72a7f3a06ac7065c5752b5bb5d160c` |
| 9 | `def` | [reorderGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/reordergoals--4635961c534bca5333e8e603.md) | 158 | `declaration-track:4635961c534bca5333e8e6030461069f3ba1298c699b96bd9b5dc25f952e6a5a` |
| 10 | `def` | [isDefEqApply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/isdefeqapply--157e976eb22b3399d6628bb7.md) | 168 | `declaration-track:157e976eb22b3399d6628bb70ba19d82218766fd1daa0bd1366b359c94811a13` |
| 11 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetExpectedNumArgsAux.Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.Lean.MVarId.apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getex--bc8f2fe4c6a7e698ba82462a.md) | 177 | `declaration-track:bc8f2fe4c6a7e698ba82462ab7c2cb8d07030b5fb8604c732cc331684c1f2a30` |
| 12 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetExpectedNumArgsAux.Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.Lean.MVarId.applyConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getex--a5c9666570ad5b38b54327a1.md) | 242 | `declaration-track:a5c9666570ad5b38b54327a15e315515b25344f48815992cf3080a4fa69c43e6` |
| 13 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetExpectedNumArgsAux.Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.Lean.MVarId.applyN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getex--06bb9af8c28c38471076c64a.md) | 246 | `declaration-track:06bb9af8c28c38471076c64afee66bd281079d75c6259cc7d7270401c52acfc2` |
| 14 | `def` | [splitAndCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/splitandcore--8303052355d5af64373bbd7b.md) | 265 | `declaration-track:8303052355d5af64373bbd7b2e8c2f4603984c4a73938a9ac8d7f8a67d414b2a` |
| 15 | `abbrev` | [splitAnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/splitand--e1d88a2025d587fdf96842b7.md) | 291 | `declaration-track:e1d88a2025d587fdf96842b717641fd4ab792efd9cd4f7f339a47f327cdec33a` |
| 16 | `def` | [exfalso](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/exfalso--ad27585a2afba357de27d021.md) | 294 | `declaration-track:ad27585a2afba357de27d021904093822147ecde9b51e26e472226532c06ff84` |
| 17 | `def` | [nthConstructor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/nthconstructor--8f117bf612830969a343a0fe.md) | 308 | `declaration-track:8f117bf612830969a343a0fecf6b888f546a87345aa02587b13ff1b4ef7ffad7` |
| 18 | `def` | [iffOfEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/iffofeq--bd58bddbbba4ed49a34e868c.md) | 330 | `declaration-track:bd58bddbbba4ed49a34e868c0a9936abb8644d6850b97671a9c06f8979da28f4` |
| 19 | `def` | [propext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/propext--12335489d97cb85951adbce1.md) | 340 | `declaration-track:12335489d97cb85951adbce158515d7b0d25dfc3b9f26f0851011a1bff9cd0c2` |
| 20 | `def` | [proofIrrelHeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/proofirrelheq--f87906a8c4f2d3e1cc61bdfa.md) | 357 | `declaration-track:f87906a8c4f2d3e1cc61bdfa1fbf4b4f485bab4c8690e5c560b34d81f33b15d4` |
| 21 | `def` | [subsingletonElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/declarations/subsingletonelim--4932462e726b241b093a3b34.md) | 376 | `declaration-track:4932462e726b241b093a3b34350a6254790455dd917b3d5679ba47d86d345d11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
