# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4e51e42c6f9dbebfb783a8ea2504ec2a6213609",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4e51e42c6f9dbebfb783a8ea2504ec2a6213609`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Util.TermUnsafe` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Lean.NameMapAttribute` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isAutoDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean/declarations/isautodecl--7920660f989fe6e1104ebe80.md) | 33 | `declaration-track:7920660f989fe6e1104ebe80a683b26795d600fac1ca5b4ac71b3f981f754713` |
| 2 | `structure` | [Linter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean/declarations/linter--9ebe9ef9980c15aba281c7cc.md) | 50 | `declaration-track:9ebe9ef9980c15aba281c7cc4ecf2689643e1744c8a5190d37375a0c75439841` |
| 3 | `structure` | [NamedLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean/declarations/namedlinter--a2ea68fbe431f685df45061e.md) | 62 | `declaration-track:a2ea68fbe431f685df45061e4125ea258435cc488647cffa82fa63c5021d7896` |
| 4 | `def` | [getLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean/declarations/getlinter--c8902095f73888c71fb2b569.md) | 69 | `declaration-track:c8902095f73888c71fb2b5698440cb9cb8e50643b72cadbab466e56525f57acd` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean/declarations/initialize--4dcf86e4a739db64920071dc.md) | 73 | `declaration-track:4dcf86e4a739db64920071dc6b96128264d644ca8c8af9d81b53553ed8b34c34` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean/declarations/syntax--4406e7a639eaa0de3b1ad11a.md) | 91 | `declaration-track:4406e7a639eaa0de3b1ad11a358eac45098184aff38af2abb53553e87cae5c40` |
| 7 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean/declarations/initialize--839f5405a9eb10b9be840d34.md) | 93 | `declaration-track:839f5405a9eb10b9be840d341b127c0fae0ac0ba1500569607c2a5e899b97507` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean/declarations/syntax--7479cc80576f6c5f7abfba69.md) | 111 | `declaration-track:7479cc80576f6c5f7abfba69519111842ccce349d6fb21d9a4b8cf562ac4b230` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean/declarations/initialize--d6e4eead0590d1ef65993a96.md) | 114 | `declaration-track:d6e4eead0590d1ef65993a9646dc187936b84f11e8e2fe6b2f401996309d1920` |
| 10 | `def` | [shouldBeLinted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b083a3880835278a88623f9ce01f9638b4c0e47b4b1c29f63114a27eebddded.lean/declarations/shouldbelinted--99b7385e88c498e93355c028.md) | 130 | `declaration-track:99b7385e88c498e93355c028bc784e7fc1fd2b6d020345e9f7e499b2234d435f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
