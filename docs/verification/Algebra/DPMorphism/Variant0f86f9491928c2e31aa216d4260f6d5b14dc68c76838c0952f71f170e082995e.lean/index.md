# Verification target: GRWTSK.Algebra.DPMorphism.Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "082c800007fde76dce50247937f65a7fc316a03f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/index.md) · [Full source](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `082c800007fde76dce50247937f65a7fc316a03f`.

Source path: `GRWTSK/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsDPMorphism](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/isdpmorphism--0b9d77fee65b5275aedb6f23.md) | 70 | `declaration-track:0b9d77fee65b5275aedb6f2399177a9feb69e8906b9b65dc6b564840938b5b3d` |
| 2 | `lemma` | [isDPMorphism_def](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/isdpmorphism-def--6879c49b4e434176808f5d70.md) | 78 | `result-track:6879c49b4e434176808f5d7083f117ad22baf9a9778b7fb9144149288b18541d` |
| 3 | `lemma` | [isDPMorphism_iff](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/isdpmorphism-iff--0faf69343ff84be2c943748d.md) | 82 | `result-track:0faf69343ff84be2c943748dbb7cc6fd4abd4c0f5bc5047d5f02fd7ec98fbb2b` |
| 4 | `theorem` | [map_dpow](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/map-dpow--c3d162ff36a7fd2f4a663c7f.md) | 95 | `result-track:c3d162ff36a7fd2f4a663c7fc6dff6b665f6fc16730b0ff633beebf365eb1518` |
| 5 | `theorem` | [comp](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/comp--55a674ef9cab341fde1487bd.md) | 98 | `result-track:55a674ef9cab341fde1487bd7c1e075b64ea700ab5f6c9f5a69a2705081fe02e` |
| 6 | `structure` | [DPMorphism](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/dpmorphism--c6ba24832e09a8cfbda01785.md) | 109 | `declaration-track:c6ba24832e09a8cfbda01785a4d86feecde5b3c19354e64d6469567accaccb8f` |
| 7 | `instance` | [instFunLike](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/instfunlike--2600980af9309906feb743c0.md) | 120 | `declaration-track:2600980af9309906feb743c0bf216b48171b3c1996664e248d3d57a4e15a8380` |
| 8 | `instance` | [coe_ringHom](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/coe-ringhom--d28f5331ede88aa879785b24.md) | 126 | `declaration-track:d28f5331ede88aa879785b24a43dd580c51e3ac337310807e793b23e889ff496` |
| 9 | `theorem` | [coe_toRingHom](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/coe-toringhom--f531d1c29ae79ad626034710.md) | 128 | `result-track:f531d1c29ae79ad6260347103714f80e0d3241b1d6f5736237eca658501129ee` |
| 10 | `lemma` | [toRingHom_apply](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/toringhom-apply--ce6442a3506a6753731a5169.md) | 130 | `result-track:ce6442a3506a6753731a51696892e4a03e72fbd4d412a21d4ffaea93455a2c3a` |
| 11 | `lemma` | [isDPMorphism](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/isdpmorphism--4b96a25e726d0866938d8555.md) | 134 | `result-track:4b96a25e726d0866938d855541a3c89e0bbdfd614d517cffa9185093ae4c0acb` |
| 12 | `def` | [mk'](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/mk--9ace204f343bdc03134e170f.md) | 139 | `declaration-track:9ace204f343bdc03134e170fec7ed32e5f6579b2d978205502171412a73e3d3a` |
| 13 | `def` | [_root_.GRWTSK.Algebra.IsDPMorphism.Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.DividedPowers.ideal_from_ringHom](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/root-grwtsk-algebra-isdpmorphism-variante7ae21d610b1c805ef33b3d37b2a03de--8feabcca84d5bcf5f2673e63.md) | 148 | `declaration-track:8feabcca84d5bcf5f2673e632ec6cbc6eea8ffa595935b68842ae7a20513fd6d` |
| 14 | `def` | [fromGens](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/fromgens--28445ffce465be5fec97abbe.md) | 173 | `declaration-track:28445ffce465be5fec97abbe48517914f02a4787ba13d7e831869e41982e4962` |
| 15 | `def` | [id](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/id--4d7f8b9b46c35f56db1c711b.md) | 186 | `declaration-track:4d7f8b9b46c35f56db1c711b87b3860d9830874e3ddf2533a00e8d09baf5348f` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/instance--c2d754e0b21bdd083dcf77fb.md) | 191 | `declaration-track:c2d754e0b21bdd083dcf77fb6666db8f00369b5c52d0f810413d4481230ff3ad` |
| 17 | `theorem` | [fromGens_coe](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/fromgens-coe--f389f76103d6bb18807797b4.md) | 193 | `result-track:f389f76103d6bb18807797b461e3cab3e9a03a4f629ca924a8412725f9e801ec` |
| 18 | `theorem` | [on_span](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/on-span--c3316288a81ae69143a44c11.md) | 206 | `result-track:c3316288a81ae69143a44c11fb6583b9ee5e2df39cf5697c54a5f8a4500fdecd` |
| 19 | `theorem` | [of_comp](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/of-comp--35b795174441fa4a4d176f81.md) | 215 | `result-track:35b795174441fa4a4d176f81be0e8e7e4ba047696f4ce550e95ff5340beaecd1` |
| 20 | `def` | [comp](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/comp--f427792a0ae181d0534f32cb.md) | 232 | `declaration-track:f427792a0ae181d0534f32cb5dd5b353a472ea2135fa6e338355f4765918b4d7` |
| 21 | `lemma` | [comp_toRingHom](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/comp-toringhom--ac79ab4e396a5a5922c13eae.md) | 236 | `result-track:ac79ab4e396a5a5922c13eae8840bd17e92b9e37d185c3edc0e0ac1110ad0d6f` |
| 22 | `theorem` | [dpow_comp_from_gens](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/dpow-comp-from-gens--0e205cda5f8fe52ce0c1e6f1.md) | 246 | `result-track:0e205cda5f8fe52ce0c1e6f1f4b9362031674b6f012c033ce87f56c479dd5cb9` |
| 23 | `theorem` | [dpow_eq_from_gens](../../../../mathematics/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean/declarations/dpow-eq-from-gens--f4c003c1d2bf6a5194ea7e0c.md) | 254 | `result-track:f4c003c1d2bf6a5194ea7e0c7765e23fc949edbf9cb8013df88872c688c7a985` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
