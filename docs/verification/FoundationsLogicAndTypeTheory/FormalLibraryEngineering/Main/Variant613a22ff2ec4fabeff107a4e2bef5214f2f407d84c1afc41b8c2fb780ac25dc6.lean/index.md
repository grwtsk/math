# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant613a22ff2ec4fabeff107a4e2bef5214f2f407d84c1afc41b8c2fb780ac25dc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fb09f539f216bf57e10c7faeeee3ff357d0830c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant613a22ff2ec4fabeff107a4e2bef5214f2f407d84c1afc41b8c2fb780ac25dc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant613a22ff2ec4fabeff107a4e2bef5214f2f407d84c1afc41b8c2fb780ac25dc6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant613a22ff2ec4fabeff107a4e2bef5214f2f407d84c1afc41b8c2fb780ac25dc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fb09f539f216bf57e10c7faeeee3ff357d0830c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant613a22ff2ec4fabeff107a4e2bef5214f2f407d84c1afc41b8c2fb780ac25dc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant613a22ff2ec4fabeff107a4e2bef5214f2f407d84c1afc41b8c2fb780ac25dc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.AlphaShareBuilder` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Simproc` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.App` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Have` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Forall` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant613a22ff2ec4fabeff107a4e2bef5214f2f407d84c1afc41b8c2fb780ac25dc6.lean/declarations/builtin-initialize--6260041ec09591e6e0498c60.md) | 16 | `declaration-track:6260041ec09591e6e0498c6023e0a3fc306203031c4a528a50a8097aea736c3c` |
| 2 | `def` | [simpStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant613a22ff2ec4fabeff107a4e2bef5214f2f407d84c1afc41b8c2fb780ac25dc6.lean/declarations/simpstep--9154336836ad303bd4ed835c.md) | 20 | `declaration-track:9154336836ad303bd4ed835c6074873836de85807aff8ae6aff775a64ce9a55f` |
| 3 | `abbrev` | [cacheResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant613a22ff2ec4fabeff107a4e2bef5214f2f407d84c1afc41b8c2fb780ac25dc6.lean/declarations/cacheresult--5d2eced7135e7d398800c5c3.md) | 36 | `declaration-track:5d2eced7135e7d398800c5c3f6372ac19cdd6e2da148f864862f4064b1a441c1` |
| 4 | `def` | [simpImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant613a22ff2ec4fabeff107a4e2bef5214f2f407d84c1afc41b8c2fb780ac25dc6.lean/declarations/simpimpl--5369cb500244bdf961a30156.md) | 45 | `declaration-track:5369cb500244bdf961a301569ca45fa273a97c8de78fb5695bc1d08cb4742ba0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
