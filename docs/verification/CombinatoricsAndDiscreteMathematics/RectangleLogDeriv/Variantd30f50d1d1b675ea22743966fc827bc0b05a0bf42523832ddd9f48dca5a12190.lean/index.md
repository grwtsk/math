# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RectangleLogDeriv.Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd09b31cc78dfe7a2d5f72f000c96adf33231334",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd09b31cc78dfe7a2d5f72f000c96adf33231334`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ResidueCalcOnRectangles` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [residueTheorem_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean/declarations/residuetheorem-finset--ea6b4222e0e4f931a1c922e4.md) | 39 | `result-track:ea6b4222e0e4f931a1c922e4b93e14b0dd3dafdab17d9342adeebb73acfba941` |
| 2 | `theorem` | [finite_zeros_rectangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean/declarations/finite-zeros-rectangle--9a163b32e6a178753dc9e834.md) | 151 | `result-track:9a163b32e6a178753dc9e8348af4fdfc4ae28d9f773df455f71bf877c3609a68` |
| 3 | `theorem` | [rectangleIntegral'_mul_logDeriv_of_poles](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean/declarations/rectangleintegral-mul-logderiv-of-poles--d4d0de16df754e6f3e822a5d.md) | 176 | `result-track:d4d0de16df754e6f3e822a5d3e58796dde51bff477576761754c2352876cded2` |
| 4 | `theorem` | [rectangleIntegral'_mul_logDeriv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean/declarations/rectangleintegral-mul-logderiv--d37f119f957b5da37ed5edaf.md) | 360 | `result-track:d37f119f957b5da37ed5edaf0aa3e6ff05d4990833e13b8ca8933cba799a3ea9` |
| 5 | `theorem` | [rectangleIntegral'_mul_logDeriv'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean/declarations/rectangleintegral-mul-logderiv--0f9ff471727989c1470895a8.md) | 373 | `result-track:0f9ff471727989c1470895a8d032a8c1f266e181045b4f0fe71412b6d01e2bc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
