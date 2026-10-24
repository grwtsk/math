# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.GeometryOfNumbers.Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1a4241a3d8ffd6729b50537933ba6a2d45e7cc7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1a4241a3d8ffd6729b50537933ba6a2d45e7cc7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Body` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Measure` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.FundamentalDomain` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_pair_mem_lattice_not_disjoint_vadd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean/declarations/exists-pair-mem-lattice-not-disjoint-vadd--d33178bacd770a331ef08ee4.md) | 48 | `result-track:d33178bacd770a331ef08ee42f972a03f23925ead67c061e9d416b81bbb1f862` |
| 2 | `theorem` | [exists_ne_zero_mem_lattice_of_measure_mul_two_pow_lt_measure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean/declarations/exists-ne-zero-mem-lattice-of-measure-mul-two-pow-lt-measure--05e5b73771aeb191ff7419aa.md) | 61 | `result-track:05e5b73771aeb191ff7419aa09faf8966d8a0168ec49b8e6ffb86ac8f34de45b` |
| 3 | `theorem` | [exists_ne_zero_mem_lattice_of_measure_mul_two_pow_le_measure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant48a5f38cb485bcfd0216a78c1f7e822166642d05b2049a82e9ed0d0dd06f69d1.lean/declarations/exists-ne-zero-mem-lattice-of-measure-mul-two-pow-le-measure--8d350a0bc71a009a3fbd8535.md) | 88 | `result-track:8d350a0bc71a009a3fbd853555663c979eb9a30b4f9fe604999b266cd0b72986` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
