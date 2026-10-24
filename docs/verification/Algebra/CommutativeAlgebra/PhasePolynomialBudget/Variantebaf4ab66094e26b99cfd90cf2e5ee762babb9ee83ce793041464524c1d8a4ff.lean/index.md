# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PhasePolynomialBudget.Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "042ebba1bdda0d2faa19767b1b6b631923ec03bc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `042ebba1bdda0d2faa19767b1b6b631923ec03bc`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Prototype` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phasePolynomialCoefficient](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean/declarations/phasepolynomialcoefficient--2730cd9634382ae2b2705ac0.md) | 22 | `declaration-track:2730cd9634382ae2b2705ac08eaf5fa56aaa57fe692244c8cc7995d6431dae69` |
| 2 | `theorem` | [phasePolynomialCoefficient_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean/declarations/phasepolynomialcoefficient-pos--67dc544ded044294fe57cde3.md) | 25 | `result-track:67dc544ded044294fe57cde3829dd1924099e8d08f5d59935e3f0fb2bb6adb53` |
| 3 | `theorem` | [positiveMass_ge_taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean/declarations/positivemass-ge-taylor--753cbb5b20167d95fc85d9c1.md) | 30 | `result-track:753cbb5b20167d95fc85d9c18090e0fcc7a938dca9abcb1335ca1ecff0f7c3e7` |
| 4 | `theorem` | [positiveMass_gt_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean/declarations/positivemass-gt-polynomial--63c6784480634167423a30b1.md) | 45 | `result-track:63c6784480634167423a30b15c01c6ed62e5a65ad7f8b38d2ccd346dbf328ed6` |
| 5 | `theorem` | [positiveMass_eventually_gt_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean/declarations/positivemass-eventually-gt-polynomial--79593d5b6d6885aecc9ff2e9.md) | 62 | `result-track:79593d5b6d6885aecc9ff2e93b942b467ab00e943f768dab1c94a4f0f5375b5f` |
| 6 | `theorem` | [positiveMass_not_eventually_polynomial_bounded](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean/declarations/positivemass-not-eventually-polynomial-bounded--c4acde2990df75b1d733084c.md) | 70 | `result-track:c4acde2990df75b1d733084c44bf480cc8a5f76be00d4b816df3bdfe714ca269` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
