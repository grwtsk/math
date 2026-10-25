# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirichletInverse.Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad1096fbeef7dbf8f9a39f7870048c735c18e24a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad1096fbeef7dbf8f9a39f7870048c735c18e24a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.DirichletCauchyProductGeneric` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasDirichletInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean/declarations/hasdirichletinverse--414449600f30b3dd8e16af62.md) | 23 | `declaration-track:414449600f30b3dd8e16af624269ed66b9977976d376a092122d4d82652420c7` |
| 2 | `theorem` | [one_has_mobius_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean/declarations/one-has-mobius-inverse--6490629235febf5f78d7dd26.md) | 27 | `result-track:6490629235febf5f78d7dd2680a2c15c264b594061e78d69e785fe3214b941d6` |
| 3 | `theorem` | [dirichletSeries_mul_inverse_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean/declarations/dirichletseries-mul-inverse-eq-one--7d7cfe9d60cfc16b8f72637d.md) | 31 | `result-track:7d7cfe9d60cfc16b8f72637dd8895d830834abb7ea830cf3e8691d01bcdf45e9` |
| 4 | `theorem` | [dirichletSeries_ne_zero_of_has_absSummable_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean/declarations/dirichletseries-ne-zero-of-has-abssummable-inverse--c781a2b0707ecd416b626da3.md) | 42 | `result-track:c781a2b0707ecd416b626da34057c81eda1c2fef9b85531c83be39d7f61b36a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
