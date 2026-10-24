# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologySequenceLemmas.Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "302a7bb2044f29e55c860d19f0507d506716320d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `302a7bb2044f29e55c860d19f0507d506716320d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologySequence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.QuasiIso` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.DiagramLemmas.Four` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapSnakeInput](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/declarations/mapsnakeinput--7591079eda0758dd0a28a224.md) | 51 | `declaration-track:7591079eda0758dd0a28a22421407c9c02351814fd10dc9ebb969a636c5cb97e` |
| 2 | `lemma` | [δ_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/declarations/naturality--3eeb2c48699bfaf1eb949413.md) | 59 | `result-track:3eeb2c48699bfaf1eb949413b5590996ed3e180741dec9287335df6daefd42a5` |
| 3 | `def` | [composableArrows₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/declarations/composablearrows--531777081f7589dc062b8110.md) | 68 | `declaration-track:531777081f7589dc062b811047272b935024269cadd935ad4eab6db2a8ef827a` |
| 4 | `lemma` | [composableArrows₂_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/declarations/composablearrows-exact--2a2c8578defd9cfd1d64b6f9.md) | 71 | `result-track:2a2c8578defd9cfd1d64b6f952e2609d66d3fd06d13c14befda269c8fe1e3bf2` |
| 5 | `def` | [composableArrows₅](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/declarations/composablearrows--f187aaf601f9619e120e9813.md) | 79 | `declaration-track:f187aaf601f9619e120e98137eb415da0532d6f71861bea66892c10f9db751d8` |
| 6 | `lemma` | [composableArrows₅_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/declarations/composablearrows-exact--5c3b138b24f4bd75a9c2dbd8.md) | 83 | `result-track:5c3b138b24f4bd75a9c2dbd85040093d9022f17280947e2323100496dc01d7f6` |
| 7 | `def` | [mapComposableArrows₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/declarations/mapcomposablearrows--53938b820230b783944c07fe.md) | 93 | `declaration-track:53938b820230b783944c07fea355ed98814f6003390e6f2edf99c58f0673f777` |
| 8 | `def` | [mapComposableArrows₅](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/declarations/mapcomposablearrows--7837f026b672dd219db57643.md) | 104 | `declaration-track:7837f026b672dd219db5764386beefe61eb2930e85369893abe5500ae61aaf28` |
| 9 | `lemma` | [mono_homologyMap_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/declarations/mono-homologymap--3b778219b79dab8a811eb76c.md) | 116 | `result-track:3b778219b79dab8a811eb76c90cfaf3cea5ad5d769cda9b20218a338a1d4bb51` |
| 10 | `lemma` | [epi_homologyMap_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/declarations/epi-homologymap--60be3dd7e0a60112ea32d956.md) | 136 | `result-track:60be3dd7e0a60112ea32d956fb505dfa47b6f8d3b5adfecfcf4b959aaf3e33c3` |
| 11 | `lemma` | [isIso_homologyMap_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/declarations/isiso-homologymap--8e87eff83e173b703b7c4cdd.md) | 157 | `result-track:8e87eff83e173b703b7c4cdd0b4b3a5075dd6e257993a54e60565793e9bc2f0a` |
| 12 | `lemma` | [quasiIso_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant569ab76bf5c967ff7b5b63cde83cef558277562fbd630040501809f7134acbd6.lean/declarations/quasiiso--0c799b44da858ebdeafeef69.md) | 171 | `result-track:0c799b44da858ebdeafeef696f0d7b0e1d302c532c1855c983ab076bacaa399c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
