# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.QuaternionExponential.Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3e942f60ac41f2f46e1330d0712b9b5274875a8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3e942f60ac41f2f46e1330d0712b9b5274875a8`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Quaternion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Exponential` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Series` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_coe](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean/declarations/exp-coe--d4f6543cb93af5ecfdc26fe2.md) | 41 | `result-track:d4f6543cb93af5ecfdc26fe23e8247d5fdf696296bda7547f7504b81d361ab44` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean/declarations/macro-rules--2f5bb6c523248c5f78abe379.md) | 45 | `declaration-track:2f5bb6c523248c5f78abe379e4b1d4d04c66bdbee901d8dd37f14e5239b0a08e` |
| 3 | `theorem` | [hasSum_expSeries_of_imaginary](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean/declarations/hassum-expseries-of-imaginary--fd10e92d0bda597c35ef233b.md) | 49 | `result-track:fd10e92d0bda597c35ef233ba1b8d1bc3644627ab7fb3b50ae1fc82811b0e0a6` |
| 4 | `theorem` | [exp_of_re_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean/declarations/exp-of-re-eq-zero--8486bbd3b9f7bf9cf2a589d8.md) | 100 | `result-track:8486bbd3b9f7bf9cf2a589d8442a693404d1f4968e8cf4ce791f1542a1a563b8` |
| 5 | `theorem` | [exp_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean/declarations/exp-eq--6525ef0923f45d83730a0f80.md) | 109 | `result-track:6525ef0923f45d83730a0f809d47f96e065c9fee5888209b3ea063073d071013` |
| 6 | `theorem` | [re_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean/declarations/re-exp--3fa1e9c93fe89a6d92bcec54.md) | 116 | `result-track:3fa1e9c93fe89a6d92bcec54daaee8f9f5e4b69addb7b14e5b8a16f65669be90` |
| 7 | `theorem` | [im_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean/declarations/im-exp--a92560ecafebd1e0791ac1f7.md) | 119 | `result-track:a92560ecafebd1e0791ac1f7b11528e10bda18d28abfa813b39e968a864b1c04` |
| 8 | `theorem` | [normSq_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean/declarations/normsq-exp--824afb3f4dcd4eea7e3485a7.md) | 123 | `result-track:824afb3f4dcd4eea7e3485a78d0f7c7c845541381e94fc288278ec4f0c6c615a` |
| 9 | `theorem` | [norm_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Varianteed9fd925306a10c5a08aa621389d42e2d9e2fa88b085fa75422c56f31570610.lean/declarations/norm-exp--71e0a83bb157ac8b5d483f45.md) | 144 | `result-track:71e0a83bb157ac8b5d483f452b2572b972629feb3d928c3e8ca4018f9637180f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
