# Verification target: GRWTSK.Algebra.CompTypeclasses.Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cc6b51a4b9d33f49ab0b49a7249dfb58a3662ee",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/index.md) · [Full source](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cc6b51a4b9d33f49ab0b49a7249dfb58a3662ee`.

Source path: `GRWTSK/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Equiv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RingHomId](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/ringhomid--cf7eca882325f7ad99e86640.md) | 60 | `declaration-track:cf7eca882325f7ad99e86640217ee74db4dd1006fa3ae59c0ccf348c683a0537` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/instance--045962c6eb1104331ff639e1.md) | 63 | `declaration-track:045962c6eb1104331ff639e1996b0e3d0fd0fbdf7899d454b09aaeb44e54bcec` |
| 3 | `class` | [RingHomCompTriple](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/ringhomcomptriple--2da80239f27d218e4b561068.md) | 68 | `declaration-track:2da80239f27d218e4b561068a4bc3261e5309eca8048024104f490f46c302bad` |
| 4 | `theorem` | [comp_apply](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/comp-apply--4208938a5900c325762b2886.md) | 80 | `result-track:4208938a5900c325762b28868b5b63366722645c95fbcac6c13d19fd39fcf7d2` |
| 5 | `class` | [RingHomInvPair](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/ringhominvpair--1b93fa6c95dcb33696a47e2e.md) | 87 | `declaration-track:1b93fa6c95dcb33696a47e2ec03b434f3e079b4c9bae98b3e92844dbbc24f24d` |
| 6 | `theorem` | [comp_apply_eq](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/comp-apply-eq--07c6eb569470cacec77a237b.md) | 99 | `result-track:07c6eb569470cacec77a237b22aafb024961f2fc1848f83a32f9dc8d76c20af6` |
| 7 | `theorem` | [comp_apply_eq₂](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/comp-apply-eq--93cc99bef841e33c3325925f.md) | 103 | `result-track:93cc99bef841e33c3325925f8c7ede755d4cb6b34420a27f5aaa1bc301143882` |
| 8 | `instance` | [ids](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/ids--59bed1a81a6769a66f81e8f2.md) | 107 | `declaration-track:59bed1a81a6769a66f81e8f2657a202cb087b60c448e19e5211d3cfead50f12e` |
| 9 | `instance` | [triples](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/triples--ce28022d907ec60f41d06854.md) | 110 | `declaration-track:ce28022d907ec60f41d068544fe7b857119163cf2bf1a160a02f7347a8ae0b27` |
| 10 | `instance` | [triples₂](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/triples--8b806e5fcac451f2492a172b.md) | 114 | `declaration-track:8b806e5fcac451f2492a172b8400473fbeffa2d84b43dec885d3d5653ae8ed51` |
| 11 | `theorem` | [of_ringEquiv](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/of-ringequiv--8b1b17aa462c5953a9780396.md) | 123 | `result-track:8b1b17aa462c5953a97803961f322876ba39bc3372782aa4cca8c9d7f5ebe0c7` |
| 12 | `theorem` | [symm](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/symm--a3633e00c6dee657724e122a.md) | 131 | `result-track:a3633e00c6dee657724e122ab352b1609fafd3c6130a80a4f3219cc272daf7ba` |
| 13 | `instance` | [ids](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/ids--a4392af4c5800027a97928ac.md) | 139 | `declaration-track:a4392af4c5800027a97928ac8f80e356d30f3c5c4158baf34414ea2f1f1ef3c1` |
| 14 | `instance` | [right_ids](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/right-ids--8a8b68bde7c7e10565483eb2.md) | 144 | `declaration-track:8a8b68bde7c7e10565483eb2c8656f2ceeb391ae030f2144d0319f3bb2d328b5` |
| 15 | `class` | [RingHomSurjective](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/ringhomsurjective--8d039f4f04a168fa7bf09666.md) | 153 | `declaration-track:8d039f4f04a168fa7bf09666db5fe87ea5bcd2dc1ca3eef2f4b059d698f9a410` |
| 16 | `theorem` | [RingHom.surjective](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/ringhom-surjective--39d077df8d402f5286eebdb7.md) | 157 | `result-track:39d077df8d402f5286eebdb7bca656269c01f48a49282e44dc040bf62bb4d4a8` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/instance--6b7e664a65e03f6bf7484fbf.md) | 162 | `declaration-track:6b7e664a65e03f6bf7484fbf1024a48cf80e6faf35fc004c74c6ee139c0a84ba` |
| 18 | `instance` | [ids](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/ids--a8a5858cd27af7e42be075c1.md) | 166 | `declaration-track:a8a5858cd27af7e42be075c146dfc5f77416540707fe4b5019ca44737eab640f` |
| 19 | `theorem` | [comp](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/comp--edb3c2b846ffb8834c598c5b.md) | 170 | `result-track:edb3c2b846ffb8834c598c5bc4158f421dff210f5e73065187e5faf0c6fd2e7c` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/declarations/instance--6086d41991078b299b7b9124.md) | 176 | `declaration-track:6086d41991078b299b7b91248046c0544bc097efdcbb045de293c0edb2abe008` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
