# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Bounds.Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3e0719a513f23401ea0440813da91afcece7937",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3e0719a513f23401ea0440813da91afcece7937`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Multinomial` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousLinearMap.norm_iteratedFDerivWithin_le_of_bilinear_aux](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/continuouslinearmap-norm-iteratedfderivwithin-le-of-bilinear-aux--3f31dbe6c6a99ea5ce9a2fc8.md) | 46 | `result-track:3f31dbe6c6a99ea5ce9a2fc8bb3f0ec596ff699d173dacbfd2be34da7ea7eb18` |
| 2 | `theorem` | [ContinuousLinearMap.norm_iteratedFDerivWithin_le_of_bilinear](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/continuouslinearmap-norm-iteratedfderivwithin-le-of-bilinear--4ba575838874e65cfab0d2ae.md) | 133 | `result-track:4ba575838874e65cfab0d2aedafbd72645509a408b14eca30769bbf9db11ce0d` |
| 3 | `theorem` | [ContinuousLinearMap.norm_iteratedFDeriv_le_of_bilinear](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/continuouslinearmap-norm-iteratedfderiv-le-of-bilinear--b99e8b9c791b1a0b0528a111.md) | 214 | `result-track:b99e8b9c791b1a0b0528a1116c9318e8bd230d940e0f7f93d32162718e3bf2f5` |
| 4 | `theorem` | [ContinuousLinearMap.norm_iteratedFDerivWithin_le_of_bilinear_of_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/continuouslinearmap-norm-iteratedfderivwithin-le-of-bilinear-of-le-one--a2d5922556fa642bf6fc2bfb.md) | 226 | `result-track:a2d5922556fa642bf6fc2bfbb44b0deaf7c14780a1766f69ee41e421bd0b805b` |
| 5 | `theorem` | [ContinuousLinearMap.norm_iteratedFDeriv_le_of_bilinear_of_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/continuouslinearmap-norm-iteratedfderiv-le-of-bilinear-of-le-one--9e71801aa31d66642c1652dd.md) | 238 | `result-track:9e71801aa31d66642c1652dd07dca6c94299c09c825a6bc8bd62371181810bf4` |
| 6 | `theorem` | [norm_iteratedFDerivWithin_smul_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderivwithin-smul-le--bc11ede2d8161fd33c50ca38.md) | 253 | `result-track:bc11ede2d8161fd33c50ca3869b8493cd7d71496e55e599c39c1857925da129b` |
| 7 | `theorem` | [norm_iteratedFDeriv_smul_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderiv-smul-le--dc4af21aea051b3980f92ce4.md) | 262 | `result-track:dc4af21aea051b3980f92ce4636d50f8a68959d49eda305ccfd08cb6a4831b54` |
| 8 | `theorem` | [norm_iteratedFDerivWithin_mul_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderivwithin-mul-le--881ef464cea0f3a5e6b796f2.md) | 276 | `result-track:881ef464cea0f3a5e6b796f2f501181bbb5387cd8224cfec8f0b03573bd8a657` |
| 9 | `theorem` | [norm_iteratedFDeriv_mul_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderiv-mul-le--8b29b41f062d91e1827bcc34.md) | 286 | `result-track:8b29b41f062d91e1827bcc34d13ec1f30954b49cb2e6eea0913216d3aaface10` |
| 10 | `theorem` | [norm_iteratedFDerivWithin_prod_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderivwithin-prod-le--d7aa1a262716576dc82cf801.md) | 296 | `result-track:d7aa1a262716576dc82cf80174a070bdea4621a92708b73d0a5b4c5780da9a94` |
| 11 | `theorem` | [norm_iteratedFDeriv_prod_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderiv-prod-le--164d616fa679d33fdbbc801e.md) | 340 | `result-track:164d616fa679d33fdbbc801e03018b407553999659150d3886d9e245857bb876` |
| 12 | `theorem` | [norm_iteratedFDerivWithin_comp_le_aux](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderivwithin-comp-le-aux--e0520e480e7e0dbab226192a.md) | 358 | `result-track:e0520e480e7e0dbab226192a0a482bd4f7d0d41b602dcdddd566b1ad92a6302b` |
| 13 | `theorem` | [norm_iteratedFDerivWithin_comp_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderivwithin-comp-le--0bbdfd7b8c04dc5ebceb988b.md) | 469 | `result-track:0bbdfd7b8c04dc5ebceb988bbd555d64f2aaa2bdc13e57f8ef8d2838a332a449` |
| 14 | `theorem` | [norm_iteratedFDeriv_comp_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderiv-comp-le--941f1873808df4e6e9653412.md) | 520 | `result-track:941f1873808df4e6e96534121f48768317b16cb6b2c79beddbe9c5a0aea2b709` |
| 15 | `theorem` | [norm_iteratedFDerivWithin_clm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderivwithin-clm-apply--eeba7cf13da4fea0c8962b37.md) | 531 | `result-track:eeba7cf13da4fea0c8962b378652ca7ee9be7d3956579dbb3fc775a974f8c2e2` |
| 16 | `theorem` | [norm_iteratedFDeriv_clm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderiv-clm-apply--2a37968b63899597a3094f13.md) | 545 | `result-track:2a37968b63899597a3094f131df0574e7e8c7824b06865ab0248346388c10837` |
| 17 | `theorem` | [norm_iteratedFDerivWithin_clm_apply_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderivwithin-clm-apply-const--860452264a8cd10d19a6db02.md) | 553 | `result-track:860452264a8cd10d19a6db027d651f7a1f33ac2f787ff04b8323392072a755f8` |
| 18 | `theorem` | [norm_iteratedFDeriv_clm_apply_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/declarations/norm-iteratedfderiv-clm-apply-const--f3643650e2d265b43a5e80ed.md) | 566 | `result-track:f3643650e2d265b43a5e80ed12d8cf2037cc1932b1e7dc442c80b5eadf11e257` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
