# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathUnfolding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f0343271b35894fccb1a2abfd33a7c2e37a8eaf",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f0343271b35894fccb1a2abfd33a7c2e37a8eaf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Arborescence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Covering` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Occurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/occurrence--6f67ac175f358c8c4e470052.md) | 41 | `declaration-track:6f67ac175f358c8c4e470052f844c474f19a64dca60168ed916824b45f869077` |
| 2 | `abbrev` | [Occurrence.endpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/occurrence-endpoint--fafa78c28ec573d282e3f554.md) | 47 | `declaration-track:fafa78c28ec573d282e3f55486aad7c50763cab08cfda6dca17641eaa8e18f06` |
| 3 | `abbrev` | [Occurrence.path](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/occurrence-path--021ded900daea67bbf8892cc.md) | 50 | `declaration-track:021ded900daea67bbf8892ccc7690f9d9c6c133f7448eb1ea7ba1fbebd6d6d60` |
| 4 | `def` | [ofPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/ofpath--c816d014f7437f3dcdefe36d.md) | 55 | `declaration-track:c816d014f7437f3dcdefe36d061a3bb5135ed1a4115d697aa963ba9986436262` |
| 5 | `theorem` | [ofPath_path](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/ofpath-path--a78db9d71dccacbf0293a9f8.md) | 58 | `result-track:a78db9d71dccacbf0293a9f85c257e3dc4111bfd9e279ff544c0318e99d933c9` |
| 6 | `def` | [origin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/origin--d7976e127e8b6890b5317066.md) | 63 | `declaration-track:d7976e127e8b6890b5317066caa962d9b82e0c6c35cf565b2005b9b91d6c56a9` |
| 7 | `def` | [extend](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/extend--7fe5ff242d8a2a6261a35ebc.md) | 66 | `declaration-track:7fe5ff242d8a2a6261a35ebca230b87dfa9615cc582c6f4c082f5e8ff7bc8453` |
| 8 | `abbrev` | [Extension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/extension--cdf7d8d4fffa5abf210e37b0.md) | 70 | `declaration-track:cdf7d8d4fffa5abf210e37b031fa05304e53ee9f0cb985a8ff86f8ceb9978fae` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/instance--c38ce0ca221978c3571d32e3.md) | 73 | `declaration-track:c38ce0ca221978c3571d32e3abf8a7902c08a6232a572c14779a2d718f157788` |
| 10 | `def` | [step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/step--251894078af9e1d72d154593.md) | 76 | `declaration-track:251894078af9e1d72d1545937c9a44ffd09a8a4a2b5697f6415f5079c2ffb75f` |
| 11 | `def` | [projection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/projection--02358d25164c1760c4db4236.md) | 80 | `declaration-track:02358d25164c1760c4db4236925c3cc71aba505b3d62d72fe9fc4455b90902e9` |
| 12 | `theorem` | [projection_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/projection-step--12332e9a987c8b6df2ed1667.md) | 85 | `result-track:12332e9a987c8b6df2ed1667399c3e88f9ac221a1f56b1d7d3402c3938db44ce` |
| 13 | `theorem` | [extension_length](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/extension-length--f999832a14f7f429c4fd4ec5.md) | 88 | `result-track:f999832a14f7f429c4fd4ec5ab3836fe53424b8493be75b93c930c6b77639b38` |
| 14 | `theorem` | [extension_height_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/extension-height-lt--5bae5eec4b2797ae6cbbed19.md) | 92 | `result-track:5bae5eec4b2797ae6cbbed19df30895784f626bf2be286ed16bd3eb99be26576` |
| 15 | `theorem` | [unique_incoming](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/unique-incoming--b9b452d4908fc5ba74b23239.md) | 98 | `result-track:b9b452d4908fc5ba74b232391d5ecc80d8ff8943e1b72592e778e4e810e2e709` |
| 16 | `theorem` | [root_or_incoming](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/root-or-incoming--4611a2968ff54d0cad6cd7a1.md) | 113 | `result-track:4611a2968ff54d0cad6cd7a15ea679d00060b546247a9044ba4cfb1e65051cde` |
| 17 | `def` | [unfoldingArborescence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/unfoldingarborescence--e8960e818b4634e0ce861761.md) | 122 | `declaration-track:e8960e818b4634e0ce8617616aab2b09d169396c11c7e91c1d337a52f6eac4a1` |
| 18 | `def` | [uniqueRootPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/uniquerootpath--1996e26ef5622cd94eb2b155.md) | 129 | `declaration-track:1996e26ef5622cd94eb2b1555dbd1ec5629dbfa235b8b21996048b12d60469b2` |
| 19 | `def` | [liftHistory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/lifthistory--45c8f988da4cec6212031772.md) | 133 | `declaration-track:45c8f988da4cec6212031772627340c82e585e53b05b400578cb87a2b3d72243` |
| 20 | `theorem` | [projection_liftHistory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/projection-lifthistory--1b7a9b9d6f6315ca9cc53ac0.md) | 138 | `result-track:1b7a9b9d6f6315ca9cc53ac0539c502ad5afe3aeb2dde5d05764b4220fd30817` |
| 21 | `theorem` | [ofPath_comp_projection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/ofpath-comp-projection--4007ee33dc5e6a9bb259fcce.md) | 148 | `result-track:4007ee33dc5e6a9bb259fcce97b4e56855ae7660fc8c97f66c0719f6d4d67555` |
| 22 | `def` | [outgoingStarEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/outgoingstarequiv--92378409c9ce1178cea417ad.md) | 160 | `declaration-track:92378409c9ce1178cea417adb80e6b493b1409f936c2b1b9fbee77c15670ce32` |
| 23 | `theorem` | [outgoing_star_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/outgoing-star-bijective--8e1c5b27e8108b498c57b38e.md) | 173 | `result-track:8e1c5b27e8108b498c57b38ef62335845c9d095aa0848aaf174074fbb06db4cc` |
| 24 | `theorem` | [path_star_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/path-star-bijective--c87706199f2c6bc5b8d96a1c.md) | 177 | `result-track:c87706199f2c6bc5b8d96a1ce7cb389d163e5f1e8fa32891c9eb3bc32bb6bc9e` |
| 25 | `theorem` | [unique_finite_lift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/unique-finite-lift--d83aff4b93c9a2914aca5782.md) | 181 | `result-track:d83aff4b93c9a2914aca5782ec99c9515a9b7a2e653882bbf0ea8c765b05cba8` |
| 26 | `theorem` | [endpoint_range_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/endpoint-range-iff--f275f8f4c82bfafae9cd40bd.md) | 186 | `result-track:f275f8f4c82bfafae9cd40bdb9264c751c10b604932b06b402277fb029215380` |
| 27 | `theorem` | [endpoint_surjective_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/endpoint-surjective-iff--dc1cc561a9d9b0fec4fd7b97.md) | 194 | `result-track:dc1cc561a9d9b0fec4fd7b97e7628d6b75e1f43d19e9a249f8d52e478fc040be` |
| 28 | `theorem` | [no_arrow_into_origin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/no-arrow-into-origin--048cc7ca80a1fb3e2aec3313.md) | 203 | `result-track:048cc7ca80a1fb3e2aec331392743ff198feb81d23324a4bafdc548050423841` |
| 29 | `theorem` | [empty_origin_costar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/empty-origin-costar--f92cb17a849d94cc1a8aa09a.md) | 207 | `result-track:f92cb17a849d94cc1a8aa09a85e0fdfa21f7264459360ee010585ce76c99d8f0` |
| 30 | `theorem` | [origin_costar_not_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/origin-costar-not-surjective--9ab31e33d27fc9306ab94386.md) | 210 | `result-track:9ab31e33d27fc9306ab943869d268c094b0543641704ebb5d7dc5a5f97f163cb` |
| 31 | `theorem` | [not_covering_of_incoming](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/declarations/not-covering-of-incoming--2efc203cc4a0ae20d19f4bd9.md) | 217 | `result-track:2efc203cc4a0ae20d19f4bd90fbb7b33ea7bf934ca2e8974afd0e47d536eaa2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
