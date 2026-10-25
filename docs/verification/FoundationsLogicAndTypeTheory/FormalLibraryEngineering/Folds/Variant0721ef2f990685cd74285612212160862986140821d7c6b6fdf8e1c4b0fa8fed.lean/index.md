# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Folds.Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d493ec0a45ab072cabb2688f32b178ffed78d62",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d493ec0a45ab072cabb2688f32b178ffed78d62`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.BitVec.Lemmas` — import line 1; external provider; requires a separately pinned dependency.
- `Std.Data.Fin.Iterate` — import line 2; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Lemmas` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iunfoldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean/declarations/iunfoldr--6d4793c0f93d29f0de3e9daf.md) | 16 | `declaration-track:6d4793c0f93d29f0de3e9daf6ce7f6fcbda76f3e4b1ba1da9a408b78c6ab7feb` |
| 2 | `theorem` | [iunfoldr.fst_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean/declarations/iunfoldr-fst-eq--2d0a9e1d60acf47df8dfeed8.md) | 20 | `result-track:2d0a9e1d60acf47df8dfeed8f288bd2f5b9cb31b4735c5865fc07b37f7e755e6` |
| 3 | `theorem` | [iunfoldr.eq_test](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean/declarations/iunfoldr-eq-test--f65e0763343c2c03795075e6.md) | 33 | `result-track:f65e0763343c2c03795075e6b601fdc470a8776c5c4aca0edd8e9ad07f17a98e` |
| 4 | `theorem` | [iunfoldr_replace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean/declarations/iunfoldr-replace--3cb393edd1101534698e7fba.md) | 48 | `result-track:3cb393edd1101534698e7fbaf3e5a0971598ef524ede6ad359c786f152ca189c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
