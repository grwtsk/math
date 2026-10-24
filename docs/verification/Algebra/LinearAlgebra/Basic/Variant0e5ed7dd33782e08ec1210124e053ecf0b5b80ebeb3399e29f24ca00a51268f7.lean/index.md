# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0971866de5214fd5f1ed42447cedb46ab9d060b9",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0971866de5214fd5f1ed42447cedb46ab9d060b9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Norm.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Minpoly` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [PowerBasis.norm_gen_eq_coeff_zero_minpoly](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/powerbasis-norm-gen-eq-coeff-zero-minpoly--6aa57dca12d4b0edbbf17ba7.md) | 71 | `result-track:6aa57dca12d4b0edbbf17ba7ec642062f439eab1f192dd8d15ae5cf8ce822b4b` |
| 2 | `theorem` | [PowerBasis.norm_gen_eq_prod_roots](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/powerbasis-norm-gen-eq-prod-roots--86efa71e5747271111bd9031.md) | 78 | `result-track:86efa71e5747271111bd9031bcbc37ab8c8b8e87761b423c9c84fa1cf5265b5e` |
| 3 | `theorem` | [norm_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-zero--fae737df1213f07016b99da1.md) | 96 | `result-track:fae737df1213f07016b99da195e82436fdc8d2dd5a91209dc5087c8dccc853fa` |
| 4 | `theorem` | [norm_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-eq-zero-iff--63a45b93b545f13edcec122b.md) | 101 | `result-track:63a45b93b545f13edcec122b02b9115419f9dedefed1a3d2e2fa6bcba04a4bad` |
| 5 | `theorem` | [norm_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-ne-zero-iff--cc80ed71c756f88580f65155.md) | 118 | `result-track:cc80ed71c756f88580f65155a92fee56af93dc4a3441ea7a264d3085a63b8871` |
| 6 | `theorem` | [norm_eq_zero_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-eq-zero-iff--7b30dadb50d0297ef1d17816.md) | 123 | `result-track:7b30dadb50d0297ef1d17816ce790636a3af888b23ec47ad35950be63d82217d` |
| 7 | `theorem` | [norm_eq_zero_iff_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-eq-zero-iff-of-basis--4ec498ac763dd29f2a7c85a6.md) | 126 | `result-track:4ec498ac763dd29f2a7c85a65eb7957f63e119f9b7e760fe12d099315127f6ea` |
| 8 | `theorem` | [norm_ne_zero_iff_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-ne-zero-iff-of-basis--1e564d4288429e1a0dda0105.md) | 132 | `result-track:1e564d4288429e1a0dda0105560a975c64ec75145a134ec93390941bdcd56c05` |
| 9 | `theorem` | [norm_eq_norm_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-eq-norm-adjoin--bd804cbff021bbea9b2e29c9.md) | 141 | `result-track:bd804cbff021bbea9b2e29c98be885e9cb4fc697c5c0b2a262b907244d9e30f8` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.PowerBasisNormGenEqCoeffZeroMinpoly.Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.IntermediateField.AdjoinSimple.norm_gen_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/root-grwtsk-algebra-linearalgebra-powerbasisnormgeneqcoeffzerominpoly-va--37c9f2a264cc3ee614e44a0c.md) | 155 | `result-track:37c9f2a264cc3ee614e44a0ce112dfa896196503837e8e9d1310cb6fb8626b4a` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.PowerBasisNormGenEqCoeffZeroMinpoly.Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.IntermediateField.AdjoinSimple.norm_gen_eq_prod_roots](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/root-grwtsk-algebra-linearalgebra-powerbasisnormgeneqcoeffzerominpoly-va--ab46e77a8c3f321d11f278bb.md) | 164 | `result-track:ab46e77a8c3f321d11f278bba8ffd007cd3f2197ca4a3c46225601019eca3811` |
| 12 | `theorem` | [norm_eq_prod_embeddings_gen](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-eq-prod-embeddings-gen--03343fe36eb1ef3757848d6d.md) | 183 | `result-track:03343fe36eb1ef3757848d6d1d8079106df49c29520b1a052685ea04aef6c465` |
| 13 | `theorem` | [norm_eq_prod_roots](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-eq-prod-roots--07597d3942afa7ca160437ac.md) | 197 | `result-track:07597d3942afa7ca160437accc9bf6b7fcc9bf384ab11fab69f29143130ad4b5` |
| 14 | `theorem` | [prod_embeddings_eq_finrank_pow](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/prod-embeddings-eq-finrank-pow--35a7983d90a61e1fbc973811.md) | 203 | `result-track:35a7983d90a61e1fbc973811c866e3b6ef62b96b316852310dd7a1b04debc0d6` |
| 15 | `theorem` | [norm_eq_prod_embeddings](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-eq-prod-embeddings--704874bc2316ce3df82065c8.md) | 227 | `result-track:704874bc2316ce3df82065c8c9d782cead2bb7c5e56ca555ec263b43da2da8b3` |
| 16 | `theorem` | [norm_eq_prod_automorphisms](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-eq-prod-automorphisms--98b9f333bc1c84c6139fd157.md) | 236 | `result-track:98b9f333bc1c84c6139fd15713c0963b4d633c9341b8add792bba7474faf0ca0` |
| 17 | `theorem` | [isIntegral_norm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/isintegral-norm--1e379ee0f40deaa0ba07ab70.md) | 246 | `result-track:1e379ee0f40deaa0ba07ab70b9a00e4f7712e562f1035c5d824d8e22b80bf043` |
| 18 | `lemma` | [norm_eq_of_algEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-eq-of-algequiv--3d8a337ed4dd476fb21a2b4c.md) | 257 | `result-track:3d8a337ed4dd476fb21a2b4c5dd9faa8b530a17d755964bdb1622cae90c91aa7` |
| 19 | `lemma` | [norm_eq_of_ringEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-eq-of-ringequiv--d38e533e19fa9cd105bad034.md) | 261 | `result-track:d38e533e19fa9cd105bad0341426f516a22fdee080bafbbbb781a05d29c1917d` |
| 20 | `lemma` | [norm_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/declarations/norm-eq-of-equiv-equiv--913b3115560a15adf198b680.md) | 280 | `result-track:913b3115560a15adf198b680c44aba74d2716af4e72f43bd0cc0b9b4bbfc4f43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
