# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Minpoly.Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "813eddf5d02976a6910bf8e38414979fcf03ca47",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `813eddf5d02976a6910bf8e38414979fcf03ca47`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.IntegrallyClosed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Nat` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/declarations/isintegral--67733e01ca0e38ecd472ca14.md) | 48 | `result-track:67733e01ca0e38ecd472ca14965dbfe954edd130eead77d0e83ac3443d8eb66f` |
| 2 | `theorem` | [minpoly_dvd_x_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/declarations/minpoly-dvd-x-pow-sub-one--a37ca2f26878fd35259faa81.md) | 60 | `result-track:a37ca2f26878fd35259faa812133bf4599ec7845f37208900be4ebd3aee3ddc2` |
| 3 | `theorem` | [separable_minpoly_mod](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/declarations/separable-minpoly-mod--326d3e94d429282bd4f53b1a.md) | 68 | `result-track:326d3e94d429282bd4f53b1a547a9a4f5f62b843e401465bb94616e98299c47f` |
| 4 | `theorem` | [squarefree_minpoly_mod](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/declarations/squarefree-minpoly-mod--12e136ee6b48ab248e05f12e.md) | 79 | `result-track:12e136ee6b48ab248e05f12e145ccc356a586d43d82bd459c36eeff963d657aa` |
| 5 | `theorem` | [minpoly_dvd_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/declarations/minpoly-dvd-expand--c7828edea38a58e7f2243554.md) | 85 | `result-track:c7828edea38a58e7f224355465ac760bd2c87930852ca8932ba48f2514c2862e` |
| 6 | `theorem` | [minpoly_dvd_pow_mod](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/declarations/minpoly-dvd-pow-mod--dd20b1566d5d5974b2de9e50.md) | 97 | `result-track:dd20b1566d5d5974b2de9e50ce4741c2d64c0899d7c8f02e4bb2f24a8978b116` |
| 7 | `theorem` | [minpoly_dvd_mod_p](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/declarations/minpoly-dvd-mod-p--a997c2b7ab7979342e2a45b0.md) | 110 | `result-track:a997c2b7ab7979342e2a45b069226d1216546b10e611e45e853be60f962971a6` |
| 8 | `theorem` | [minpoly_eq_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/declarations/minpoly-eq-pow--a7a6c930fbc3c688850a6579.md) | 118 | `result-track:a7a6c930fbc3c688850a6579ea397e5c5e40051fdff260a472ecf73ca7803e6a` |
| 9 | `theorem` | [minpoly_eq_pow_coprime](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/declarations/minpoly-eq-pow-coprime--5dfe82fd5dce23f84f0e8341.md) | 172 | `result-track:5dfe82fd5dce23f84f0e8341abbdfebbeaf830af58f0298de2f6146bcdf8d2c5` |
| 10 | `theorem` | [pow_isRoot_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/declarations/pow-isroot-minpoly--37753875f654528d8d577c16.md) | 195 | `result-track:37753875f654528d8d577c163f7889ca3c9d7000da893bd537b11fd4117e6a80` |
| 11 | `theorem` | [is_roots_of_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/declarations/is-roots-of-minpoly--d211e19d26018f698bb45a7a.md) | 202 | `result-track:d211e19d26018f698bb45a7ab6f606036d3f559867cae7bf0b68f1c10ac988c5` |
| 12 | `theorem` | [totient_le_degree_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/declarations/totient-le-degree-minpoly--66789b02bf33873502c9aa10.md) | 215 | `result-track:66789b02bf33873502c9aa100c08f801c77ee618f76ac7fc976c9f8345d58ae9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
