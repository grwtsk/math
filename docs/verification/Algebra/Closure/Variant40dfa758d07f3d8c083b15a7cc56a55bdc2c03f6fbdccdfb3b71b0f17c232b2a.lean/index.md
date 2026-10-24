# Verification target: GRWTSK.Algebra.Closure.Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "681d6352d9d63e87784f65d5786913f0b3b8dd00",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `681d6352d9d63e87784f65d5786913f0b3b8dd00`.

Source path: `GRWTSK/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsNormalClosure](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/isnormalclosure--4cc0d198be911b1b50782a47.md) | 39 | `declaration-track:4cc0d198be911b1b50782a47265886e0cd5eb4263b67a1ecfdbc099434967b16` |
| 2 | `def` | [IntermediateField.normalClosure](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/intermediatefield-normalclosure--4c672a045e3ddd79cae3a892.md) | 47 | `declaration-track:4c672a045e3ddd79cae3a892c8860623b8ffc82e318d89a1267d30db4028ffcd` |
| 3 | `lemma` | [normalClosure_def](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normalclosure-def--9de323076e6bb391c0678de0.md) | 50 | `result-track:9de323076e6bb391c0678de0b05e1682066b32a050b97a5b500672a166da9dff` |
| 4 | `lemma` | [IsNormalClosure.normal](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/isnormalclosure-normal--ff6680957c5b298f1f0ec05a.md) | 56 | `result-track:ff6680957c5b298f1f0ec05a45e9f1617cb2d1fa4931bbbfb353254d5c1998f2` |
| 5 | `lemma` | [normalClosure_le_iff](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normalclosure-le-iff--de23d33e4839d7b00dee32bd.md) | 60 | `result-track:de23d33e4839d7b00dee32bdd50314d97a190e4211e3808cf334c8758f776c0f` |
| 6 | `lemma` | [AlgHom.fieldRange_le_normalClosure](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/alghom-fieldrange-le-normalclosure--ff0156d680b3629ceab9099f.md) | 64 | `result-track:ff0156d680b3629ceab9099f17c863a75f9614bf29be7095ff37d978518dce62` |
| 7 | `lemma` | [normalClosure_le_iSup_adjoin](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normalclosure-le-isup-adjoin--4bf7c5e33a2c4991947c3059.md) | 70 | `result-track:4bf7c5e33a2c4991947c305974d7324a514bdbc3d1fd02ea0c4fa941809edf2b` |
| 8 | `lemma` | [normalClosure_eq_iSup_adjoin_of_splits](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normalclosure-eq-isup-adjoin-of-splits--8e73aaee0cc4915cb2407003.md) | 80 | `result-track:8e73aaee0cc4915cb24070033e51954a700be33614f2d31e28d64cdd8937191a` |
| 9 | `lemma` | [isNormalClosure_iff](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/isnormalclosure-iff--b2724c928480331dc62b9950.md) | 90 | `result-track:b2724c928480331dc62b9950baa25fc4ebe23280ddb201443fd452c3fa22787f` |
| 10 | `lemma` | [isNormalClosure_normalClosure](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/isnormalclosure-normalclosure--d54f8872ed3de2e7afeaff1c.md) | 99 | `result-track:d54f8872ed3de2e7afeaff1c89ea745780e66c8e0c3c3111230b2694d58028ca` |
| 11 | `def` | [IsNormalClosure.lift](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/isnormalclosure-lift--c179bf155c46f7377e50a7ed.md) | 116 | `declaration-track:c179bf155c46f7377e50a7ed450974ba8108c3ffac14163066e7d261eaa92524` |
| 12 | `def` | [IsNormalClosure.equiv](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/isnormalclosure-equiv--78708e087fecdfd9e2e96adf.md) | 128 | `declaration-track:78708e087fecdfd9e2e96adf165e50a306978f20f37cf62d2bfb5b069c13ea0d` |
| 13 | `instance` | [isNormalClosure_normalClosure](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/isnormalclosure-normalclosure--2feb8685f355dd7642c90bb2.md) | 138 | `declaration-track:2feb8685f355dd7642c90bb2d9be8c6f0f7d6c0ba747f693089ac6ae6fcd2633` |
| 14 | `theorem` | [normalClosure_eq_iSup_adjoin'](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normalclosure-eq-isup-adjoin--60026b5147e9f120226eb582.md) | 145 | `result-track:60026b5147e9f120226eb58278d7ae0e780779c549871163f7fa727bef804c67` |
| 15 | `theorem` | [normalClosure_eq_iSup_adjoin](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normalclosure-eq-isup-adjoin--b8075492daa4a98303331ca5.md) | 153 | `result-track:b8075492daa4a98303331ca5ddfa799b586bc744763f91991b442445192e8658` |
| 16 | `def` | [algHomEquiv](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/alghomequiv--f1793c848a3483091038645e.md) | 160 | `declaration-track:f1793c848a3483091038645e32c3b14ddb07c8e6f6a71c77774e882393867886` |
| 17 | `instance` | [normal](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normal--ad008cf55762623e0b4abe90.md) | 167 | `declaration-track:ad008cf55762623e0b4abe90e5c88276a5a23c59c84cc46314fb90872e557c15` |
| 18 | `instance` | [is_finiteDimensional](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/is-finitedimensional--e51bfac1c6106b813f3e53fd.md) | 173 | `declaration-track:e51bfac1c6106b813f3e53fd5f61b49a8b8212df60da30b1b97f29dab13d4c5c` |
| 19 | `instance` | [algebra](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/algebra--e9ff1bb00268a9861daea67b.md) | 181 | `declaration-track:e9ff1bb00268a9861daea67b6f72e1662a4e5f0c43585be228d2cb17c6eabf7f` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/instance--66ee553233ceeb31ac5d5b7e.md) | 187 | `declaration-track:66ee553233ceeb31ac5d5b7eafd8a4bd0515b0ae53a59f36a6e3e9a44fb89bc1` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/instance--b984c9e86622eb6f5da9c65e.md) | 192 | `declaration-track:b984c9e86622eb6f5da9c65ec8d87f9ea6989a4c131ce8c572f93b959adad95a` |
| 22 | `lemma` | [restrictScalars_eq](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/restrictscalars-eq--5172f635e627f209873b5931.md) | 195 | `result-track:5172f635e627f209873b5931456493273261e8252933f008d70c9e4fd212b885` |
| 23 | `def` | [Algebra.IsAlgebraic.algHomEmbeddingOfSplits](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/algebra-isalgebraic-alghomembeddingofsplits--6862ffc1ca3ebd0584ce92a7.md) | 208 | `declaration-track:6862ffc1ca3ebd0584ce92a704ef39184cdd0546d48e833e9e92186803637d0a` |
| 24 | `lemma` | [le_normalClosure](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/le-normalclosure--f19855491d424c7b14fe8779.md) | 231 | `result-track:f19855491d424c7b14fe877964682aa0f92ee8a270b81ecd603c86f48393bfe8` |
| 25 | `lemma` | [normalClosure_of_normal](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normalclosure-of-normal--9354d139f4476c390fb76079.md) | 234 | `result-track:9354d139f4476c390fb760794752caf1a3830b3db10a7eb8cccea97ec56e02a2` |
| 26 | `lemma` | [normalClosure_def'](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normalclosure-def--5c286b929f6ada8cab4f7947.md) | 239 | `result-track:5c286b929f6ada8cab4f79477bea2014c4fdf564947291589bdc8c75ead77358` |
| 27 | `lemma` | [normalClosure_def''](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normalclosure-def--ae163ad6805aa0e4725fa8ea.md) | 244 | `result-track:ae163ad6805aa0e4725fa8ea547441587f8c2b46ee72c322d3497e6e39f28147` |
| 28 | `lemma` | [normalClosure_mono](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normalclosure-mono--473fb14c4fbb3532f39f0d04.md) | 250 | `result-track:473fb14c4fbb3532f39f0d0431f6443b491a438de32282cc740898eec0510afa` |
| 29 | `def` | [closureOperator](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/closureoperator--504dc7dc6419bf33f420971c.md) | 258 | `declaration-track:504dc7dc6419bf33f420971c0115ea47d7577777a2c198b9cb302b969ced82b0` |
| 30 | `lemma` | [normal_iff_normalClosure_eq](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normal-iff-normalclosure-eq--1df7a745729ad3bfbcf2a210.md) | 266 | `result-track:1df7a745729ad3bfbcf2a2109e72cec9cfbbffa55481dc19fcbeccce9cce909a` |
| 31 | `lemma` | [normal_iff_normalClosure_le](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normal-iff-normalclosure-le--eb81fc57c75e50dda39d8c28.md) | 269 | `result-track:eb81fc57c75e50dda39d8c28d49c6196196d5d491d327f99c9429237b9fca8a9` |
| 32 | `lemma` | [normal_iff_forall_fieldRange_le](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normal-iff-forall-fieldrange-le--9e22f1a9b95cc49b1699ff1e.md) | 272 | `result-track:9e22f1a9b95cc49b1699ff1eea4620a3463d9ed8db3bf3960782391014b1d09a` |
| 33 | `lemma` | [normal_iff_forall_map_le](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normal-iff-forall-map-le--89dc94b8425101fdda86aaf2.md) | 275 | `result-track:89dc94b8425101fdda86aaf2714c700148c20e926838de183afb0720bbd80d07` |
| 34 | `lemma` | [normal_iff_forall_map_le'](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normal-iff-forall-map-le--23d543a86fa0eb9ab8ec8a4a.md) | 278 | `result-track:23d543a86fa0eb9ab8ec8a4a4fbeacd952c4b309f8483b3001c73a7e3e1c480d` |
| 35 | `lemma` | [normal_iff_forall_fieldRange_eq](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normal-iff-forall-fieldrange-eq--8fc286e69212e1f55ec7208e.md) | 284 | `result-track:8fc286e69212e1f55ec7208ef1c71f8aa35ddec1d7e68caaa1e8c398875ba95b` |
| 36 | `lemma` | [normal_iff_forall_map_eq](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normal-iff-forall-map-eq--fd411d074c66b0ad294d7305.md) | 287 | `result-track:fd411d074c66b0ad294d7305fb6a50073cda5453d6049a79983879057baab443` |
| 37 | `lemma` | [normal_iff_forall_map_eq'](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normal-iff-forall-map-eq--807323f5163bcc2d3f2811a9.md) | 291 | `result-track:807323f5163bcc2d3f2811a94f65d57311947383a21230704935c49321fae8de` |
| 38 | `lemma` | [normalClosure_map_eq](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normalclosure-map-eq--1a47936075db7b72ed1d08e6.md) | 295 | `result-track:1a47936075db7b72ed1d08e6134695eb6bda47661c20217df65f1f3bd0788afe` |
| 39 | `theorem` | [normalClosure_le_iff_of_normal](../../../../mathematics/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/declarations/normalclosure-le-iff-of-normal--2ea509d16a480a4a2d603450.md) | 303 | `result-track:2ea509d16a480a4a2d60345026798bcbb6de2d06e07f1826671771304140b5b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
