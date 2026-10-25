# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Induction.Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49bfb8b6e392784005edbb05d5ec0696dbd5024a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49bfb8b6e392784005edbb05d5ec0696dbd5024a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.WHNF` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getTargetArity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/declarations/gettargetarity--3ed1d0d77f6cdcdc40ac5549.md) | 26 | `declaration-track:3ed1d0d77f6cdcdc40ac5549ccb917817c9fdd2e05f017349016527955ca8f80` |
| 2 | `def` | [addRecParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/declarations/addrecparams--c6e564568747d2fdda35d5e8.md) | 31 | `declaration-track:c6e564568747d2fdda35d5e89d15d13da6177bee01755a3a99a5f9556eeefdcb` |
| 3 | `structure` | [InductionSubgoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/declarations/inductionsubgoal--23d7b8b7fdefd63cfa875939.md) | 48 | `declaration-track:23d7b8b7fdefd63cfa875939fdb882b9ed907567e864ce8033908d4d778196d8` |
| 4 | `def` | [getTypeBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/declarations/gettypebody--ba447d61af09a655a942b77c.md) | 54 | `declaration-track:ba447d61af09a655a942b77c9c1262d4ee2dd47a83debf093483266eb3cd82bf` |
| 5 | `structure` | [AltVarNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/declarations/altvarnames--79669e6e26911d78d5a64d8d.md) | 60 | `declaration-track:79669e6e26911d78d5a64d8d818673550bb8cdac26f4822c16608150b9ca9494` |
| 6 | `def` | [finalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/declarations/finalize--4bb1df65a733ea4ac31c25fe.md) | 65 | `declaration-track:4bb1df65a733ea4ac31c25fee66aa5d6f58b5328a4accf1cca8275a395e85ffb` |
| 7 | `def` | [throwUnexpectedMajorType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/declarations/throwunexpectedmajortype--66b81db1fa02a84e367df932.md) | 136 | `declaration-track:66b81db1fa02a84e367df93288c16afb29205d90f1008c8b4e07c2954471f8c8` |
| 8 | `def` | [getMajorTypeIndices](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/declarations/getmajortypeindices--a69c93f1f3bc9b4865f9ee0f.md) | 144 | `declaration-track:a69c93f1f3bc9b4865f9ee0fd5f7f38385a762e3b41f028a0116761e34cfd391` |
| 9 | `def` | [mkRecursorAppPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/declarations/mkrecursorappprefix--4fa51974ed7107969cc8fec2.md) | 174 | `declaration-track:4fa51974ed7107969cc8fec2806841bd4c7635eccfcd475a47cc55ec8fbbdf77` |
| 10 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InductionSubgoal.Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.Lean.MVarId.induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-induc--db263d7a7e9f9ff150edd3b6.md) | 211 | `declaration-track:db263d7a7e9f9ff150edd3b61bbd5e56d2204c58aba091ce4a79d79dd9652c34` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/declarations/builtin-initialize--8460bb73ead6ecd2d16a05d9.md) | 250 | `declaration-track:8460bb73ead6ecd2d16a05d952901a5de8074ac9fead0d47b7a98c0b1d8d656d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
