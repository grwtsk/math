# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ab.Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df056d14e0e5280a97db0723f9194a1977e250c5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df056d14e0e5280a97db0723f9194a1977e250c5`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Abelian` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Kernels` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Exact` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ab_zero_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/ab-zero-apply--18aae362677eb6d8193d18b6.md) | 47 | `result-track:18aae362677eb6d8193d18b621f31e811d6c40bd7a76036d2e931e614825dda4` |
| 2 | `def` | [abToCycles](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/abtocycles--0fa5bd0c82409c1aa359a1df.md) | 53 | `declaration-track:0fa5bd0c82409c1aa359a1dfe889a27024256ca30a0e0e9cd1089231ead5e0d5` |
| 3 | `def` | [abLeftHomologyData](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/ablefthomologydata--d11609d55f168c5482d4ab06.md) | 59 | `declaration-track:d11609d55f168c5482d4ab061fd3ca91734e722b026b56c155d80017765a83df` |
| 4 | `lemma` | [abLeftHomologyData_f'](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/ablefthomologydata-f--6b97f073b48b916a9125842a.md) | 76 | `result-track:6b97f073b48b916a9125842a5ce8578c0347aa277690fcb199078e808a28ba7b` |
| 5 | `def` | [abCyclesIso](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/abcyclesiso--cd5b3938922e739ebbd9f00f.md) | 81 | `declaration-track:cd5b3938922e739ebbd9f00f70788d02e3920284e0b15f5fbc1b97cc2fcbb6e8` |
| 6 | `lemma` | [abCyclesIso_inv_apply_iCycles](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/abcyclesiso-inv-apply-icycles--8b38ced84cb33aed61258354.md) | 89 | `result-track:8b38ced84cb33aed61258354eb415c1105c7219651276ff4f301afc6fd633229` |
| 7 | `def` | [abHomologyIso](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/abhomologyiso--e7c512cc03d4a8fbf611888b.md) | 99 | `declaration-track:e7c512cc03d4a8fbf611888bda5ccc56f69ecae2906a3f0aed0b44fc0f525f55` |
| 8 | `lemma` | [exact_iff_surjective_abToCycles](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/exact-iff-surjective-abtocycles--e07daf24dc83884d0440da9b.md) | 103 | `result-track:e07daf24dc83884d0440da9baf1a613afd4efd1ad2b976475d9b291ec8373ee3` |
| 9 | `lemma` | [ab_exact_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/ab-exact-iff--cbdf505f7c3a6e45948acb4b.md) | 109 | `result-track:cbdf505f7c3a6e45948acb4be23ebb56f1ce1ca80fbc828f7412392fe279087b` |
| 10 | `lemma` | [ab_exact_iff_function_exact](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/ab-exact-iff-function-exact--f363046b78c9d8a89f191825.md) | 120 | `result-track:f363046b78c9d8a89f191825675f9bb4c0bf8202f4454e8fac6d74aba037e438` |
| 11 | `lemma` | [ab_exact_iff_ker_le_range](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/ab-exact-iff-ker-le-range--d7185f9258da85904a2870cf.md) | 132 | `result-track:d7185f9258da85904a2870cf89676f581bad3126f168063ff61b7ead6ffdf5ce` |
| 12 | `lemma` | [ab_exact_iff_range_eq_ker](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/ab-exact-iff-range-eq-ker--b89ee65f940c6bfc2398fcc9.md) | 134 | `result-track:b89ee65f940c6bfc2398fcc983d5812fbca9dcf586512f4aecefd521e3f3a446` |
| 13 | `lemma` | [ShortExact.ab_injective_f](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/shortexact-ab-injective-f--33f08d95b43df20b07266e2d.md) | 147 | `result-track:33f08d95b43df20b07266e2d62793625b8605ee3ba67e5481db7d463819c4af4` |
| 14 | `lemma` | [ShortExact.ab_surjective_g](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/shortexact-ab-surjective-g--c6de8ea6ec2c81159bb984c8.md) | 151 | `result-track:c6de8ea6ec2c81159bb984c892377d3fa3eaa715ce405b753dda3f16975dd3a5` |
| 15 | `lemma` | [ShortExact.ab_exact_iff_function_exact](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantbc13f92188c5b35d2fb4cca9b4e5eee0e59d5cacce100f306f47c287d3a11778.lean/declarations/shortexact-ab-exact-iff-function-exact--f786291378b827a8cc2cdb14.md) | 157 | `result-track:f786291378b827a8cc2cdb1456d2b7c3c0f3aef6eab572bce66c86c9b8db7776` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
