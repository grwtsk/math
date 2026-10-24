# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ComplexZetaHalfPlane.Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85b22dd378dece3fd89f70e8ebb5c58a7a065d97",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85b22dd378dece3fd89f70e8ebb5c58a7a065d97`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ComplexDirichletSeries` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaComplexHalfPlane](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean/declarations/zetacomplexhalfplane--9da505fc7ea5ce7840dac8e4.md) | 16 | `declaration-track:9da505fc7ea5ce7840dac8e441b852971fc8268e0a9888e1985c76e0d29a001d` |
| 2 | `theorem` | [zetaComplexHalfPlane_summable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean/declarations/zetacomplexhalfplane-summable--e556f74e2286c274338743e4.md) | 20 | `result-track:e556f74e2286c274338743e45edde504280909224c6e4cd8a8ed95c4fb056a4d` |
| 3 | `def` | [zetaPartialComplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean/declarations/zetapartialcomplex--e757812c15412fed3ac20dc2.md) | 26 | `declaration-track:e757812c15412fed3ac20dc206af5d9d2cced821700f1b0528476eb5df674674` |
| 4 | `theorem` | [zetaPartialComplex_eq_range_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean/declarations/zetapartialcomplex-eq-range-sum--93132bdf74543e8cb13b933a.md) | 31 | `result-track:93132bdf74543e8cb13b933a66c9ce9ce1545d5621fd70fa54e8876ebcba9950` |
| 5 | `theorem` | [tendsto_zetaPartialComplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean/declarations/tendsto-zetapartialcomplex--0d0a4936e4cc1ad50c0870b4.md) | 49 | `result-track:0d0a4936e4cc1ad50c0870b4aaf4d3174e4f27043b73038c5472bb0d0a59a90a` |
| 6 | `def` | [zetaComplexHalfPlane_nonzero_target](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean/declarations/zetacomplexhalfplane-nonzero-target--129be9a299aa049bad788fb1.md) | 67 | `declaration-track:129be9a299aa049bad788fb1b5e069cf42c28a82fab6f1b20fe19e1eb7317acd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
