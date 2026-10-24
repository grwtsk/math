# Verification target: GRWTSK.Algebra.Finiteness.Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c27e234bd015c01450062387f74afc5d36b65068",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c27e234bd015c01450062387f74afc5d36b65068`.

Source path: `GRWTSK/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Int` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Finite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [of_isLocalizedModule](../../../../mathematics/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/declarations/of-islocalizedmodule--55ea6fbf207e6f181246de37.md) | 49 | `result-track:55ea6fbf207e6f181246de37408b8762ac45fc2ed7ff3f9d21278d4be6c61aa9` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/declarations/instance--c5f52bb2aca7bcc63ab3d160.md) | 68 | `declaration-track:c5f52bb2aca7bcc63ab3d160d90bfa91a21843ea4bad7403e1b76cb496ce9259` |
| 3 | `theorem` | [of_localizationSpan_finite'](../../../../mathematics/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/declarations/of-localizationspan-finite--30eae5f00d877d1836e5fb5c.md) | 84 | `result-track:30eae5f00d877d1836e5fb5c249e37c9c29713a2ba80a27e2d083a6610c988f1` |
| 4 | `theorem` | [of_localizationSpan'](../../../../mathematics/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/declarations/of-localizationspan--8b3863e9d8d83608a6fdb1d6.md) | 120 | `result-track:8b3863e9d8d83608a6fdb1d6192e7b06ed76754b620094bd0e47be6b063991ba` |
| 5 | `theorem` | [of_localizationSpan_finite](../../../../mathematics/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/declarations/of-localizationspan-finite--da20652c3a1a13ec851bc270.md) | 143 | `result-track:da20652c3a1a13ec851bc270a0386b8cba00c416881d9f68fc0d5b430c8c03ac` |
| 6 | `theorem` | [of_localizationSpan](../../../../mathematics/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/declarations/of-localizationspan--8470caf7423f56718be44caf.md) | 153 | `result-track:8470caf7423f56718be44caf6243fbd3b18bb658f360fd4137743a8c75cbf90e` |
| 7 | `lemma` | [fg_of_localizationSpan](../../../../mathematics/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/declarations/fg-of-localizationspan--4975f08d6b03b8b72e13f756.md) | 172 | `result-track:4975f08d6b03b8b72e13f756e3d25474bc0ea9465ebba2314bfd9f1aafb0d671` |
| 8 | `lemma` | [RingHom.ker_fg_of_localizationSpan](../../../../mathematics/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/declarations/ringhom-ker-fg-of-localizationspan--b93adf43293a476225c5aa15.md) | 187 | `result-track:b93adf43293a476225c5aa153c528f2d34c3e01047f6616ff5b6eed306f60c81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
