# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Limits.Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5758e16f487d700954b7f5ad3fa58a96153cb293",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5758e16f487d700954b7f5ad3fa58a96153cb293`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Pullbacks` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [specZIsTerminal](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/speczisterminal--2a5664a642443097dcf65306.md) | 36 | `declaration-track:2a5664a642443097dcf65306a1cce6beef5b821b7961da4cbb0c783ba9a5aaef` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/instance--fe7c962d0f148a983f73ecaa.md) | 41 | `declaration-track:fe7c962d0f148a983f73ecaadaf7662d944c1bc6d54a08e2d86cd5332df653c7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/instance--a1e5399bf7f8911a9c251d2f.md) | 44 | `declaration-track:a1e5399bf7f8911a9c251d2f7c558b5f293d87ae612ba26cdee6f4fa6dfac8c4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/instance--07503f3ae44fb53c0efa684c.md) | 47 | `declaration-track:07503f3ae44fb53c0efa684c6252eb0b463d2cc4a6d204e24d2815c27d7342c5` |
| 5 | `def` | [Scheme.emptyTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/scheme-emptyto--8ea16fd37b60fa365be96505.md) | 54 | `declaration-track:8ea16fd37b60fa365be96505894420f75994e69be137942dec969f966827f7e7` |
| 6 | `theorem` | [Scheme.empty_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/scheme-empty-ext--1f8ca97b2b88f1497daedae3.md) | 60 | `result-track:1f8ca97b2b88f1497daedae383fc88e05b3dc845c2f2c3a6c3915a34866df71c` |
| 7 | `theorem` | [Scheme.eq_emptyTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/scheme-eq-emptyto--c64013fcf8a1cfcb4f4f4d9b.md) | 67 | `result-track:c64013fcf8a1cfcb4f4f4d9b0cb7f5a35c20669f9967f4ec0d0b53dcf642d3ad` |
| 8 | `instance` | [Scheme.hom_unique_of_empty_source](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/scheme-hom-unique-of-empty-source--92eee43f1599bddabec3b2f0.md) | 71 | `declaration-track:92eee43f1599bddabec3b2f00f1299e522b424c33c3d32b6626db214e668564f` |
| 9 | `def` | [emptyIsInitial](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/emptyisinitial--a4ec73219d62a37842ce6b91.md) | 75 | `declaration-track:a4ec73219d62a37842ce6b91e82d1918c57fcddefd8f2e7c95ce6e6d04069e56` |
| 10 | `theorem` | [emptyIsInitial_to](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/emptyisinitial-to--cf82db90715ea0922d8b4c0f.md) | 80 | `result-track:cf82db90715ea0922d8b4c0f3973d3c7be491296768a16ad942fecaa0301caf8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/instance--c667bb9cb16f350748e9845d.md) | 84 | `declaration-track:c667bb9cb16f350748e9845deaa5385de9faddc33b33012dbf914abd6b674ada` |
| 12 | `instance` | [spec_punit_isEmpty](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/spec-punit-isempty--ae576fe4eba9fb2d6b208a32.md) | 87 | `declaration-track:ae576fe4eba9fb2d6b208a32970f433aa17ca2cc9e5084cac0e840d3f48f5de8` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/instance--02ed1f7e78c466c826ad0808.md) | 91 | `declaration-track:02ed1f7e78c466c826ad0808d91a9c4a5fb7ae4c0b4e6c5e1731e52b97148c75` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/instance--a0904892c6eccf4c00072b89.md) | 102 | `declaration-track:a0904892c6eccf4c00072b89eaedbb8807c986d6388b1755a3fe5debbf1e7a7c` |
| 15 | `def` | [isInitialOfIsEmpty](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/isinitialofisempty--5206b9e519d843e93dd6b075.md) | 112 | `declaration-track:5206b9e519d843e93dd6b075360d3a075b91252fc716b3ee74732fb1a3daea0a` |
| 16 | `def` | [specPunitIsInitial](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/specpunitisinitial--4134225e24e5e39d661799bb.md) | 117 | `declaration-track:4134225e24e5e39d661799bb86406f6bfed649f68f8efefcc8c9d8d0e154fe3b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/instance--7fbfbe2cdeeda68951dccb63.md) | 121 | `declaration-track:7fbfbe2cdeeda68951dccb6341fe82be11b4acc8625ad0518bb8a0e6812a8fbd` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/instance--41a0a62974baa758079be81d.md) | 126 | `declaration-track:41a0a62974baa758079be81de5092598a4b22b1f80eb89cd45100a216fa87057` |
| 19 | `instance` | [initial_isEmpty](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/initial-isempty--5cb6a57fc2a33ad22094aae9.md) | 131 | `declaration-track:5cb6a57fc2a33ad22094aae959a2c53145144ae4d8ec48a4b320eb21589a3c1f` |
| 20 | `theorem` | [bot_isAffineOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/bot-isaffineopen--1cadb42bf6a6cf78e6a55c1e.md) | 135 | `result-track:1cadb42bf6a6cf78e6a55c1ec0a38ff4eadabbc5dacd92a348814b2757665183` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Limits/Variant6e32b8231e06aab211f3057194e725aee5ca66dc0915ac2cca3aed8a79df5734.lean/declarations/instance--a5676d1cadc858c6eeaae9b0.md) | 144 | `declaration-track:a5676d1cadc858c6eeaae9b0e638fda62c4f419c9e2ddfda54de3f8f6fb6dfa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
