# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Simplex.Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b092947199e85e841f36b011db7dd50abed66e5e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b092947199e85e841f36b011db7dd50abed66e5e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SimplexPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/simplexpoint--0536f1b33568031e061a29d4.md) | 19 | `declaration-track:0536f1b33568031e061a29d45067104de5a3d1ce3a501d28e6f04236554020b4` |
| 2 | `instance` | [instCoeFunSimplexPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/instcoefunsimplexpoint--19bba018653d4ca894fc0672.md) | 28 | `declaration-track:19bba018653d4ca894fc06724875b024c81f4f9fade1ce5b4a1fa1d7e2f39fe5` |
| 3 | `theorem` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/ext--392894ec0d099297fbbd8f5c.md) | 32 | `result-track:392894ec0d099297fbbd8f5c54d07240a938e7a5bec3655f60688ebdb78d1f83` |
| 4 | `def` | [reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/reindex--db2252b36a1c93e3a5619860.md) | 43 | `declaration-track:db2252b36a1c93e3a56198609db5c71436b9189410ddf5457955214a90b3bbc3` |
| 5 | `theorem` | [reindex_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/reindex-apply--52a658287a66ac39ee091afe.md) | 51 | `result-track:52a658287a66ac39ee091afe9dbebb50bdc4e95249c89517d872e78d1d550e5e` |
| 6 | `theorem` | [reindex_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/reindex-refl--68fda7c3ec267f456523cfec.md) | 56 | `result-track:68fda7c3ec267f456523cfec44a7447a93bd88d46d7bed275145a29ea8a6582d` |
| 7 | `theorem` | [reindex_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/reindex-trans--77780327141c4f0224bd2a22.md) | 62 | `result-track:77780327141c4f0224bd2a22af61d309f0e04fb2fdaa430850b05046ab0b75fe` |
| 8 | `def` | [barycentric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/barycentric--5a976c9ba815d78d43d5510b.md) | 69 | `declaration-track:5a976c9ba815d78d43d5510b4b9c990bdd1a9ad298f90f6aa5fa1ebd26b3fee9` |
| 9 | `theorem` | [barycentric_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/barycentric-apply--1a697e41fa5aba8aff489400.md) | 86 | `result-track:1a697e41fa5aba8aff4894002b01f3e962121a1b28b2405472a7cdde87fbbd71` |
| 10 | `def` | [merge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/merge--75a82d395dd2825e220757af.md) | 94 | `declaration-track:75a82d395dd2825e220757afec3f5f1635c0c7e3a94b26e951f29483df392251` |
| 11 | `theorem` | [merge_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/merge-apply--ae39fc69ce2d35d500437db4.md) | 110 | `result-track:ae39fc69ce2d35d500437db45070ed158e47d330ca5010bf8ac8ab50fcd6c50b` |
| 12 | `def` | [hierarchical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/hierarchical--1defe20f21517b44176f9749.md) | 116 | `declaration-track:1defe20f21517b44176f9749a0c80498564c9d5290648fe9f5d43a868341f2fc` |
| 13 | `theorem` | [hierarchical_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/hierarchical-apply--b80e0420d2e5edbb5fa889bf.md) | 135 | `result-track:b80e0420d2e5edbb5fa889bf9c1ec06b9605a35171cb6d38751f9b520b3635ce` |
| 14 | `structure` | [InteriorSimplexPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/interiorsimplexpoint--822c054a9572aae8b9fec240.md) | 145 | `declaration-track:822c054a9572aae8b9fec240a2f1048c6b33bbb7e946bc65f66bdad25af1efd4` |
| 15 | `instance` | [instCoeFunInteriorSimplexPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/instcoefuninteriorsimplexpoint--881e273708163606549bf967.md) | 153 | `declaration-track:881e273708163606549bf96759951888345ffe1e90cbaaf2ddb81f3415e5b472` |
| 16 | `theorem` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/ext--b608a86ab57b7c1e967f1ca3.md) | 158 | `result-track:b608a86ab57b7c1e967f1ca3fce9b51318d08d123ca1a04e1128037c9a0b546b` |
| 17 | `def` | [reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/reindex--85fd7087dde4dede09d63aab.md) | 170 | `declaration-track:85fd7087dde4dede09d63aab88f725c995e44e5c3380d5c89102dbb8c277c503` |
| 18 | `theorem` | [reindex_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Simplex/Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1.lean/declarations/reindex-apply--27ad0de4c070987248b84987.md) | 176 | `result-track:27ad0de4c070987248b849874f3414cf54d58f32791da2db052a9e0479b36112` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
