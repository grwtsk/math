# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db10d1b2a2b9e34fd3b23f4f2a47b31763a6e09c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db10d1b2a2b9e34fd3b23f4f2a47b31763a6e09c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Minimal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_maximalFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/exists-maximalfor--67ddf48022a09beeca947a64.md) | 21 | `result-track:67ddf48022a09beeca947a64422a4d291e6037bbdc2e67a50c6c6a68984dd5b0` |
| 2 | `lemma` | [exists_minimalFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/exists-minimalfor--f9e2dff4aef4b03381324858.md) | 33 | `result-track:f9e2dff4aef4b033813248583dfbe34764dc4890b2b82a4eb7edf9bf39d39c3d` |
| 3 | `lemma` | [exists_maximal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/exists-maximal--0080abbf282b9e43974402bd.md) | 36 | `result-track:0080abbf282b9e43974402bd7a8d43f6345a42cc5271c23120fd7ab200fabc00` |
| 4 | `lemma` | [exists_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/exists-minimal--16afe76af7ef9dde45f0d3f4.md) | 37 | `result-track:16afe76af7ef9dde45f0d3f460162bbfe850ea0f909bfa9207e8deba997ed64c` |
| 5 | `lemma` | [exists_le_maximal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/exists-le-maximal--e9cb1e01ee487e006d0650c0.md) | 39 | `result-track:e9cb1e01ee487e006d0650c0d6ed0ea510262ccf130a2c929292de8bc01a59be` |
| 6 | `lemma` | [exists_le_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/exists-le-minimal--4101517e5a2dfa30a47d5129.md) | 45 | `result-track:4101517e5a2dfa30a47d512941525cfba91b57789061c0c707f91ea96dcea3cd` |
| 7 | `lemma` | [Finite.exists_maximalFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-exists-maximalfor--5b2ac9f4e869d5de9144390e.md) | 56 | `result-track:5b2ac9f4e869d5de9144390eded4e31224857f4c161967482695226a9c21200f` |
| 8 | `lemma` | [Finite.exists_minimalFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-exists-minimalfor--bf16b88dde9a47229bea058c.md) | 60 | `result-track:bf16b88dde9a47229bea058c60e066a926432f77fccbc832808f02f052b0a4b3` |
| 9 | `lemma` | [Finite.exists_maximal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-exists-maximal--0fae0350f66506c7b486c357.md) | 63 | `result-track:0fae0350f66506c7b486c35772cfcdbf95ae3c90f0d90bbb0821bcae1d01f503` |
| 10 | `lemma` | [Finite.exists_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-exists-minimal--ee5b0eafa042583c393b4462.md) | 66 | `result-track:ee5b0eafa042583c393b4462af167a7e971d3458900c36870f62066680bae989` |
| 11 | `lemma` | [Finite.exists_maximalFor'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-exists-maximalfor--b2e2dd6b8942a7b7154d88ef.md) | 71 | `result-track:b2e2dd6b8942a7b7154d88eff41bce9c254d493c8bbd28d3fd8ee22329015d26` |
| 12 | `lemma` | [Finite.exists_minimalFor'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-exists-minimalfor--83095e80585cd799b084c929.md) | 78 | `result-track:83095e80585cd799b084c929d5f5d30c2273e8dc74a92857c16fb30bbe462651` |
| 13 | `lemma` | [Finite.exists_le_maximal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-exists-le-maximal--fbaf98324a49f04573a7a64b.md) | 86 | `result-track:fbaf98324a49f04573a7a64bef862fd2c2c1d92e44ddf0109a72cacca1a070f3` |
| 14 | `lemma` | [Finite.exists_le_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-exists-le-minimal--3dab064f466208f5b65ed557.md) | 89 | `result-track:3dab064f466208f5b65ed55762b444d6c8aa22df6947f2a13eb4490ded859733` |
| 15 | `lemma` | [infinite_of_forall_exists_gt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/infinite-of-forall-exists-gt--7f886ea38ec8e8fdf460eba0.md) | 94 | `result-track:7f886ea38ec8e8fdf460eba0e1302dd04c39032a5dd8d673dfe86677ebfc74d4` |
| 16 | `lemma` | [infinite_of_forall_exists_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/infinite-of-forall-exists-lt--478abe066b6bfc06c0b64aee.md) | 101 | `result-track:478abe066b6bfc06c0b64aeec7dcda69cb09dc9f5806d8e105bbbc8fe906e875` |
| 17 | `lemma` | [finite_isTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-istop--88be96013db5a1cdddc622f1.md) | 109 | `result-track:88be96013db5a1cdddc622f10dcff6185d142e0c54300254a3509aa5a0d6bf75` |
| 18 | `lemma` | [finite_isBot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-isbot--e6deb0d41d8d0c81a40e1295.md) | 110 | `result-track:e6deb0d41d8d0c81a40e129594ffe3fea9714668e983003bd1088faa53ddacba` |
| 19 | `lemma` | [Infinite.exists_lt_map_eq_of_mapsTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/infinite-exists-lt-map-eq-of-mapsto--92dd24abdcf4d57eb5bc843a.md) | 117 | `result-track:92dd24abdcf4d57eb5bc843ac1026cbf66586821b77c575fc57cd9bf27cd2a7b` |
| 20 | `lemma` | [Finite.exists_lt_map_eq_of_forall_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-exists-lt-map-eq-of-forall-mem--d21dc9e2aaa00d301da8bbf5.md) | 122 | `result-track:d21dc9e2aaa00d301da8bbf5c98a6580f039451d9403eaabba03090746e34dd0` |
| 21 | `lemma` | [Finite.exists_le_maximal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-exists-le-maximal--c985f3f3918ccc35170cca35.md) | 134 | `result-track:c985f3f3918ccc35170cca3511d96094cc88523ea512144349e8ba56da9be9a4` |
| 22 | `lemma` | [Finite.exists_le_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant63b3dc162106b08ff26f162265308b6dca8dcaaaba24ca4e9db8a3233f7d0c01.lean/declarations/finite-exists-le-minimal--a68bbb1b2741bc76363f1baa.md) | 137 | `result-track:a68bbb1b2741bc76363f1baa16ee382a1efd67079607aca1177a1637135b50d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
