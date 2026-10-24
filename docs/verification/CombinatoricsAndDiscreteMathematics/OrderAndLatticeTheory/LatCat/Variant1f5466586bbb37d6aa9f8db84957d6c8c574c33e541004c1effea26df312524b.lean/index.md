# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatCat.Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86a169d1ecb56b148e47c2af46f28d758cf4851d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86a169d1ecb56b148e47c2af46f28d758cf4851d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.PartOrdCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/latcat--d42ddab9199bd60a2c45e5cd.md) | 31 | `declaration-track:d42ddab9199bd60a2c45e5cd92f65a4f55d135a6c7bb1bc363f4b8262c09d131` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/instance--e882d4d46ab374a1e0e565f4.md) | 38 | `declaration-track:e882d4d46ab374a1e0e565f4632fcc1a28d31c2a549cee3d708f55bba1df6e4a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/instance--e31e4f968d4045d2a3468b7f.md) | 41 | `declaration-track:e31e4f968d4045d2a3468b7f1585794d9e85d25e694690ac16526893651eedd3` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/of--9467ef21b6fe4d2ae975e879.md) | 45 | `declaration-track:9467ef21b6fe4d2ae975e879180d925e6cfd84995b0d51153171241b81a3f43b` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/coe-of--420e9bd0f848660c092e2626.md) | 50 | `result-track:420e9bd0f848660c092e262624624d2fea00ef989ea74681d2ebadb9c8e99cbd` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/instance--39e7c75f2759e46923d4624a.md) | 54 | `declaration-track:39e7c75f2759e46923d4624acac2ea444ecc7ff6d5c6517442a5683c05ced8d9` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/instance--34853e6ffbb334b8471b3da5.md) | 57 | `declaration-track:34853e6ffbb334b8471b3da5dfbd9ef5cc657ed9ef163161957cc301ad698f19` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/instance--b7bafb7786389d71bb63679c.md) | 63 | `declaration-track:b7bafb7786389d71bb63679c151ae7b9e629dead357fd504a127970ecbb81849` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/instance--4573eeb2ce79c2e056bc597b.md) | 66 | `declaration-track:4573eeb2ce79c2e056bc597bd54529f81d39f5b7d3e0b8a8b5d8dd6193b6560b` |
| 10 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/hasforgettopartord--64ead35bb717d9b0045b4a68.md) | 69 | `declaration-track:64ead35bb717d9b0045b4a68318e6e79245d50be6d69195abea065e11ee5e19d` |
| 11 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/iso-mk--d0ca1c4243aff4298b734bab.md) | 77 | `declaration-track:d0ca1c4243aff4298b734bab06320e1efafe8c12e57e9f25f6703e659399d8bd` |
| 12 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/dual--8711f3483f74981143a1bcc3.md) | 90 | `declaration-track:8711f3483f74981143a1bcc317f196ea1b506bb91135ab8d2a0b35ab771d69df` |
| 13 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/dualequiv--6a45b2f9335444683ea0ce7b.md) | 97 | `declaration-track:6a45b2f9335444683ea0ce7ba1aeee6dedad6926a50fdbf4e236cf1a555173d6` |
| 14 | `theorem` | [latCat_dual_comp_forget_to_partOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b.lean/declarations/latcat-dual-comp-forget-to-partordcat--5d45faf3cb28a5fa909a855a.md) | 106 | `result-track:5d45faf3cb28a5fa909a855aea16be3b4875a4a773cd4ab42825907ae1d568bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
