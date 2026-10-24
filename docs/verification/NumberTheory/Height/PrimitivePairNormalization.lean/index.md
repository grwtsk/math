# Verification target: GRWTSK.NumberTheory.Height.PrimitivePairNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f7f7ac1a5fa69d996d8d0814fbcf5e27faa7c9e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Height/PrimitivePairNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f7f7ac1a5fa69d996d8d0814fbcf5e27faa7c9e`.

Source path: `GRWTSK/NumberTheory/Height/PrimitivePairNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Height/PrimitivePairNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Height.RationalVectorAffineHeight`](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Tactic.FieldSimp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gap](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/declarations/gap--9daf65bd189626d1924179ba.md) | 22 | `declaration-track:9daf65bd189626d1924179ba7498a271adca4a2f51c3e4f1d50c3a7993d23152` |
| 2 | `def` | [normalize](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/declarations/normalize--f2c8e0fb82bd9756ae1e6ae3.md) | 24 | `declaration-track:f2c8e0fb82bd9756ae1e6ae33645a5b0a4d7f2a402dfd5c461824fd30da3d1de` |
| 3 | `def` | [profile](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/declarations/profile--3c6e2fd76f41814e0bb27a0e.md) | 28 | `declaration-track:3c6e2fd76f41814e0bb27a0e4c14d27cec9bb4aa8a521eb445b4af09fefea934` |
| 4 | `theorem` | [normalize_zero](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/declarations/normalize-zero--cb3bdb6dddecfa09ac5d1f38.md) | 30 | `result-track:cb3bdb6dddecfa09ac5d1f3803990fa5b9d5dc5b9d3dc8beba075a243f4b288d` |
| 5 | `theorem` | [normalize_gap](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/declarations/normalize-gap--da42acb675e6bc8609f80e97.md) | 33 | `result-track:da42acb675e6bc8609f80e97de26e51ce754e6a2f3473387187616c17a845614` |
| 6 | `theorem` | [normalize_affine](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/declarations/normalize-affine--be2435bad506714fb8e4e19a.md) | 42 | `result-track:be2435bad506714fb8e4e19afcbd47caedf403ce034672e18513cf3debac028e` |
| 7 | `theorem` | [profile_clears_iff](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/declarations/profile-clears-iff--de300ed4a4ba387366bc5ac3.md) | 56 | `result-track:de300ed4a4ba387366bc5ac3c74c950bd52c6def5e7a3554806fc5557a7a3ea6` |
| 8 | `theorem` | [profile_denominator](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/declarations/profile-denominator--e85da9f7ca66bcd48d0628a5.md) | 84 | `result-track:e85da9f7ca66bcd48d0628a54fa2fa5c3c18dc8d45d06fa00b9fe9cad228717e` |
| 9 | `theorem` | [profile_max_le_one](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/declarations/profile-max-le-one--e1885aaaf62837ace55a1abf.md) | 94 | `result-track:e1885aaaf62837ace55a1abf229d073dc146699fae472c3fe9908943ce6e6232` |
| 10 | `theorem` | [profile_height](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/declarations/profile-height--33e4b62569b5b720ef79d302.md) | 110 | `result-track:33e4b62569b5b720ef79d3024b5a9787a6bf46d1c08a734c64b7de32e9d07940` |
| 11 | `theorem` | [profile_numerator](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/declarations/profile-numerator--c90b99d7a6dd70103ffed71c.md) | 117 | `result-track:c90b99d7a6dd70103ffed71ccfdecaf11cc5013a2e0abf09b7312fe0551472eb` |
| 12 | `theorem` | [reciprocal_section_height](../../../../mathematics/NumberTheory/Height/PrimitivePairNormalization.lean/declarations/reciprocal-section-height--63dd15a7501232b74d6ec9bf.md) | 131 | `result-track:63dd15a7501232b74d6ec9bf5888d0d6d9d61d35d260e2f0a31e8997718a10dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
