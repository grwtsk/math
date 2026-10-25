# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GramField.Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bb05ac7f88f478537efe7a72d76e69c8f78e630",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bb05ac7f88f478537efe7a72d76e69c8f78e630`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.CohomologyLattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveGram](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486.lean/declarations/positivegram--d99a9871ab768e5f686edd1a.md) | 27 | `declaration-track:d99a9871ab768e5f686edd1a19fc26a38ee03154c202a77dc93c511b7a0bfc8a` |
| 2 | `def` | [squaredNorm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486.lean/declarations/squarednorm--fd1cca12fd0da4a5aa8bbf40.md) | 40 | `declaration-track:fd1cca12fd0da4a5aa8bbf40ee89025d6d97411f2a09d97a07967659424c2549` |
| 3 | `def` | [squaredDistance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486.lean/declarations/squareddistance--514c3df70b3fc90323a881a9.md) | 43 | `declaration-track:514c3df70b3fc90323a881a90f5a85d985b530a9f375d446c2d3182b602481df` |
| 4 | `theorem` | [squaredNorm_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486.lean/declarations/squarednorm-nonnegative--90b97c7c23f8199da00c533f.md) | 46 | `result-track:90b97c7c23f8199da00c533fa906a5165b47512a4a1766df96530231f931337b` |
| 5 | `theorem` | [squaredNorm_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486.lean/declarations/squarednorm-eq-zero-iff--2c7d0a6bb620d1e4aeea6a32.md) | 52 | `result-track:2c7d0a6bb620d1e4aeea6a32300ee0726a8af65213d20e8b485c979e31dcc6d8` |
| 6 | `theorem` | [squaredDistance_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486.lean/declarations/squareddistance-self--6db8ac39acdb2ebde3bad40b.md) | 63 | `result-track:6db8ac39acdb2ebde3bad40b2bd5b99445cc9fea07ec989ba5a8471a80ead229` |
| 7 | `abbrev` | [GramField](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant1c72efdfd3f2898a90932be4003f6d5d9ba21c55e2e3803e3e2a945580e10486.lean/declarations/gramfield--1f7538da7e4e76ad1389a961.md) | 70 | `declaration-track:1f7538da7e4e76ad1389a9610459e950786febd9a7c7c71069cd0359f7a03e1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
