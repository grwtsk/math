# Verification target: GRWTSK.Combinatorics.DirectedGraph.PrefixTableState

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdc163ad6de5c4c0f69405f1d2cdcd20b137d037",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableState.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdc163ad6de5c4c0f69405f1d2cdcd20b137d037`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableState.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/PrefixTableState.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrence275c18cd6c0419db256cebd7.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [State](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/state--cf6645522db8120b95a81931.md) | 33 | `declaration-track:cf6645522db8120b95a81931f55004dbc08d5a4f24c6133d4e408383b8c6d02a` |
| 2 | `def` | [rawPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/rawpacked--eda286014dc0678278b2b1a1.md) | 39 | `declaration-track:eda286014dc0678278b2b1a1770797da7b1ec3b2fc5d03cceea0d7bbc8e2219c` |
| 3 | `def` | [representation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/representation--5a4ac3bd0fd008ffec53a200.md) | 42 | `declaration-track:5a4ac3bd0fd008ffec53a2005628768950c3fd8ed64f1160a2d402a22d3cdc9b` |
| 4 | `def` | [decode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/decode--9d502065603bb4d093390196.md) | 45 | `declaration-track:9d502065603bb4d093390196a22aaf10fb0d7ddc60ab0788e2d0d46fadbfb069` |
| 5 | `structure` | [WellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/wellformed--62d08fcacba2ea166dc8ca56.md) | 52 | `declaration-track:62d08fcacba2ea166dc8ca56d8ad5c5bd0eb56c0f8baed1f4f692029d942fec1` |
| 6 | `theorem` | [node_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/node-lookup--81cbf8e2ce6caf5d035092c0.md) | 60 | `result-track:81cbf8e2ce6caf5d035092c04c32efa2d78e65e03826cd80af98b53abd0b1f2b` |
| 7 | `theorem` | [parent_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/parent-lookup--e9607289cc680a12180f6b53.md) | 67 | `result-track:e9607289cc680a12180f6b53f369b4668b3cc6cab0c4c02444f8e4d5814bb5f7` |
| 8 | `theorem` | [expand_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/expand-state--7d51069644c213f5f0984563.md) | 75 | `result-track:7d51069644c213f5f0984563b287ac80ddd10f35e4410a96db40683181e1b077` |
| 9 | `theorem` | [decodeSlot_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/decodeslot-state--13248a206cb5365a0949fb88.md) | 100 | `result-track:13248a206cb5365a0949fb88b54cadf568062dc8dbd17a47b593f71609fdc3ad` |
| 10 | `theorem` | [expandDictionary_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/expanddictionary-state--d934f26085a04f0df3066742.md) | 108 | `result-track:d934f26085a04f0df3066742ac29c8ba32e05ac349aee8ac027ea040421c289e` |
| 11 | `theorem` | [expandedPacked_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/expandedpacked-state--c62eef594761e01fd15af494.md) | 133 | `result-track:c62eef594761e01fd15af4945cbd8e40c187f80c00fd891496606599bd8ff213` |
| 12 | `theorem` | [decode_eq_unpack](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/decode-eq-unpack--17d8a7bc69420a266b545066.md) | 138 | `result-track:17d8a7bc69420a266b545066896bb82792dd31c48f911af5bc0ffd0560536f12` |
| 13 | `theorem` | [unpack_success](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/unpack-success--387e38a67289ee1a803e8dfe.md) | 144 | `result-track:387e38a67289ee1a803e8dfe861c67d6e40e5f44bb609ccfd315c7db810843cf` |
| 14 | `theorem` | [decode_success](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/decode-success--23d26a328d26b6f3f348a40c.md) | 172 | `result-track:23d26a328d26b6f3f348a40cc8dd67dbcbc30ef24031d52e7e136745e0e0821a` |
| 15 | `theorem` | [output_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/output-valid--12473994b80045f44d4a6c39.md) | 179 | `result-track:12473994b80045f44d4a6c39678dba190140bf2313e16707c52374fedfbaa0a3` |
| 16 | `def` | [extendedDictionary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/extendeddictionary--3e257018c4a8b084a809826a.md) | 188 | `declaration-track:3e257018c4a8b084a809826a167af701acee52859c11713d64c8e545419f673b` |
| 17 | `theorem` | [mem_extended_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/mem-extended-iff--cb810ec349ab79424768e569.md) | 193 | `result-track:cb810ec349ab79424768e5698b6a01cc6f6d600e4b77bc19c4932944994cd225` |
| 18 | `def` | [extendedNodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/extendednodes--c6b6bf5c4c007d6b497cdda7.md) | 202 | `declaration-track:c6b6bf5c4c007d6b497cdda7034ec421ea9a70629876c6f304612e6b49535601` |
| 19 | `def` | [basePacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/basepacked--da41130483947a43e266acd7.md) | 208 | `declaration-track:da41130483947a43e266acd7041609d98f9d5092704f3447963cc92ad1032835` |
| 20 | `def` | [realPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/realpacked--135cd209e0d316be6f2f09ce.md) | 212 | `declaration-track:135cd209e0d316be6f2f09ce2f0accd4d49b902a65fde557edf2d202b6381b39` |
| 21 | `theorem` | [base_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/base-valid--2c37e5a9e4faf4dd87d2e18b.md) | 216 | `result-track:2c37e5a9e4faf4dd87d2e18bb739db19dc8e901f5faa063b5829d869878e9d3a` |
| 22 | `theorem` | [real_dictionary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/real-dictionary--1ca854ccbdd63a97316be579.md) | 223 | `result-track:1ca854ccbdd63a97316be5790b92a3a88b628241214e6badc0c379f2eb82f6e9` |
| 23 | `def` | [update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/update--4a00335321aa03338cfde68d.md) | 240 | `declaration-track:4a00335321aa03338cfde68dd8e6ec6c3ec73eb30087162f55cb4733d0a9a7e5` |
| 24 | `theorem` | [old_cell_stable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/old-cell-stable--d79e0c5896ad888b61a754fa.md) | 245 | `result-track:d79e0c5896ad888b61a754faac0318f663da4a77fb07b21169294268a0ea8184` |
| 25 | `theorem` | [extended_cells](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/extended-cells--0ce6e6ee4db559ba0474f197.md) | 260 | `result-track:0ce6e6ee4db559ba0474f1972f45d35aac74c67a8e9a12eaf56a04b0c4f70eaa` |
| 26 | `theorem` | [update_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/update-wellformed--b83fe857dc65ae169c9e6b48.md) | 274 | `result-track:b83fe857dc65ae169c9e6b48f0eff0112bf92e29bce308e63c5bf50136664776` |
| 27 | `theorem` | [prefixes_retained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/prefixes-retained--cb7766144811772aec3f2d07.md) | 293 | `result-track:cb7766144811772aec3f2d0741b13fc69227b20570ed3a1940cfd2154825f8e8` |
| 28 | `theorem` | [unpack_base](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/unpack-base--9b0deb0e30d48e7275d654d0.md) | 300 | `result-track:9b0deb0e30d48e7275d654d0acf5238356ea4d587eb56e58b82b041c75476e6d` |
| 29 | `theorem` | [rawPacked_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/rawpacked-update--d4630b879b7483bb8845aac8.md) | 307 | `result-track:d4630b879b7483bb8845aac8e16dd32492d441eb1858df5e37b6f2abe571db76` |
| 30 | `theorem` | [unpack_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/unpack-update--777e6e969dc16b64124c175d.md) | 313 | `result-track:777e6e969dc16b64124c175d4ec5fb45ec6226a5b6b7d67096eedc8ca5bba3d4` |
| 31 | `theorem` | [decode_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/decode-update--7d9940a049e4eece8e97e975.md) | 321 | `result-track:7d9940a049e4eece8e97e9756bd65330ca6f46ea2b4fd45a1ca85e1d13b40797` |
| 32 | `theorem` | [decode_two_updates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/decode-two-updates--0eb0bb4f6f03a2029e3c70d7.md) | 327 | `result-track:0eb0bb4f6f03a2029e3c70d737db5b5de6c16f30f057c91ab638dde477363ef9` |
| 33 | `theorem` | [decode_grouped](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/decode-grouped--a123915ef1e40b427a73fe8b.md) | 338 | `result-track:a123915ef1e40b427a73fe8ba0efb91e93884cda4b5d5c15288a83aa7f5e521e` |
| 34 | `theorem` | [update_recovers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/update-recovers--4c8930e4ae9634d6406e37a1.md) | 345 | `result-track:4c8930e4ae9634d6406e37a1ede3697ec51658acefc73eaf66e2f07fca223995` |
| 35 | `def` | [ofOneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/ofonestep--2852c51f6b037023c9d8e607.md) | 361 | `declaration-track:2852c51f6b037023c9d8e6078a0e39d49b5c01f071dcd7c032c51c18d6ff8720` |
| 36 | `theorem` | [ofOneStep_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/ofonestep-wellformed--a5d554ba9ca5e14d7c924507.md) | 367 | `result-track:a5d554ba9ca5e14d7c924507d87cf8766c07ff7c5c7330e1275f2ed0838bfd90` |
| 37 | `theorem` | [decode_ofOneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/decode-ofonestep--257a09ccde2b5d6be59814b7.md) | 380 | `result-track:257a09ccde2b5d6be59814b716454bd09a720bbf5babac55a4d2a32285063b04` |
| 38 | `def` | [empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/empty--d4dc079209e24883c5211ac4.md) | 384 | `declaration-track:d4dc079209e24883c5211ac42251db079030228656a00c8baae08a82939a92af` |
| 39 | `theorem` | [empty_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/empty-wellformed--b5dbcf92047a0c1b592baaad.md) | 386 | `result-track:b5dbcf92047a0c1b592baaadb02f4759f12681b924a380081f2565e0e1b74ad0` |
| 40 | `theorem` | [decode_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/declarations/decode-empty--32f66ad5f0b28c5bbde73bf4.md) | 396 | `result-track:32f66ad5f0b28c5bbde73bf4ffad96f46e9e4d089f967127bb896d34b45b6c2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
