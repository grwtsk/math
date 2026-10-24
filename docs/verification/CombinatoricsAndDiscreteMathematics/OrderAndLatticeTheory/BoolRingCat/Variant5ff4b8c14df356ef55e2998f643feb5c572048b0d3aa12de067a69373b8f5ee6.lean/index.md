# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BoolRingCat.Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8906c365cf1b2b38748009ff9e30f4fcc3e0f0f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8906c365cf1b2b38748009ff9e30f4fcc3e0f0f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.BooleanRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BoolAlgCat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BoolRingCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/boolringcat--229c1305e7f7ddcca312a4fd.md) | 29 | `declaration-track:229c1305e7f7ddcca312a4fd754dc1684142c6974f62012998e9bf58647f9cc4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/instance--e4837c9a99b3f3ed4f05917e.md) | 35 | `declaration-track:e4837c9a99b3f3ed4f05917e596368d887c929adae7b1665c86c7c764d5c82ce` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/instance--4ad69bbe6ea6e115da93a618.md) | 38 | `declaration-track:4ad69bbe6ea6e115da93a618146a86d68e40dcd7ec1c6b03007253b627d26e99` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/of--359de69faf94eda21173dd61.md) | 42 | `declaration-track:359de69faf94eda21173dd614bff1659bcd08ebebfe67ef1e69df18a479eaec2` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/coe-of--fdd78e306ea01a4cafb746e5.md) | 47 | `result-track:fdd78e306ea01a4cafb746e57c0b80a527c432fea171a4f42e79bde68bc21f54` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/instance--f6d0bb5d94f5f628c839f2f4.md) | 51 | `declaration-track:f6d0bb5d94f5f628c839f2f42ae385ff4a0d9e5d0467122b6c8ae99f3dd74518` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/instance--978ef71a00d42fe956cb0a4d.md) | 54 | `declaration-track:978ef71a00d42fe956cb0a4d9c3316d3ed8f439cfe8c85326ddffcd1a769b8a0` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/instance--a16f9deb7dd23a7d4e46b1a2.md) | 61 | `declaration-track:a16f9deb7dd23a7d4e46b1a25cad1764a984e4468602cda06e696573478a1b54` |
| 9 | `instance` | [hasForgetToCommRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/hasforgettocommring--84327f974a6b03f550a0d597.md) | 70 | `declaration-track:84327f974a6b03f550a0d5979a8553ed5b341deb7cf54dd3e11d46b279ed6578` |
| 10 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/iso-mk--671eb991f9fc0dc05060d825.md) | 76 | `declaration-track:671eb991f9fc0dc05060d825718b8b5e5977272936162b5e492ca39fe2ece72e` |
| 11 | `instance` | [BoolRingCat.hasForgetToBoolAlgCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/boolringcat-hasforgettoboolalgcat--edc1444aae8538dbfd928181.md) | 88 | `declaration-track:edc1444aae8538dbfd92818169d8cb32f16b5b8e2eac78b77e7812b1c683a8af` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/instance--d6d45cd97f67948b6ee40149.md) | 95 | `declaration-track:d6d45cd97f67948b6ee40149d1d915d9df2b19ba6967bded650ab651e9299b2f` |
| 13 | `instance` | [BoolAlgCat.hasForgetToBoolRingCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/boolalgcat-hasforgettoboolringcat--57eae30ff612f4173af6e80d.md) | 100 | `declaration-track:57eae30ff612f4173af6e80db7d11d1b81e50d929f4dea1e877f77496cb91a57` |
| 14 | `def` | [boolRingCatEquivBoolAlgCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/declarations/boolringcatequivboolalgcat--ce79eebbe4b424504c9cb27c.md) | 108 | `declaration-track:ce79eebbe4b424504c9cb27cd5f4f638b4dfb319df29ea37de955a359da3eaf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
