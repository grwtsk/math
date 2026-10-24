# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobianConjecture.Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb3f649a194aeadb7ec452012608e91424d8478e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb3f649a194aeadb7ec452012608e91424d8478e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.JacobianConjecture.FixedPoints` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [StabilizedCoordinates](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilizedcoordinates--7fdcb366dadb8288987b0ff0.md) | 20 | `declaration-track:7fdcb366dadb8288987b0ff0a8bea98f9d737c21341b6351ef6d71e249a68f87` |
| 2 | `theorem` | [stabilized_coordinate_card](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-coordinate-card--db97ce8c783509092f0d6a42.md) | 22 | `result-track:db97ce8c783509092f0d6a42663be754a82cc1ae7b3cd8769a4817475c191888` |
| 3 | `def` | [stabilizedPoly](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilizedpoly--e6f04189e6d168508e3fd901.md) | 26 | `declaration-track:e6f04189e6d168508e3fd901705e1d8e20056b02af3716a669251b390835f717` |
| 4 | `def` | [stabilizedMap](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilizedmap--ff816ed8645054e1eb048afb.md) | 30 | `declaration-track:ff816ed8645054e1eb048afb8ec6376a2b83822a55ef02b85456315317d7fe4b` |
| 5 | `def` | [stabilizedJacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilizedjacobian--242ac087ad998bcecd9005a2.md) | 34 | `declaration-track:242ac087ad998bcecd9005a2a911e8e69ca7af0071dc4a880f2302b2704c133d` |
| 6 | `def` | [stabilizePoint](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilizepoint--b27886a838605bf02595ff58.md) | 39 | `declaration-track:b27886a838605bf02595ff58f3cca7cc0e4ac9db556c9608685202ee6262ee14` |
| 7 | `theorem` | [pderiv_rename_inl_inr](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/pderiv-rename-inl-inr--413e800f36af611427f1f743.md) | 42 | `result-track:413e800f36af611427f1f743cc93a41ed3eae618e42f94e3f906f3d93a73ece9` |
| 8 | `theorem` | [stabilized_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-map-apply--036d2f6b83a35a6cd793cd77.md) | 51 | `result-track:036d2f6b83a35a6cd793cd773b130df6611b677ed876c06fa6b0054cf6bbc09c` |
| 9 | `theorem` | [stabilized_jacobian_eq](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-jacobian-eq--7caabf988dbc29831f7d41a2.md) | 61 | `result-track:7caabf988dbc29831f7d41a2692b7ff2512385adba3b96a061546597ea8a159b` |
| 10 | `theorem` | [stabilized_jacobian_det](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-jacobian-det--58a25fa95f0cbe39b176d403.md) | 77 | `result-track:58a25fa95f0cbe39b176d403064c92797039af6bd7ed15d65414528b54979070` |
| 11 | `theorem` | [stabilized_jacobian_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-jacobian-ne-zero--28e876ab1caa213d02a4131f.md) | 82 | `result-track:28e876ab1caa213d02a4131f00019394385627b0c1d555261960a50ccdbfb942` |
| 12 | `theorem` | [stabilize_point_injective](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilize-point-injective--79ff4c1f485b0afa8247d1f5.md) | 87 | `result-track:79ff4c1f485b0afa8247d1f567bc8b7e507f0548a58976bd44decafced0749c9` |
| 13 | `theorem` | [stabilized_map_stabilize_point](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-map-stabilize-point--20d2a1c6f9b4c29723a7dccb.md) | 93 | `result-track:20d2a1c6f9b4c29723a7dccb1d4518bdf3cfc1337261b7e6ff6fc9c15d1ed059` |
| 14 | `theorem` | [stabilized_three_distinct_fiber_points](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-three-distinct-fiber-points--b071466c1b6d7b2b2d4a21bd.md) | 99 | `result-track:b071466c1b6d7b2b2d4a21bde35b2978e351effeacd1ef421e77cb8a7abe762b` |
| 15 | `theorem` | [stabilized_map_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-map-not-injective--38b8a37d682b9002c55cf1d1.md) | 113 | `result-track:38b8a37d682b9002c55cf1d149c3459f8fd2b0306e0b5ce3b0495d839ddc9641` |
| 16 | `def` | [stabilizedTransform](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilizedtransform--5466d307229a10ec6e76c73f.md) | 118 | `declaration-track:5466d307229a10ec6e76c73fc4912a4fbe6120f6f499a59ba78450e95bd8cd36` |
| 17 | `def` | [stabilizedTransformPoly](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilizedtransformpoly--70361f2551e4d236dc4bc8f4.md) | 122 | `declaration-track:70361f2551e4d236dc4bc8f4cd88fba0804a18dacced27936b391f900e8036f0` |
| 18 | `theorem` | [stabilized_transform_eq_eval](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-transform-eq-eval--6645c2dfe02279203c94bc96.md) | 127 | `result-track:6645c2dfe02279203c94bc966a06a7f68829eb735b5d4db4db81d1f782bdc886` |
| 19 | `def` | [stabilizedFixedPointJacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilizedfixedpointjacobian--1c00ddf931acbaa9975dee31.md) | 133 | `declaration-track:1c00ddf931acbaa9975dee31f2585992b91e3cc3849f64069f578be6cbc26a95` |
| 20 | `theorem` | [stabilized_one_sub_fixed_point_jacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-one-sub-fixed-point-jacobian--bb8612a4b8236074619b8253.md) | 138 | `result-track:bb8612a4b8236074619b8253d815e3988be70a8bf210fbeee86caad842aa9ebc` |
| 21 | `theorem` | [stabilized_fixed_point_det](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-fixed-point-det--11a6e1a63718ffab40f9e4e6.md) | 144 | `result-track:11a6e1a63718ffab40f9e4e6e744494153170d3538b1b68bfdb49cf61f5c835c` |
| 22 | `theorem` | [stabilized_fixed_points_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-fixed-points-nondegenerate--3e2739ab5ded99e5ccbc384d.md) | 149 | `result-track:3e2739ab5ded99e5ccbc384daca8634090b52021541b380b1ff801dd6621aefb` |
| 23 | `theorem` | [stabilized_three_distinct_fixed_points](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/declarations/stabilized-three-distinct-fixed-points--18933382a0471d17de8a96b1.md) | 155 | `result-track:18933382a0471d17de8a96b1ca578f52d4400df209d1d3acd7dc038608094826` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
