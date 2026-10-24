# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NeighborEnumeration.Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4a137bae7624db5cb89182ee163fd38ce3e17c7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4a137bae7624db5cb89182ee163fd38ce3e17c7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Admissibility` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EligibleArc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/declarations/eligiblearc--d3632b7f1eca1e6fce330a9d.md) | 14 | `declaration-track:d3632b7f1eca1e6fce330a9d55940d1eff33c1a0b369e2b0231923ec203e603c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/declarations/instance--1ce6d60ae9d27c21ca4b7be7.md) | 24 | `declaration-track:1ce6d60ae9d27c21ca4b7be7764cd1bbe20fbf52a13bce343444a2ad8232a37e` |
| 3 | `def` | [canonicalNeighborSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/declarations/canonicalneighborset--988a279f46f90617381ea234.md) | 35 | `declaration-track:988a279f46f90617381ea234d41b993bc6af7c98b7d92d0797eb5b56ac1c1516` |
| 4 | `def` | [canonicalNeighborList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/declarations/canonicalneighborlist--bbc92a18442a602d6e9c2037.md) | 43 | `declaration-track:bbc92a18442a602d6e9c203766926e6f39146cb74f3c8578b80c2b83a92b1d14` |
| 5 | `theorem` | [mem_canonicalNeighborList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/declarations/mem-canonicalneighborlist--0cb3b525212eed870328ffc7.md) | 51 | `result-track:0cb3b525212eed870328ffc76808de57baa2a9cae876a2315b2ee3f11dbf2255` |
| 6 | `theorem` | [canonicalNeighborList_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/declarations/canonicalneighborlist-nodup--62b364510f73aef26d0c2661.md) | 61 | `result-track:62b364510f73aef26d0c2661f489c23d1578fc4b4b0d3a08be613e002722186c` |
| 7 | `theorem` | [canonicalNeighborList_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/declarations/canonicalneighborlist-sorted--36f0808390234172bbcc60ad.md) | 69 | `result-track:36f0808390234172bbcc60ad0214a7410274f6b51c6a74ba89792f75770c682f` |
| 8 | `structure` | [NeighborEnumeration](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/declarations/neighborenumeration--e4363b5057c3270039b3b098.md) | 82 | `declaration-track:e4363b5057c3270039b3b098c3566952b21925c1247b82b64b1baabdc484a6a5` |
| 9 | `theorem` | [mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/declarations/mem-iff--327418075ac8d76c34e44fad.md) | 102 | `result-track:327418075ac8d76c34e44fadb8654c9b7e2c7768b0bae5ce50e041cf15b324a8` |
| 10 | `theorem` | [eq_canonical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/declarations/eq-canonical--5871c4feaab1b4e9fc0bbc7d.md) | 115 | `result-track:5871c4feaab1b4e9fc0bbc7d61c0a92b2bdf8500ba389530e276ec6c7479ca6e` |
| 11 | `theorem` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/declarations/ext--3d9774a34174bfab292df5f7.md) | 131 | `result-track:3d9774a34174bfab292df5f7e317ae96fcd5b91d533895c7b37a5b71ccd16c9c` |
| 12 | `def` | [canonical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd.lean/declarations/canonical--2e73901ecdc15ae819ce53ef.md) | 142 | `declaration-track:2e73901ecdc15ae819ce53efe2d1c7d0f53a036d29e72df13f40acedb86eef33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
