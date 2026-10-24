# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a432d5f1e3703fe45842b0562e009471b7470dec",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a432d5f1e3703fe45842b0562e009471b7470dec`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Submonoid.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/declarations/center--a927589696e757fb652b16cb.md) | 33 | `declaration-track:a927589696e757fb652b16cbad7728dd9a901a9d087a8863878dd1ec4d78bd9c` |
| 2 | `theorem` | [coe_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/declarations/coe-center--11290a552c2ee41159c44e6d.md) | 41 | `result-track:11290a552c2ee41159c44e6d10bf684d6da24b675935ef893ca6b9890ef6d140` |
| 3 | `theorem` | [center_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/declarations/center-tosubsemigroup--d77182117b6dea3ed62500b1.md) | 47 | `result-track:d77182117b6dea3ed62500b1f22f1bce09a5cec82af83b5832fba941f48073e4` |
| 4 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/declarations/mem-center-iff--e9ad6e5dbe9a1f6ed30ac277.md) | 54 | `result-track:e9ad6e5dbe9a1f6ed30ac2779b2a0ffef2ebe5d4c6b3f167f25d0e51ed215a73` |
| 5 | `instance` | [decidableMemCenter](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/declarations/decidablememcenter--32be8285263318513b33743c.md) | 60 | `declaration-track:32be8285263318513b33743c425c3e519bba1c943cb277816b75e666fd210474` |
| 6 | `instance` | [center.commMonoid](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/declarations/center-commmonoid--d7a5e773c18eeaf1a3b0b9f3.md) | 66 | `declaration-track:d7a5e773c18eeaf1a3b0b9f31d77d01d99c157d180b7fcff7dc11d9bc2590800` |
| 7 | `instance` | [center.smulCommClass_left](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/declarations/center-smulcommclass-left--63cdb0fe0a7e40864ab8161a.md) | 71 | `declaration-track:63cdb0fe0a7e40864ab8161a2881f2ea5733e5b701ac6c63749ecd6216c77bcb` |
| 8 | `instance` | [center.smulCommClass_right](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/declarations/center-smulcommclass-right--6e6eb5464789695e9614a969.md) | 76 | `declaration-track:6e6eb5464789695e9614a9690fca9b317c3845012c3c9e4fbca7d1cd9c8c65a8` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/declarations/example--0c7deb61ef8cfa730604edb5.md) | 83 | `declaration-track:0c7deb61ef8cfa730604edb597f7b24caa2867ba910c81e76c2613b8a6e622fb` |
| 10 | `theorem` | [center_eq_top](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/declarations/center-eq-top--246cdb54f0204a4514733221.md) | 92 | `result-track:246cdb54f0204a4514733221547d5c85102cfb3d97c0bd7f66b4531914d9cfa8` |
| 11 | `def` | [unitsCenterToCenterUnits](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/declarations/unitscentertocenterunits--2fa998ff497a4675b95da715.md) | 107 | `declaration-track:2fa998ff497a4675b95da7159a1b4ebe601a7444fdfb31ef41ecc5b56237e61e` |
| 12 | `theorem` | [unitsCenterToCenterUnits_injective](../../../../../mathematics/Algebra/GroupTheory/Center/Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342.lean/declarations/unitscentertocenterunits-injective--500c61e617b27942fe121325.md) | 111 | `result-track:500c61e617b27942fe1213255b24a1902a8ae1e11c2844a18189208c3716600a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
