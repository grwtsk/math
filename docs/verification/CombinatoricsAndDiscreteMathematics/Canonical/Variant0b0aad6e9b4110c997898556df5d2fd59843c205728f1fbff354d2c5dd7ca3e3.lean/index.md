# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Canonical.Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c59965d204bc8a633c06bc489194416d598b6189",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c59965d204bc8a633c06bc489194416d598b6189`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orbitFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/declarations/orbitfinset--94dae703f90405a26dbdab33.md) | 25 | `declaration-track:94dae703f90405a26dbdab33b7302b405b462248cfb2ac529c97454c1baf0b41` |
| 2 | `theorem` | [orbitFinset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/declarations/orbitfinset-nonempty--1b9e1acc28be20b299343a9e.md) | 32 | `result-track:1b9e1acc28be20b299343a9ef39a2f67c974fa0cb3540f933c8937aa3688d17e` |
| 3 | `theorem` | [orbit_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/declarations/orbit-nonempty--1eef9938246554cc974f55eb.md) | 41 | `result-track:1eef9938246554cc974f55eb3fa8e474fb919ccaf3baa08fcec5635ac229e964` |
| 4 | `def` | [canon](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/declarations/canon--9601998154eef4e3ea429077.md) | 48 | `declaration-track:9601998154eef4e3ea429077507c153d45cbb44d518795bef8b2544f476a573c` |
| 5 | `theorem` | [canon_mem_orbit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/declarations/canon-mem-orbit--5d91ff9ac1e94f34eaea01c1.md) | 55 | `result-track:5d91ff9ac1e94f34eaea01c17eff08fa93407fa7058958c626db43b213431881` |
| 6 | `theorem` | [orbitFinset_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/declarations/orbitfinset-smul--38afefdd5c8e3d04917c5da9.md) | 65 | `result-track:38afefdd5c8e3d04917c5da9577e9f17d78c62d8f2835d79e7deb1b27e64dc26` |
| 7 | `theorem` | [canon_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/declarations/canon-smul--2d72e017241ec5fb85711c7c.md) | 84 | `result-track:2d72e017241ec5fb85711c7cf72e0f54a8e95bbc81ba3aad0dce3347c3626e01` |
| 8 | `theorem` | [canon_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/declarations/canon-idempotent--d81ccd4e9d0233e5e20e92d9.md) | 95 | `result-track:d81ccd4e9d0233e5e20e92d90f1a24c66c3e1857cd20cff59278bc440ef50f96` |
| 9 | `theorem` | [canon_eq_iff_same_orbit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/declarations/canon-eq-iff-same-orbit--eb36c41a71079c9338d2fec7.md) | 117 | `result-track:eb36c41a71079c9338d2fec7678b2c36aa03843915dc6298be9c458984df06e5` |
| 10 | `structure` | [OrderedEncoding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/declarations/orderedencoding--38869100be8f531ecb81ae38.md) | 169 | `declaration-track:38869100be8f531ecb81ae383eeae772fc1926d2b79b0955799fc27b3a4d1891` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
