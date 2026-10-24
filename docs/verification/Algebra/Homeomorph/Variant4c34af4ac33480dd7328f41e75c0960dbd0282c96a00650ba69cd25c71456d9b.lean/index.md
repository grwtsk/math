# Verification target: GRWTSK.Algebra.Homeomorph.Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7cd15c759d891c9cb71a71037426618ae6cc2bb",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7cd15c759d891c9cb71a71037426618ae6cc2bb`.

Source path: `GRWTSK/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [PrimeSpectrum.isHomeomorph_comap](../../../../mathematics/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean/declarations/primespectrum-ishomeomorph-comap--c3478910c8368fdd1122a670.md) | 35 | `result-track:c3478910c8368fdd1122a670ea96f960cc582174933911e9a93fc5e1568a7392` |
| 2 | `lemma` | [PrimeSpectrum.isHomeomorph_comap_of_isPurelyInseparable](../../../../mathematics/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean/declarations/primespectrum-ishomeomorph-comap-of-ispurelyinseparable--521e1c9a0b984a38d2b874b1.md) | 61 | `result-track:521e1c9a0b984a38d2b874b101ddffdd4de1b5d95e3d6007c4a0e3bfd9ab6fe4` |
| 3 | `lemma` | [PrimeSpectrum.isHomeomorph_comap_tensorProductMap_of_isPurelyInseparable](../../../../mathematics/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean/declarations/primespectrum-ishomeomorph-comap-tensorproductmap-of-ispurelyinseparable--5c66bed093cc241b8a90ec9f.md) | 71 | `result-track:5c66bed093cc241b8a90ec9f060a73bd708bb234328dac2cec566a2f5ad8627c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
