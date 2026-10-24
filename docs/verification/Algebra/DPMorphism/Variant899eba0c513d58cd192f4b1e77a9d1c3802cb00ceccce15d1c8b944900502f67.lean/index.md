# Verification target: GRWTSK.Algebra.DPMorphism.Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53a7db048e73987a63601dc783f3f993b786f204",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/index.md) · [Full source](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53a7db048e73987a63601dc783f3f993b786f204`.

Source path: `GRWTSK/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DividedPowers.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsDPMorphism](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/isdpmorphism--0d489a2f19bca7b8ea5ec978.md) | 66 | `declaration-track:0d489a2f19bca7b8ea5ec9781a90cc18aa5745ccb4aea55cc7c0fe6230af719c` |
| 2 | `lemma` | [isDPMorphism_def](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/isdpmorphism-def--65b43f92a8b630e73ffd1218.md) | 74 | `result-track:65b43f92a8b630e73ffd1218517882f99d552ade06b7dd150eb3d015ab4f5f88` |
| 3 | `lemma` | [isDPMorphism_iff](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/isdpmorphism-iff--8080501d74cc4393f16e1220.md) | 78 | `result-track:8080501d74cc4393f16e1220a3625aec17e59912a8eb7ef7732cfd09766b29de` |
| 4 | `theorem` | [map_dpow](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/map-dpow--fe422541edeae6b42d29056d.md) | 91 | `result-track:fe422541edeae6b42d29056d7a160b9a59df2d6aa149867145180c330d084a5d` |
| 5 | `theorem` | [comp](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/comp--9673c50e1fa61cf00d5df693.md) | 94 | `result-track:9673c50e1fa61cf00d5df69312ce5a1099e1d71a220f90845c918657d79c6477` |
| 6 | `structure` | [DPMorphism](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/dpmorphism--bfdbc749d8212120f7a1d1fb.md) | 105 | `declaration-track:bfdbc749d8212120f7a1d1fb268034128dbc426f8ae1e2c54cef9ae6fadfd492` |
| 7 | `instance` | [instFunLike](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/instfunlike--f04114eb621215c1a6a62ca9.md) | 115 | `declaration-track:f04114eb621215c1a6a62ca93a17f6b3b63c3330d561c851c23214431020ca2d` |
| 8 | `instance` | [coe_ringHom](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/coe-ringhom--f9976bfdbe6f06c83bdbc610.md) | 121 | `declaration-track:f9976bfdbe6f06c83bdbc6105d632c49e9d4f764209b35ce2a10f6f294e805b3` |
| 9 | `theorem` | [coe_toRingHom](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/coe-toringhom--e6e859be90808c6bbb8ffe02.md) | 123 | `result-track:e6e859be90808c6bbb8ffe0286000ed8ade0734a19f6a8496b9b2090555fd7ad` |
| 10 | `lemma` | [toRingHom_apply](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/toringhom-apply--6389c25096382dfb4f748242.md) | 125 | `result-track:6389c25096382dfb4f748242230c81b03d9b2e85a33b27d47efdab2d6ce3cfac` |
| 11 | `lemma` | [isDPMorphism](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/isdpmorphism--109c4277457957940fb68839.md) | 129 | `result-track:109c4277457957940fb68839059aa181841ed90f7505f8942add4c4b9dfc2c1a` |
| 12 | `def` | [mk'](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/mk--849b9b682deaf2a2c9417010.md) | 134 | `declaration-track:849b9b682deaf2a2c9417010ad9c058cd0f47e49efb657820adfd6dd7f938342` |
| 13 | `def` | [_root_.GRWTSK.Algebra.IsDPMorphism.Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.DividedPowers.ideal_from_ringHom](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/root-grwtsk-algebra-isdpmorphism-variantb2a1f8e83fbb5398fdba1b8ac5bfa62e--1bfa2984db6d5ad810506eab.md) | 142 | `declaration-track:1bfa2984db6d5ad810506eab423cff3f35729657dafa8ab9d382fe6fbfd8bdf2` |
| 14 | `def` | [fromGens](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/fromgens--a6f9628913ad64ee45e14432.md) | 166 | `declaration-track:a6f9628913ad64ee45e14432747cb283328ff00f76385b9e2e85c9d7bb2237fb` |
| 15 | `def` | [id](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/id--4f7ed273688e01b15f9397b8.md) | 178 | `declaration-track:4f7ed273688e01b15f9397b8161ca0db801da242e0e59478ebbb1351e86cd67b` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/instance--0e4bc7273f9670309e89c0ec.md) | 183 | `declaration-track:0e4bc7273f9670309e89c0ec14df1ffa1d03311e30363fa7ff967bb4ccf24319` |
| 17 | `theorem` | [fromGens_coe](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/fromgens-coe--81de71a73f213c7f80080a56.md) | 185 | `result-track:81de71a73f213c7f80080a5612050554121537f98009ca3e6b006cace7053679` |
| 18 | `theorem` | [on_span](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/on-span--695092ea6599152f99806323.md) | 198 | `result-track:695092ea6599152f998063232721413bf48a90a5c81b855df645474621f29b92` |
| 19 | `theorem` | [of_comp](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/of-comp--db0558880972b58175a2e015.md) | 207 | `result-track:db0558880972b58175a2e01555889bd61965332f562c802470997f3d3e5191c5` |
| 20 | `def` | [comp](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/comp--c666fb71b6640c5faed3322b.md) | 224 | `declaration-track:c666fb71b6640c5faed3322beb4f69065476289c4878d066edb0ba840cff476d` |
| 21 | `lemma` | [comp_toRingHom](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/comp-toringhom--bc76fa4682b8e563805555b3.md) | 228 | `result-track:bc76fa4682b8e563805555b3aab2531d006c8e0ad365857054d0fe3e698d8e6f` |
| 22 | `theorem` | [dpow_comp_from_gens](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/dpow-comp-from-gens--ba017d4d5ced87d45fa36b83.md) | 238 | `result-track:ba017d4d5ced87d45fa36b83dd852fe95a58f49a319d23e32693f48a4cee4d0d` |
| 23 | `theorem` | [dpow_eq_from_gens](../../../../mathematics/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/declarations/dpow-eq-from-gens--f4fa5deadec07971b3200376.md) | 246 | `result-track:f4fa5deadec07971b320037665396b5d0c58d5e15508600abf1f054752d53e58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
