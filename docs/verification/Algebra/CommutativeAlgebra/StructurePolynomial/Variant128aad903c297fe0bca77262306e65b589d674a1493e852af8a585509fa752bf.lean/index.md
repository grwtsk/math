# Verification target: GRWTSK.Algebra.CommutativeAlgebra.StructurePolynomial.Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df8891ad4c26fc524f2688dc17def1a10806896d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df8891ad4c26fc524f2688dc17def1a10806896d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Polynomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.WittPolynomial` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittStructureRat](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/wittstructurerat--240e536e82e4fc95b901ec49.md) | 135 | `declaration-track:240e536e82e4fc95b901ec499f32c31ccf587e0a344d1c9dabf91ff60fe783f5` |
| 2 | `theorem` | [wittStructureRat_prop](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/wittstructurerat-prop--4eb0277ac67fb2a81cf2dc5d.md) | 138 | `result-track:4eb0277ac67fb2a81cf2dc5d657b4d02fe34d35b09f3ccd1852787090cdbb5d3` |
| 3 | `theorem` | [wittStructureRat_existsUnique](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/wittstructurerat-existsunique--254223b9ab62905eb99bed27.md) | 148 | `result-track:254223b9ab62905eb99bed27f4e1aeccec43aa8409ec8d84352748399c54d499` |
| 4 | `theorem` | [wittStructureRat_rec_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/wittstructurerat-rec-aux--6cabae8249fef9db17a9723a.md) | 160 | `result-track:6cabae8249fef9db17a9723a84206bb7c3ea02cc5a5225eb1f8c5bb0fc46dfc0` |
| 5 | `theorem` | [wittStructureRat_rec](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/wittstructurerat-rec--98ef51dd9373abeb4349a217.md) | 174 | `result-track:98ef51dd9373abeb4349a2177da58cff996892cc4f43c2f0eaf9e6ba7aecf8b9` |
| 6 | `def` | [wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/wittstructureint--d847bb27f623d19dbf79bbfd.md) | 197 | `declaration-track:d847bb27f623d19dbf79bbfd808992ae07e43a8a09d72d1d30a521208181bbb5` |
| 7 | `theorem` | [bind₁_rename_expand_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/bind-rename-expand-wittpolynomial--bde0d21016fdb8b086b30828.md) | 202 | `result-track:bde0d21016fdb8b086b308287b19642a2b748b2eaa082f56a5418e9fcd04da0a` |
| 8 | `theorem` | [C_p_pow_dvd_bind₁_rename_wittPolynomial_sub_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/c-p-pow-dvd-bind-rename-wittpolynomial-sub-sum--feb158b5a4a6c38e4e55ced8.md) | 221 | `result-track:feb158b5a4a6c38e4e55ced89ec893243cfd84c2792ea585fcde39212fc973de` |
| 9 | `theorem` | [map_wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/map-wittstructureint--be5a8e9c5aaaa348bad08d29.md) | 264 | `result-track:be5a8e9c5aaaa348bad08d292b489c647892d56a7dd6696df0ad394a415b4fd8` |
| 10 | `theorem` | [wittStructureInt_prop](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/wittstructureint-prop--31fcb716842b0de83f4986e4.md) | 290 | `result-track:31fcb716842b0de83f4986e44517d06f4ee9fc96e4266817b36361f468d48171` |
| 11 | `theorem` | [eq_wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/eq-wittstructureint--e42241fe05c9a823574f11d7.md) | 298 | `result-track:e42241fe05c9a823574f11d7414ab6b73b8a08d8e4a6cf3e5a07af573c7ffd2f` |
| 12 | `theorem` | [wittStructureInt_existsUnique](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/wittstructureint-existsunique--67878c4d41e262f0d7381c6c.md) | 315 | `result-track:67878c4d41e262f0d7381c6cde621c30a590420803d2e51982bf999fed3f8d91` |
| 13 | `theorem` | [witt_structure_prop](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/witt-structure-prop--1d52426c680b9ad539336b89.md) | 321 | `result-track:1d52426c680b9ad539336b8980dc89d1db329c8432dfbb0eda740d7be217719e` |
| 14 | `theorem` | [wittStructureInt_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/wittstructureint-rename--8d12c60f2517ad5ac26ca25a.md) | 330 | `result-track:8d12c60f2517ad5ac26ca25abd043e03e3f5a1eda4a8cd49acd03ada1ed21400` |
| 15 | `theorem` | [constantCoeff_wittStructureRat_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/constantcoeff-wittstructurerat-zero--73c8093ff7243a46aaa145b3.md) | 338 | `result-track:73c8093ff7243a46aaa145b3a5dbefa030ab35d75c4148614f24c162e3a023d6` |
| 16 | `theorem` | [constantCoeff_wittStructureRat](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/constantcoeff-wittstructurerat--84ea229f3d25c1744df861bd.md) | 344 | `result-track:84ea229f3d25c1744df861bd2e32bf978036cf43480ed281682b29d3fb38d532` |
| 17 | `theorem` | [constantCoeff_wittStructureInt_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/constantcoeff-wittstructureint-zero--bf468082c43de457e9eef18a.md) | 351 | `result-track:bf468082c43de457e9eef18aa6772be7f33a72a0117c7e14b7aa12ad8bdd1c5a` |
| 18 | `theorem` | [constantCoeff_wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/constantcoeff-wittstructureint--a408e7bdc8f4136cbcd55110.md) | 358 | `result-track:a408e7bdc8f4136cbcd551103ccf071a67bfc8f115ecfa8bf1f9125102454454` |
| 19 | `theorem` | [wittStructureRat_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/wittstructurerat-vars--8e801d3256acb386f8545231.md) | 369 | `result-track:8e801d3256acb386f854523189e99288fae2e8120bf40186b7947c68c8e69385` |
| 20 | `theorem` | [wittStructureInt_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/declarations/wittstructureint-vars--30c9262ff9b35a257ec1f393.md) | 384 | `result-track:30c9262ff9b35a257ec1f393c49508c744ad28243ee3a9ab9b7897dad4f9eb78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
