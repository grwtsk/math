# Verification target: GRWTSK.Topology.GeneralTopology.PartialSups.Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b75407175051ac9bb4bf10c43feb494933bec0d1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b75407175051ac9bb4bf10c43feb494933bec0d1`.

Source path: `GRWTSK/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.PartialSups` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [partialSups](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean/declarations/partialsups--191681e1b918caaca2bb9565.md) | 33 | `result-track:191681e1b918caaca2bb95657d28a5966e73681cf94364ed55762eca3fe3db8b` |
| 2 | `lemma` | [partialSups_apply](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean/declarations/partialsups-apply--4cad3e715ba8dcd81e25441e.md) | 39 | `result-track:4cad3e715ba8dcd81e25441e5569df3c088b16559ef12a4a5bacb343f73c5a68` |
| 3 | `lemma` | [ContinuousAt.partialSups_apply](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean/declarations/continuousat-partialsups-apply--9835b321462fe294595081c3.md) | 47 | `result-track:9835b321462fe294595081c3cc6980e474087f65d88aa54c50607c85fb2797ac` |
| 4 | `lemma` | [ContinuousAt.partialSups](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean/declarations/continuousat-partialsups--4a20240c17dfa9cda8f83ac8.md) | 51 | `result-track:4a20240c17dfa9cda8f83ac89906a7342f72e9d01bef63f30095ad6997bc9833` |
| 5 | `lemma` | [ContinuousWithinAt.partialSups_apply](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean/declarations/continuouswithinat-partialsups-apply--c389b28f8f63e7b50caf7f06.md) | 55 | `result-track:c389b28f8f63e7b50caf7f06cac4fb8dc40d8df75ae271da94e7d539ac52b76d` |
| 6 | `lemma` | [ContinuousWithinAt.partialSups](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean/declarations/continuouswithinat-partialsups--0656b7ed2f0bdb5ef9cd0919.md) | 59 | `result-track:0656b7ed2f0bdb5ef9cd09194d8b45d36ab0342a0d30cce81ee8116f984c3171` |
| 7 | `lemma` | [ContinuousOn.partialSups_apply](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean/declarations/continuouson-partialsups-apply--c53a194a3890a41db8640bce.md) | 63 | `result-track:c53a194a3890a41db8640bcee1ce83b63ce299d954ab546eb59c9594710585ad` |
| 8 | `lemma` | [ContinuousOn.partialSups](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean/declarations/continuouson-partialsups--a062dce1d4550c681d54e86c.md) | 67 | `result-track:a062dce1d4550c681d54e86c59dd973f72a8869781829e287b6551043f830d42` |
| 9 | `lemma` | [Continuous.partialSups_apply](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean/declarations/continuous-partialsups-apply--9fcf536caff0fed68bc76348.md) | 71 | `result-track:9fcf536caff0fed68bc7634894226367a2899c2f65a026f51987e44eef057122` |
| 10 | `lemma` | [Continuous.partialSups](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variantdf7bd809903a25475539e83aef49ebc489bef336190ccb85e3ca0197773f2001.lean/declarations/continuous-partialsups--4635296c023cdc460cffb0a9.md) | 76 | `result-track:4635296c023cdc460cffb0a9687391845a6db43b5dbd1cf5f5ce5f2593f3a43a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
