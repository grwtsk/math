# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Rayleigh.Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb6a15fff6867afccd565ec416cf5b3c57e9670f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb6a15fff6867afccd565ec416cf5b3c57e9670f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LagrangeMultipliers` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [rayleighQuotient](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/rayleighquotient--644a9ff85c06f57468ed95b5.md) | 54 | `declaration-track:644a9ff85c06f57468ed95b5c3953625be5363694b05ab7371edb2af09f9b608` |
| 2 | `theorem` | [rayleigh_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/rayleigh-smul--5006e00ba38e4aa610eddc2f.md) | 56 | `result-track:5006e00ba38e4aa610eddc2f2250d26a4f70dfef9558c76e8f418d924d83f0c9` |
| 3 | `theorem` | [image_rayleigh_eq_image_rayleigh_sphere](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/image-rayleigh-eq-image-rayleigh-sphere--26014aa1feb53aa8dd0ef834.md) | 63 | `result-track:26014aa1feb53aa8dd0ef834d02818f26b127880997ec549c4c26e553024a3a1` |
| 4 | `theorem` | [iSup_rayleigh_eq_iSup_rayleigh_sphere](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/isup-rayleigh-eq-isup-rayleigh-sphere--089e3592998ee882e1008a2f.md) | 78 | `result-track:089e3592998ee882e1008a2faf2e2a339c83a0907c35b3f1796bf10d9a97bc24` |
| 5 | `theorem` | [iInf_rayleigh_eq_iInf_rayleigh_sphere](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/iinf-rayleigh-eq-iinf-rayleigh-sphere--3a596746a4253e27e8414ce9.md) | 85 | `result-track:3a596746a4253e27e8414ce9aae73bd98c481256fd78ba12ad6225a358c7f826` |
| 6 | `theorem` | [_root_.LinearMap.IsSymmetric.hasStrictFDerivAt_reApplyInnerSelf](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/root-linearmap-issymmetric-hasstrictfderivat-reapplyinnerself--856df40b0603ac5ff0976fe6.md) | 100 | `result-track:856df40b0603ac5ff0976fe634e6ad899513f25310c5cc1ba445b1bdea3c8546` |
| 7 | `theorem` | [linearly_dependent_of_isLocalExtrOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/linearly-dependent-of-islocalextron--419af75f594c8165742881a4.md) | 111 | `result-track:419af75f594c8165742881a44fa0eb31ac5acd4bf77ed38cef252b44d4ed0654` |
| 8 | `theorem` | [eq_smul_self_of_isLocalExtrOn_real](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/eq-smul-self-of-islocalextron-real--51290673603dd89d4dc83d9c.md) | 133 | `result-track:51290673603dd89d4dc83d9cf832dc2ea49e4f243308060431cbe83038e47b6e` |
| 9 | `theorem` | [eq_smul_self_of_isLocalExtrOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/eq-smul-self-of-islocalextron--fb9b8f3b027fd7fc1a1558f6.md) | 160 | `result-track:fb9b8f3b027fd7fc1a1558f6d79a77fb45f142ebcefb718bc5487c307f1cea70` |
| 10 | `theorem` | [hasEigenvector_of_isLocalExtrOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/haseigenvector-of-islocalextron--a8046801e17a72ae2d8b5000.md) | 169 | `result-track:a8046801e17a72ae2d8b5000c1a826ccdab2958e9dbf62d709291c418640a948` |
| 11 | `theorem` | [hasEigenvector_of_isMaxOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/haseigenvector-of-ismaxon--3407fd889aae2f87c8be3686.md) | 179 | `result-track:3407fd889aae2f87c8be36860272b9b2fc99673ce175b4fe1a8ba4d6084e5598` |
| 12 | `theorem` | [hasEigenvector_of_isMinOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/haseigenvector-of-isminon--15ee21f831c93a71f5cff487.md) | 198 | `result-track:15ee21f831c93a71f5cff4877918cd054cdb6e8a65ddd753c6b3b4d4fc5216e3` |
| 13 | `theorem` | [hasEigenvalue_iSup_of_finiteDimensional](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/haseigenvalue-isup-of-finitedimensional--c5b3ba1cb18959f0670ef4d8.md) | 228 | `result-track:c5b3ba1cb18959f0670ef4d827f22d80b9136cc7bf6bd0ef982859221c848732` |
| 14 | `theorem` | [hasEigenvalue_iInf_of_finiteDimensional](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/haseigenvalue-iinf-of-finitedimensional--66d112bd30ddba541b7a3286.md) | 247 | `result-track:66d112bd30ddba541b7a32865f63112f916c6ed606bbe13af4ca3ff947ecffd8` |
| 15 | `theorem` | [subsingleton_of_no_eigenvalue_finiteDimensional](../../../../../mathematics/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/declarations/subsingleton-of-no-eigenvalue-finitedimensional--41796ff1dc41abc0722e0dc6.md) | 264 | `result-track:41796ff1dc41abc0722e0dc62a5b24885a5859ac55297315f89a6cb5f4bd1db6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
