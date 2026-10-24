# Verification target: GRWTSK.Algebra.Cardinal.Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53475c66b72673367dc2a4474305ac9c89a44b06",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Cardinal/Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Cardinal/Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Cardinal/Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53475c66b72673367dc2a4474305ac9c89a44b06`.

Source path: `GRWTSK/Algebra/Cardinal/Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Cardinal/Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Fintype` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finsupp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cardinalMk_eq_max_lift](../../../../mathematics/Algebra/Cardinal/Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5.lean/declarations/cardinalmk-eq-max-lift--361f766960c37117fc47671f.md) | 38 | `result-track:361f766960c37117fc47671fee7883d889a807633aae492df2f7b1b2f7fbe772` |
| 2 | `theorem` | [cardinalMk_eq_lift](../../../../mathematics/Algebra/Cardinal/Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5.lean/declarations/cardinalmk-eq-lift--216f29d7baf31d09a37da7cd.md) | 46 | `result-track:216f29d7baf31d09a37da7cd6a00151cec47340a3edf57f489a236cb77d72445` |
| 3 | `theorem` | [cardinalMk_eq_one](../../../../mathematics/Algebra/Cardinal/Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5.lean/declarations/cardinalmk-eq-one--6171d8598d2af165d0ca0b49.md) | 52 | `result-track:6171d8598d2af165d0ca0b49a861596203a6f9d4df5c72e8d27c44c3311f0f0b` |
| 4 | `theorem` | [cardinalMk_le_max_lift](../../../../mathematics/Algebra/Cardinal/Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5.lean/declarations/cardinalmk-le-max-lift--f6a4d60e12415635fca5a71c.md) | 54 | `result-track:f6a4d60e12415635fca5a71c5153427a928b35a47b321858bdca794178a82f69` |
| 5 | `theorem` | [cardinalMk_eq_max](../../../../mathematics/Algebra/Cardinal/Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5.lean/declarations/cardinalmk-eq-max--e69d3f93906592e772b0517b.md) | 68 | `result-track:e69d3f93906592e772b0517b03cb8dddd363ac58574244dc3ccb8df2b5c78091` |
| 6 | `theorem` | [cardinalMk_eq](../../../../mathematics/Algebra/Cardinal/Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5.lean/declarations/cardinalmk-eq--1bb1e77723a8ff5e14248cee.md) | 73 | `result-track:1bb1e77723a8ff5e14248cee11ff921ca4d18bd3c107f6d1549c6266a5e2bf18` |
| 7 | `theorem` | [cardinalMk_le_max](../../../../mathematics/Algebra/Cardinal/Variant0a785d93534dec58a5a93bd6f7b77bcdba7cf9536d2264aadeb46b414afed7b5.lean/declarations/cardinalmk-le-max--542a5446ef9849deabdc355d.md) | 77 | `result-track:542a5446ef9849deabdc355d1a58d37e9febb77d4d5ab78b3d082e37063d9199` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
