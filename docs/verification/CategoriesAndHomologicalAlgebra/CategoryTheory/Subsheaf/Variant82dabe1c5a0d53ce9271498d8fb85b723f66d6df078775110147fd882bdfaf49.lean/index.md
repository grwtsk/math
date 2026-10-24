# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subsheaf.Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83c5208ca25e860e9ec029bfbe4ba2a11714749b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83c5208ca25e860e9ec029bfbe4ba2a11714749b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Subfunctor.isSeparated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-isseparated--ff7e78a032c12c35fb2f5046.md) | 57 | `result-track:ff7e78a032c12c35fb2f504639b2aa32c5d330643f414473e49cd5e93bd253c6` |
| 2 | `def` | [Subfunctor.sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-sheafify--8975c54a90ae371865d45559.md) | 64 | `declaration-track:8975c54a90ae371865d45559b6ddbed3c8230aa35ab81ec82a5674244904b1ef` |
| 3 | `theorem` | [Subfunctor.le_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-le-sheafify--e25aa31e653dd55450e1855f.md) | 73 | `result-track:e25aa31e653dd55450e1855fdb30430617de95224160bf6f396afbfc4e23ca4d` |
| 4 | `theorem` | [Subfunctor.eq_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-eq-sheafify--e9f99210f6e225bf99bf207d.md) | 83 | `result-track:e9f99210f6e225bf99bf207d2f77f85441f02567573c84c9c3e4e3b821c0cdcc` |
| 5 | `theorem` | [Subfunctor.sheafify_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-sheafify-issheaf--cb4c8bceb4f4b680070f0e30.md) | 95 | `result-track:cb4c8bceb4f4b680070f0e30400b9f72e9a42d082d768f20a184ecc9f55b7470` |
| 6 | `theorem` | [Subfunctor.eq_sheafify_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-eq-sheafify-iff--67311001df527d8ace5650eb.md) | 127 | `result-track:67311001df527d8ace5650eb5c8c67212e333e9b00f2a0df03e62e26902d255d` |
| 7 | `theorem` | [Subfunctor.isSheaf_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-issheaf-iff--e9f23f0b479d953c704aec59.md) | 131 | `result-track:e9f23f0b479d953c704aec59faa5e365510354125c7eecbaed7ba7ec532b1616` |
| 8 | `theorem` | [Subfunctor.sheafify_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-sheafify-sheafify--2a37c7a1dc02fb7151fe92d9.md) | 138 | `result-track:2a37c7a1dc02fb7151fe92d91064945dced14a7287d9cc3e1534d6ad729fbf31` |
| 9 | `def` | [Subfunctor.sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-sheafifylift--29651b19ac0396e9f1dedf28.md) | 144 | `declaration-track:29651b19ac0396e9f1dedf28ec53e95ed8e77d99798073b0cfb680ce888f43d1` |
| 10 | `theorem` | [Subfunctor.to_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-to-sheafifylift--c8a28444a96dbd6774d39638.md) | 164 | `result-track:c8a28444a96dbd6774d3963857a11dc7d7dade12bc4c2bc33fb218a5acc37628` |
| 11 | `theorem` | [Subfunctor.to_sheafify_lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-to-sheafify-lift-unique--48e51f22a90c6e0185d2a052.md) | 174 | `result-track:48e51f22a90c6e0185d2a0527151f494e01594a855dddcc5649f3d375bfcc762` |
| 12 | `theorem` | [Subfunctor.sheafify_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-sheafify-le--031251961eef104052bd6dd6.md) | 185 | `result-track:031251961eef104052bd6dd65c75336946a377feb5e43f2bf8bda86d18f3bab5` |
| 13 | `def` | [Subfunctor.toRangeSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/subfunctor-torangesheafify--12280bd43248447a6cf1ec05.md) | 203 | `declaration-track:12280bd43248447a6cf1ec05e69f8e9793ce824bc0257f6876bf1481094bde8f` |
| 14 | `def` | [Sheaf.image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/sheaf-image--6df0090fcf89a7cd588ef688.md) | 209 | `declaration-track:6df0090fcf89a7cd588ef688493392d708de024a03b8bd63ba51c50d79f2481f` |
| 15 | `def` | [Sheaf.toImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/sheaf-toimage--c0d141fe84fbae9a182b7a82.md) | 218 | `declaration-track:c0d141fe84fbae9a182b7a8253230342c5162777630d0c68eb1e8a18cc6288b9` |
| 16 | `def` | [Sheaf.imageι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/sheaf-image--a4da6415f1a8ad853d6342e5.md) | 223 | `declaration-track:a4da6415f1a8ad853d6342e5b6ff7749ce90c510496451f228deba47c589f1e7` |
| 17 | `theorem` | [Sheaf.toImage_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/sheaf-toimage--2c6201fceed0179815a6402a.md) | 229 | `result-track:2c6201fceed0179815a6402a458d18cee01d67d18ec958ad1fe63bb7d03a154e` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/instance--975b4525cb7199f0129a85c7.md) | 235 | `declaration-track:975b4525cb7199f0129a85c7c74a7dcdabcf04e5b3d7814a305e04f2e3225335` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/instance--79b3db52abe81d7da8ac1982.md) | 242 | `declaration-track:79b3db52abe81d7da8ac1982bfe7fc03fc9b086efe552e07595c8eadd754ad4a` |
| 20 | `def` | [imageMonoFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/imagemonofactorization--640502ecc35395d0ad124449.md) | 257 | `declaration-track:640502ecc35395d0ad1244498bced3b025f81a27c2a649a7aff2a42ce3fbec79` |
| 21 | `def` | [imageFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/imagefactorization--d267696f0635de153884ee82.md) | 265 | `declaration-track:d267696f0635de153884ee8235cb2417e8307fad1ab13769a89fd29e507b8baf` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/declarations/instance--51a5f8f0c91ac0fead992ca8.md) | 288 | `declaration-track:51a5f8f0c91ac0fead992ca8044e65136bfb40ac2fb2cbfc0c18c012df698419` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
