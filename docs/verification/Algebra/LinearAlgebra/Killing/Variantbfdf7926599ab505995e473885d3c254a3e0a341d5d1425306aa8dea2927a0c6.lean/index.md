# Verification target: GRWTSK.Algebra.LinearAlgebra.Killing.Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c516448f3ebb34492992de74a4633caa76c35f04",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c516448f3ebb34492992de74a4633caa76c35f04`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Derivation.AdjointAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Killing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm.Orthogonal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [killingForm_restrict_range_ad](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean/declarations/killingform-restrict-range-ad--bc6645cdaf5c35b19ff7f97d.md) | 49 | `result-track:bc6645cdaf5c35b19ff7f97d689acf004fa029649233e0a98c92834648ce6b8f` |
| 2 | `def` | [rangeAdOrthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean/declarations/rangeadorthogonal--7471835c5891f5bdaedd413f.md) | 55 | `declaration-track:7471835c5891f5bdaedd413f835f6e45a9e030a8f13ea0dd1865c6f6be9f55d6` |
| 3 | `lemma` | [ad_mem_orthogonal_of_mem_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean/declarations/ad-mem-orthogonal-of-mem-orthogonal--c874b4a5f56a5c6008401788.md) | 70 | `result-track:c874b4a5f56a5c6008401788f3a72cae3421421f176c66077791febc80c43e6b` |
| 4 | `lemma` | [ad_mem_ker_killingForm_ad_range_of_mem_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean/declarations/ad-mem-ker-killingform-ad-range-of-mem-orthogonal--25554f6c4178f5e89ba4b457.md) | 77 | `result-track:25554f6c4178f5e89ba4b457e8e87b8f42be4aae957b2056626561c4a398a731` |
| 5 | `lemma` | [ad_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean/declarations/ad-apply-eq-zero-iff--026cda4dda00807b459ff71a.md) | 87 | `result-track:026cda4dda00807b459ff71a70632044fb54ded9f77736e1f37b493bfcfd9f03` |
| 6 | `instance` | [instIsKilling_range_ad](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean/declarations/instiskilling-range-ad--28592060caf2ae916181aa8c.md) | 91 | `declaration-track:28592060caf2ae916181aa8c0058d98c47ec7b343c631aa3b28c10c3295b6597` |
| 7 | `lemma` | [killingForm_restrict_range_ad_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean/declarations/killingform-restrict-range-ad-nondegenerate--7b833ba974980c8c6e00ccec.md) | 96 | `result-track:7b833ba974980c8c6e00ccecba0291782c9c0ff0b0a06873b9422b99968fabcf` |
| 8 | `lemma` | [range_ad_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean/declarations/range-ad-eq-top--a0488913b87377b8b6d96ad1.md) | 103 | `result-track:a0488913b87377b8b6d96ad158bd0982d9d6e3c7591f282bca86e6b28aa7ad7d` |
| 9 | `lemma` | [exists_eq_ad](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantbfdf7926599ab505995e473885d3c254a3e0a341d5d1425306aa8dea2927a0c6.lean/declarations/exists-eq-ad--18bff3f7da619638bd24727b.md) | 112 | `result-track:18bff3f7da619638bd24727b13553505984a3088695c3e8c7532d5a9d2b360cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
