# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobianConjecture.Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2063741e42cb80823e3f893846157bdec9978587",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2063741e42cb80823e3f893846157bdec9978587`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.JacobianConjecture.FixedPoints` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [StabilizedCoordinates](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilizedcoordinates--0afc9488436e187d13c0befe.md) | 28 | `declaration-track:0afc9488436e187d13c0befe3160539b5ff6226b8e167d7af284bddefa4d3bbe` |
| 2 | `theorem` | [stabilized_coordinate_card](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-coordinate-card--a6296f46bc80da1012acb9e1.md) | 30 | `result-track:a6296f46bc80da1012acb9e18a65b801aba5222aea600b47aa45e8660be89214` |
| 3 | `def` | [stabilizedPoly](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilizedpoly--e6587da1e90fd65c04cf0c0f.md) | 34 | `declaration-track:e6587da1e90fd65c04cf0c0fc4b3c1ed46fac88ffe2b245369f6ca565357a759` |
| 4 | `def` | [stabilizedMap](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilizedmap--bead0124d8998d548dd0e1e8.md) | 38 | `declaration-track:bead0124d8998d548dd0e1e8ce9d40a772a292f510be8682682c38f69cfd6701` |
| 5 | `def` | [stabilizedJacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilizedjacobian--eb6b54ec730fbf6deeb1c24d.md) | 42 | `declaration-track:eb6b54ec730fbf6deeb1c24d48ecb3cb70543b2f5ba3cfeb7900db3c670c011c` |
| 6 | `def` | [stabilizePoint](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilizepoint--309f925a957ec5ad4cc287c9.md) | 47 | `declaration-track:309f925a957ec5ad4cc287c9fea65897bba4dd43b95824ddf5915a91b7964d90` |
| 7 | `theorem` | [pderiv_rename_inl_inr](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/pderiv-rename-inl-inr--6250b699e29e77548a590e9a.md) | 50 | `result-track:6250b699e29e77548a590e9a055a7ffc4384a4ff5eac363fcc6f0a334d65c3ee` |
| 8 | `theorem` | [stabilized_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-map-apply--58443ba29b307d942fd82703.md) | 59 | `result-track:58443ba29b307d942fd827030db64702965534c1d8e773c09c063781519f067b` |
| 9 | `theorem` | [stabilized_jacobian_eq](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-jacobian-eq--9ce43ad41767f596d3ce5080.md) | 69 | `result-track:9ce43ad41767f596d3ce5080ece2049ceb78f573a30423e32880d2129c61bde1` |
| 10 | `theorem` | [stabilized_jacobian_det](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-jacobian-det--593a13d5db23af04ba629f62.md) | 85 | `result-track:593a13d5db23af04ba629f629f5ed213ac8abe14066f9e06349976a5676c1889` |
| 11 | `theorem` | [stabilized_jacobian_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-jacobian-ne-zero--aa2e45976a181dc8e5d5f59d.md) | 90 | `result-track:aa2e45976a181dc8e5d5f59d7859c521227034cebd214ee851f6473a466d24fc` |
| 12 | `theorem` | [stabilize_point_injective](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilize-point-injective--e728b0598fe90c72e0b9be98.md) | 95 | `result-track:e728b0598fe90c72e0b9be9847de8673b8a9121a524ef8230b4e1108d903687d` |
| 13 | `theorem` | [stabilized_map_stabilize_point](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-map-stabilize-point--48b6b056ee2342e2b81dc37d.md) | 101 | `result-track:48b6b056ee2342e2b81dc37dff41c32e6357980b6fc7954980bb4e5748eabbd9` |
| 14 | `theorem` | [stabilized_three_distinct_fiber_points](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-three-distinct-fiber-points--1f217f3c3260fc743c166079.md) | 107 | `result-track:1f217f3c3260fc743c16607985dfaa9a9918e0164e1d49cc393b36f5647addfd` |
| 15 | `theorem` | [stabilized_map_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-map-not-injective--b4e7a1ac7e5425a477c420f5.md) | 121 | `result-track:b4e7a1ac7e5425a477c420f59640d0b6733ca8ad1d4fc1af789d361cf0a83783` |
| 16 | `def` | [stabilizedTransform](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilizedtransform--fc719e464266506fa91f7888.md) | 126 | `declaration-track:fc719e464266506fa91f7888512ed85d3a5bf21798f777149cc71c6cb7525770` |
| 17 | `def` | [stabilizedTransformPoly](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilizedtransformpoly--1b5ea315655aa9e48718cba5.md) | 130 | `declaration-track:1b5ea315655aa9e48718cba55e8d62d9ab27157a1425fdb48d0fcedee1f8c0da` |
| 18 | `theorem` | [stabilized_transform_eq_eval](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-transform-eq-eval--d5ed4d6d70a12771af98fc43.md) | 135 | `result-track:d5ed4d6d70a12771af98fc438e5d4a6262e1a8359f52b8fa10dd218b1d174ff1` |
| 19 | `def` | [stabilizedFixedPointJacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilizedfixedpointjacobian--b014fb80435dd7374cbeac98.md) | 141 | `declaration-track:b014fb80435dd7374cbeac982526cf21478b62b7e06acc68b10122632c5da2c9` |
| 20 | `theorem` | [stabilized_one_sub_fixed_point_jacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-one-sub-fixed-point-jacobian--34e5ecb417ab31322a25b4d9.md) | 146 | `result-track:34e5ecb417ab31322a25b4d980f1cfffbb21c997f6e75b600bf220caaddfea0b` |
| 21 | `theorem` | [stabilized_fixed_point_det](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-fixed-point-det--842233ebfb493cdfee8cbb51.md) | 152 | `result-track:842233ebfb493cdfee8cbb5196d06818e06e528ff994e2cf9bde2f2da6e798ac` |
| 22 | `theorem` | [stabilized_fixed_points_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-fixed-points-nondegenerate--f6856b146995bed8e531d430.md) | 157 | `result-track:f6856b146995bed8e531d430eabf6522e1bb2847e3da4bea875e4aee35bac6db` |
| 23 | `theorem` | [stabilized_three_distinct_fixed_points](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/declarations/stabilized-three-distinct-fixed-points--96ba4881a959f9bb64795774.md) | 163 | `result-track:96ba4881a959f9bb647957747d2a7cbbb896705cda1b737c40ce4437e32716a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
