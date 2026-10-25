# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Finite.Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad4f886bd423358ccd43d6af85b0ee58a9f752b0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad4f886bd423358ccd43d6af85b0ee58a9f752b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_on_of_finite_cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean/declarations/forall-on-of-finite-cover--fc501eeb1b49352bd34b0551.md) | 19 | `result-track:fc501eeb1b49352bd34b0551317d64aa220eae992cae3dbe77dc37b0bd3c48ee` |
| 2 | `theorem` | [forall_on_of_finite_cover_and_tail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean/declarations/forall-on-of-finite-cover-and-tail--db8a540386f6b2d33f4b0d74.md) | 30 | `result-track:db8a540386f6b2d33f4b0d74d540c62616765924d24eb34642a4706d3964f5d0` |
| 3 | `theorem` | [finite_range_does_not_imply_ray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean/declarations/finite-range-does-not-imply-ray--255122ef85b53b3a21b15a76.md) | 43 | `result-track:255122ef85b53b3a21b15a7671f0b2e64e2e26f09043fa6311a74c296ee45631` |
| 4 | `theorem` | [endpoints_do_not_cover_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean/declarations/endpoints-do-not-cover-interval--daa756c1fef4ce4bac12f85b.md) | 55 | `result-track:daa756c1fef4ce4bac12f85b71ddad2caa69e641adb074293193447908eaff56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
