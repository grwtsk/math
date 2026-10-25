# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15de5b9574ea68836ca2f8b7f530b902477046e6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15de5b9574ea68836ca2f8b7f530b902477046e6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Monoidal.Normalize` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Monoidal.PureCoherence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoidalNf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc.lean/declarations/monoidalnf--77faddd324aac8eb436657d9.md) | 31 | `declaration-track:77faddd324aac8eb436657d909e8c4ec51a0b83c22ce0c7dfef7836f9975cd7e` |
| 2 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc.lean/declarations/elab--ca993ec22a5473546a8dfdf7.md) | 35 | `declaration-track:ca993ec22a5473546a8dfdf7805eedfd57876009638b7d934e32981401332c85` |
| 3 | `def` | [monoidal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc.lean/declarations/monoidal--9dc9342a5e60ee23c1ecb222.md) | 48 | `declaration-track:9dc9342a5e60ee23c1ecb2226f7306697e1a0292711dd0766972536e8fa3e4b8` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc.lean/declarations/elab--99f912735dcfa4ae1296767b.md) | 52 | `declaration-track:99f912735dcfa4ae1296767b91995036c1b24678efba9527467cb9fdfed13729` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
