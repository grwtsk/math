# Verification target: GRWTSK.Algebra.ULift.Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ae8f53d7967c86d31af4af967d111f5b9cb64fd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean/index.md) · [Full source](../../../../mathematics/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ae8f53d7967c86d31af4af967d111f5b9cb64fd`.

Source path: `GRWTSK/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean.json)

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
| 1 | `instance` | [instNNRatCast](../../../../mathematics/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean/declarations/instnnratcast--ae0d2b8956f91c1838362c23.md) | 27 | `declaration-track:ae0d2b8956f91c1838362c23263df6df89292db7604bf49df6a6ef4c4cb6877c` |
| 2 | `instance` | [instRatCast](../../../../mathematics/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean/declarations/instratcast--8bffae91908b0700637a6bf9.md) | 28 | `declaration-track:8bffae91908b0700637a6bf97fd57ecb6a9f691e01e3361c78401d8f21d85ad6` |
| 3 | `lemma` | [up_nnratCast](../../../../mathematics/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean/declarations/up-nnratcast--5ba1e698f0e72a7347f0e02d.md) | 30 | `result-track:5ba1e698f0e72a7347f0e02dee69972d971057cc3b5794cc6dfbd9707a5f35f2` |
| 4 | `lemma` | [down_nnratCast](../../../../mathematics/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean/declarations/down-nnratcast--98028be0f3117054c9f4b228.md) | 31 | `result-track:98028be0f3117054c9f4b2288db6fca8614da6b361152552426673a050b84736` |
| 5 | `lemma` | [up_ratCast](../../../../mathematics/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean/declarations/up-ratcast--556fead35594af4b246c0286.md) | 32 | `result-track:556fead35594af4b246c028612867e0c183f6622ce2e0ba663620cb7c2299ea3` |
| 6 | `lemma` | [down_ratCast](../../../../mathematics/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean/declarations/down-ratcast--b4c19415bbeab42a8deb4556.md) | 33 | `result-track:b4c19415bbeab42a8deb4556dea003a35bc94c69db03a1f62846e95f8dd51604` |
| 7 | `instance` | [divisionSemiring](../../../../mathematics/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean/declarations/divisionsemiring--e3c4f39e4660563a4f83f257.md) | 35 | `declaration-track:e3c4f39e4660563a4f83f25773a9a8ff502fe6575aea0f9d0874082a409cb1d7` |
| 8 | `instance` | [semifield](../../../../mathematics/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean/declarations/semifield--4dfc6f6e949fce240f2ab7f7.md) | 40 | `declaration-track:4dfc6f6e949fce240f2ab7f72d3c5b7d26967bfd4021d4052470dc3a3563b583` |
| 9 | `instance` | [divisionRing](../../../../mathematics/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean/declarations/divisionring--0784bf35d5ed7e990ab4d55e.md) | 43 | `declaration-track:0784bf35d5ed7e990ab4d55e5f42ff0a48f674a1240a44b27d2f019248dfd9ee` |
| 10 | `instance` | [field](../../../../mathematics/Algebra/ULift/Variant99b5fedec62a8afa4ffd3717505fd5655710b46851ce70c810ac543415d9ca94.lean/declarations/field--b7d03d5cb66063174d5dc7f8.md) | 53 | `declaration-track:b7d03d5cb66063174d5dc7f8125fdfa4dc5f403187336b0b2cd57f4cc0caf150` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
