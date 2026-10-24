# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Order.Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0058fcbd539c6d9f549210cd4c470ac2eb1911ed",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0058fcbd539c6d9f549210cd4c470ac2eb1911ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PartialBit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/partialbit--ed7bfc4803bce7559708c875.md) | 24 | `declaration-track:ed7bfc4803bce7559708c8752345094dc97dc696ae3809aae2b54c67b8aa8a34` |
| 2 | `def` | [PartialBit.refines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/partialbit-refines--c5d8279afcc052d9a1352405.md) | 30 | `declaration-track:c5d8279afcc052d9a1352405044f19c81cd484984b1f6b134f53e8bcaa21ebf4` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/instance--72bcca184fd0dc588c78678a.md) | 36 | `declaration-track:72bcca184fd0dc588c78678a70b49a63e8b1b581a9577cfd3c43ac869e1589c3` |
| 4 | `theorem` | [PartialBit.le_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/partialbit-le-refl--f36d81348f4075ed035d6c26.md) | 39 | `result-track:f36d81348f4075ed035d6c2603e67a45e5d7d3cf300a32be17900f5c084f7f5c` |
| 5 | `theorem` | [PartialBit.le_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/partialbit-le-trans--e6a69acc100bd31c683cbb98.md) | 42 | `result-track:e6a69acc100bd31c683cbb989828c370b415bc8e9a5ae77f67932856299d69d4` |
| 6 | `theorem` | [PartialBit.le_antisymm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/partialbit-le-antisymm--01a23b1d3a30af0eac5b45fe.md) | 49 | `result-track:01a23b1d3a30af0eac5b45fe95d7c71c7dbbdc0241484f4005effe9494bb9134` |
| 7 | `instance` | [partialBitPartialOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/partialbitpartialorder--5efc76f70636bda68e5a08ce.md) | 56 | `declaration-track:5efc76f70636bda68e5a08ceb54ca5a92df46d8042dbf47122ec7e6e56f3c16a` |
| 8 | `def` | [partialBit_partialOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/partialbit-partialorder--efe9f93b7f71c79292fdfe14.md) | 61 | `declaration-track:efe9f93b7f71c79292fdfe140276391f1fade7b623fb958bbe2c7787ada52b44` |
| 9 | `def` | [PartialBit.Resolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/partialbit-resolved--3d29c918903818d70da02e1f.md) | 64 | `declaration-track:3d29c918903818d70da02e1f2d2c75e32528b9d420358c6f26337af336a97f0e` |
| 10 | `theorem` | [PartialBit.resolved_le_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/partialbit-resolved-le-eq--d81d931757176ac50b0ac6a2.md) | 69 | `result-track:d81d931757176ac50b0ac6a222925e6ff99f85aad2a704942f51c41c2fa72dab` |
| 11 | `def` | [PartialBit.ofBool](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/partialbit-ofbool--50b3538b1589e6dc00e35efe.md) | 76 | `declaration-track:50b3538b1589e6dc00e35efeace727f9385ae6374bee466a217fe23e2034fb64` |
| 12 | `def` | [PartialBitfield](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/partialbitfield--fa4a2234d85a673e669be85a.md) | 80 | `declaration-track:fa4a2234d85a673e669be85afc9f902e8f54e6d43baadf85453dff9c63df688a` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/instance--49b664c7e74f5d8e55848ad5.md) | 83 | `declaration-track:49b664c7e74f5d8e55848ad5ca71e8c469e8e9aa21eef78f9baf57f64f1d94ca` |
| 14 | `def` | [ResolvedSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/resolvedsupport--71e0e30231f2dfc14fbcb6b2.md) | 87 | `declaration-track:71e0e30231f2dfc14fbcb6b2442cd7c619f8db1d4d9d8926d787a6adc129a467` |
| 15 | `structure` | [OneCoordinateResolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/onecoordinateresolution--ac96571c534a9ec3cdf56064.md) | 91 | `declaration-track:ac96571c534a9ec3cdf560649b43156a3e945624aba77e3848ce59652322245f` |
| 16 | `theorem` | [oneCoordinateResolution_extends](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/onecoordinateresolution-extends--f8b512d0128d1de69809ea4a.md) | 104 | `result-track:f8b512d0128d1de69809ea4abd99eb4f41c51342ab9fe7edb6d2465aeafea011` |
| 17 | `theorem` | [oneCoordinateResolution_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/onecoordinateresolution-support--0b2f88fb4042708d56d85109.md) | 117 | `result-track:0b2f88fb4042708d56d8510937101bdd427521a828016a3ee2bbf785b14b32e5` |
| 18 | `theorem` | [oneCoordinateResolution_support_increment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/declarations/onecoordinateresolution-support-increment--71a83f0bb16e358c0947090b.md) | 146 | `result-track:71a83f0bb16e358c0947090b490a44883bc7e3b0f3e962153ff2b85909f0ecd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
