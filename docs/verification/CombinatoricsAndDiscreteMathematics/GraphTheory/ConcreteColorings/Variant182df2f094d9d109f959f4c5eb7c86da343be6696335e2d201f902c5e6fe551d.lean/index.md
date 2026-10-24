# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcreteColorings.Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41fb3938969e17ccbe2920e5b6263e6b2e252094",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41fb3938969e17ccbe2920e5b6263e6b2e252094`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Circulant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Coloring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Hasse` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Parity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [two_le_chromaticNumber_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/declarations/two-le-chromaticnumber-of-adj--d2c7b78366eecf488bf45960.md) | 34 | `result-track:d2c7b78366eecf488bf4596005735d7e9d8f27fa60cc42e9fde3054edcf5836f` |
| 2 | `def` | [pathGraph.bicoloring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/declarations/pathgraph-bicoloring--49f220248783126569e885d7.md) | 43 | `declaration-track:49f220248783126569e885d7fdf838a9bcbe62701b708a71f3879dee1335e80a` |
| 3 | `def` | [pathGraph_two_embedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/declarations/pathgraph-two-embedding--39115473b2bf57798d7a54ec.md) | 51 | `declaration-track:39115473b2bf57798d7a54ec38270c24e9d5e57ec4b022ae5ee7dff877caa7e9` |
| 4 | `theorem` | [chromaticNumber_pathGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/declarations/chromaticnumber-pathgraph--ef5345c7016912473ea328fa.md) | 61 | `result-track:ef5345c7016912473ea328fa0a4ddbb657c2c3baf4a46cabe773f07ccbe46fc4` |
| 5 | `theorem` | [Coloring.even_length_iff_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/declarations/coloring-even-length-iff-congr--860b0b56d6a24f982dbe802d.md) | 69 | `result-track:860b0b56d6a24f982dbe802d4efda7bf663530b1a9c9903de8a78c369dad1337` |
| 6 | `theorem` | [Coloring.odd_length_iff_not_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/declarations/coloring-odd-length-iff-not-congr--2c3fbc24da3b742c10bec841.md) | 81 | `result-track:2c3fbc24da3b742c10bec841ced5cb3a2749159c9ac07c75b3b0e7e4b8d98f7a` |
| 7 | `theorem` | [Walk.three_le_chromaticNumber_of_odd_loop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/declarations/walk-three-le-chromaticnumber-of-odd-loop--1a0b5e009b118bfaa048a2f7.md) | 87 | `result-track:1a0b5e009b118bfaa048a2f7ac8ae36ab040523ccb7d62b7645d7830d6ed5685` |
| 8 | `def` | [cycleGraph.bicoloring_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/declarations/cyclegraph-bicoloring-of-even--aca745cc7aac35d8883c9475.md) | 97 | `declaration-track:aca745cc7aac35d8883c94750fda68672ec8223e2ae43377e2088b961207db1a` |
| 9 | `theorem` | [chromaticNumber_cycleGraph_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/declarations/chromaticnumber-cyclegraph-of-even--36400c7b0ea998528579aed8.md) | 113 | `result-track:36400c7b0ea998528579aed88121659915172cfc731ef8d1ddefcb152aa6c33d` |
| 10 | `def` | [cycleGraph.tricoloring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/declarations/cyclegraph-tricoloring--cba75d491913bd1b08730f85.md) | 123 | `declaration-track:cba75d491913bd1b08730f853486fa87c12c25515b5b03632acd2c23ba47d68a` |
| 11 | `theorem` | [chromaticNumber_cycleGraph_of_odd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Variant182df2f094d9d109f959f4c5eb7c86da343be6696335e2d201f902c5e6fe551d.lean/declarations/chromaticnumber-cyclegraph-of-odd--5bdf031b9c7968dcd0c0cd06.md) | 150 | `result-track:5bdf031b9c7968dcd0c0cd069dc16647b366d0372f4496edf8519dec4cc93fca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
