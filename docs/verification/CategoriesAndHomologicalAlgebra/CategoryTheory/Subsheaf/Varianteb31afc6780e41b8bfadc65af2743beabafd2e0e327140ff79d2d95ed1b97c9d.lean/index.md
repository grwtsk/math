# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subsheaf.Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4f42d15b4341888766c55a0cce3253e6f91e891",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4f42d15b4341888766c55a0cce3253e6f91e891`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elementwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.EpiMono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.ConcreteSheafification` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subpresheaf.Image` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subpresheaf.Sieves` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subpresheaf.sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/subpresheaf-sheafify--a26c83291184074de08f2758.md) | 56 | `declaration-track:a26c83291184074de08f27581cd98d12300a9701fa51545384fcf65f9b92ea20` |
| 2 | `theorem` | [Subpresheaf.le_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/subpresheaf-le-sheafify--138118ecd8fbf296326b142d.md) | 65 | `result-track:138118ecd8fbf296326b142d81308d817b9ea5ca2ebe77ed002e8fbefcb82b02` |
| 3 | `theorem` | [Subpresheaf.eq_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/subpresheaf-eq-sheafify--8a1f1894fdf61047ca29308b.md) | 75 | `result-track:8a1f1894fdf61047ca29308bc8e92a13ab7939647f0bb88a2bce97adc1cb4180` |
| 4 | `theorem` | [Subpresheaf.sheafify_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/subpresheaf-sheafify-issheaf--1b5186469dc5b21c0f0032c6.md) | 86 | `result-track:1b5186469dc5b21c0f0032c60d6b0d4f6a6b6dc1ada7a2a127dfe911f2f9f176` |
| 5 | `theorem` | [Subpresheaf.eq_sheafify_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/subpresheaf-eq-sheafify-iff--bcc3cdb1867362279a3e436b.md) | 127 | `result-track:bcc3cdb1867362279a3e436b2bd6b44c152b2096e96232a7611cbdd58161773b` |
| 6 | `theorem` | [Subpresheaf.isSheaf_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/subpresheaf-issheaf-iff--31407863d719a019803b6c1a.md) | 131 | `result-track:31407863d719a019803b6c1ad9089861cefea1801c6c92ec5ee7999be030b369` |
| 7 | `theorem` | [Subpresheaf.sheafify_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/subpresheaf-sheafify-sheafify--0c42166b0b81a4a532e6e76e.md) | 138 | `result-track:0c42166b0b81a4a532e6e76e94bef69d42247699cba6fcb3d2bd6242daad496d` |
| 8 | `def` | [Subpresheaf.sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/subpresheaf-sheafifylift--33251399bb73a1480ebc42f2.md) | 143 | `declaration-track:33251399bb73a1480ebc42f232fbd93c48fa1c66da060b7b1cc25ce3aef5ad27` |
| 9 | `theorem` | [Subpresheaf.to_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/subpresheaf-to-sheafifylift--07c59b52b8b626c9dd597215.md) | 164 | `result-track:07c59b52b8b626c9dd597215475c314a2e5d4987a2dd4f789aa3f86adfe4f99f` |
| 10 | `theorem` | [Subpresheaf.to_sheafify_lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/subpresheaf-to-sheafify-lift-unique--ae1a47626946861332e5ed35.md) | 174 | `result-track:ae1a47626946861332e5ed3542a9b9352836a194fabadc89f4ed811608d1013d` |
| 11 | `theorem` | [Subpresheaf.sheafify_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/subpresheaf-sheafify-le--4621f720add661a09a65d76c.md) | 185 | `result-track:4621f720add661a09a65d76cd43a88545dbbadb80165d36f312ea9542842ced9` |
| 12 | `def` | [Subpresheaf.toRangeSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/subpresheaf-torangesheafify--b6f3edb1b2b18fe8538284aa.md) | 203 | `declaration-track:b6f3edb1b2b18fe8538284aaa6d1a6a7ffaef1ebb20d94f6519a98432b6a8888` |
| 13 | `def` | [Sheaf.image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/sheaf-image--68bcc4065d4027faf38592b7.md) | 210 | `declaration-track:68bcc4065d4027faf38592b7debc8c4daa84188f71f2f29c54fb924097258683` |
| 14 | `def` | [Sheaf.toImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/sheaf-toimage--1f93fd2d1e682a71eeddc902.md) | 219 | `declaration-track:1f93fd2d1e682a71eeddc9021d28aee80efd82f3bd1fc6e77eda157d11807a1a` |
| 15 | `def` | [Sheaf.imageι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/sheaf-image--9d33f9953ca56af569fe82f2.md) | 224 | `declaration-track:9d33f9953ca56af569fe82f2692cc64877bb994d0d50549ad74db7d56f2151ac` |
| 16 | `theorem` | [Sheaf.toImage_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/sheaf-toimage--a5eed9887ef6794a508606f1.md) | 229 | `result-track:a5eed9887ef6794a508606f16652ed94af924dae02dbaeec0898b519678e712a` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/instance--bfe7b12810111caa37f5f614.md) | 234 | `declaration-track:bfe7b12810111caa37f5f61441be6d8aebcf4ba3e6dae5fe3beddbdbe7a2d227` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/instance--2f87da9516778e7b54841670.md) | 240 | `declaration-track:2f87da9516778e7b548416707242869555adbaee8132660f9d8476f82f38c460` |
| 19 | `def` | [imageMonoFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/imagemonofactorization--0e1ec28eb930c85c0c754a3a.md) | 254 | `declaration-track:0e1ec28eb930c85c0c754a3a7b354e29f56bbef64150c4810ce4561113ff5691` |
| 20 | `def` | [imageFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/imagefactorization--2d270b2f428305158f62414d.md) | 261 | `declaration-track:2d270b2f428305158f62414dd7a82e2ec9fb4adf95def6b8e823261adcc211e7` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/declarations/instance--6ee07ee714ff15934e134628.md) | 284 | `declaration-track:6ee07ee714ff15934e1346286e386d68560a81af9abf05553b06934b1ca7cc37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
