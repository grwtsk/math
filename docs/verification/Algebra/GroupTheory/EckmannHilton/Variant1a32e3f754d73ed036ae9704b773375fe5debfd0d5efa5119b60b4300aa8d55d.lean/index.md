# Verification target: GRWTSK.Algebra.GroupTheory.EckmannHilton.Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c3749775b0197f63a47ae74584e11f1f4764680",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c3749775b0197f63a47ae74584e11f1f4764680`.

Source path: `GRWTSK/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsUnital](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/declarations/isunital--b6cdf3529fd3d31f0cf40553.md) | 45 | `declaration-track:b6cdf3529fd3d31f0cf405531b963bfab249cca2390798f9e26aafea63c806d4` |
| 2 | `theorem` | [MulOneClass.isUnital](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/declarations/muloneclass-isunital--83dbd24fa14e816684690be4.md) | 49 | `result-track:83dbd24fa14e816684690be47623cd2963b86ade5d0b3b5d4524322def97613f` |
| 3 | `theorem` | [one](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/declarations/one--94d8cb52907b45ffc3fb6d0c.md) | 65 | `result-track:94d8cb52907b45ffc3fb6d0cca2f3a20ad59381776c13239a0d6cce009b6fa07` |
| 4 | `theorem` | [mul](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/declarations/mul--bafc2822cad0a4a766acffac.md) | 73 | `result-track:bafc2822cad0a4a766acffac5dadaf052997c074dee1d9360ed3ea0a6036ab9d` |
| 5 | `theorem` | [mul_comm](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/declarations/mul-comm--8d37a52caff2d6f0c919629d.md) | 85 | `result-track:8d37a52caff2d6f0c919629d6b044a21f434f56cfec26f64d861049058186ec4` |
| 6 | `theorem` | [mul_assoc](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/declarations/mul-assoc--d6aff2a3b8fdaca25101ee52.md) | 93 | `result-track:d6aff2a3b8fdaca25101ee52868163ea8e9f2c90370ba90f1610fbe5901b6a1a` |
| 7 | `def` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/declarations/commmonoid--33db0fcddd60f31bd370387c.md) | 102 | `declaration-track:33db0fcddd60f31bd370387cd8b5b5eb6a134ce4ddaae72faf41e8d3e27d688e` |
| 8 | `def` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/declarations/commgroup--71b4baed8d87e65307a26676.md) | 115 | `declaration-track:71b4baed8d87e65307a266766103ae2ca2b222de161580190177dbbe3d2a7b69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
