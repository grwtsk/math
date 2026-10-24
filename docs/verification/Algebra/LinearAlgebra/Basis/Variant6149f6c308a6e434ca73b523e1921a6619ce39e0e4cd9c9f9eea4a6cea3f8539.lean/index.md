# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b8c6326dcb99df5f2e7c238ebe13fbbf22fbcc5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b8c6326dcb99df5f2e7c238ebe13fbbf22fbcc5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Sym` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Sym2.Finsupp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_finsuppSum'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/map-finsuppsum--f7c695bcf5cf415479bd288e.md) | 29 | `result-track:f7c695bcf5cf415479bd288e7eef0d414c1b1968b9aa4ce3147ec543216f9bfe` |
| 2 | `theorem` | [apply_linearCombination'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/apply-linearcombination--36fc61db13a92e2a1ad1e1e4.md) | 34 | `result-track:36fc61db13a92e2a1ad1e1e49c135790614f095b1d4f687a89d7ba7dfbf091f3` |
| 3 | `theorem` | [sum_polar_sub_repr_sq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/sum-polar-sub-repr-sq--f7b915d7349e62862cfc2aa1.md) | 43 | `result-track:f7b915d7349e62862cfc2aa199b0a0863d6b8241fc0226143a4856a0cb08ddb1` |
| 4 | `theorem` | [map_finsuppSum](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/map-finsuppsum--f4eeaf9653f3e3b3fe6c4caf.md) | 51 | `result-track:f4eeaf9653f3e3b3fe6c4caf51206f8b7f8487eb6929b99c01e7365bec9ab6b5` |
| 5 | `theorem` | [apply_linearCombination](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/apply-linearcombination--83398f67a096256160a8bee0.md) | 56 | `result-track:83398f67a096256160a8bee03cc708aff6c15ffafb99d445345ab05b64ee7d43` |
| 6 | `theorem` | [sum_repr_sq_add_sum_repr_mul_polar](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/sum-repr-sq-add-sum-repr-mul-polar--70709fb56fdf1967bcc87fd9.md) | 64 | `result-track:70709fb56fdf1967bcc87fd982f37dbb8ac493a59650c04d0c11cfa604d99a60` |
| 7 | `def` | [toBilin](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/tobilin--af253b16ff66457e9b6edcbd.md) | 79 | `declaration-track:af253b16ff66457e9b6edcbd83f2c865a4df109246c65fe43c5a30dc196108e2` |
| 8 | `theorem` | [toBilin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/tobilin-apply--b0348fe15ee63c756d67b1ee.md) | 84 | `result-track:b0348fe15ee63c756d67b1ee4192675fcbfde639a149ef0f5b98ad185d2be622` |
| 9 | `theorem` | [toQuadraticMap_toBilin](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/toquadraticmap-tobilin--35ec7abd39d48e811b0e774b.md) | 89 | `result-track:35ec7abd39d48e811b0e774ba723c9619fe46a5bfcda9e0e0b42ca702b09309d` |
| 10 | `theorem` | [_root_.LinearMap.BilinMap.toQuadraticMap_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/root-linearmap-bilinmap-toquadraticmap-surjective--1612af1fed5318089c0adeaf.md) | 110 | `result-track:1612af1fed5318089c0adeafaa4fa7c9d8eb7723511b08bed750f9b0fdcfb48d` |
| 11 | `lemma` | [add_toBilin](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/add-tobilin--6543f066ddc0760c36bd154c.md) | 118 | `result-track:6543f066ddc0760c36bd154c7d4a641113365e6a0cf1572fc5da31a1c6c29d78` |
| 12 | `lemma` | [smul_toBilin](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/smul-tobilin--c1b81e649a0a0ff06b5f12e2.md) | 130 | `result-track:c1b81e649a0a0ff06b5f12e2035719470d6010ba8ad94c1306681597f49808d1` |
| 13 | `def` | [toBilinHom](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.lean/declarations/tobilinhom--d5535ae30ef1b637723dd8e5.md) | 140 | `declaration-track:d5535ae30ef1b637723dd8e51afc224dc519d682e718e15ef88e245ea24e02e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
