# Verification target: GRWTSK.Algebra.Homeomorph.Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c82bc15aabdf28c0b1cb60e6304533c79851d986",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean/index.md) · [Full source](../../../../mathematics/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c82bc15aabdf28c0b1cb60e6304533c79851d986`.

Source path: `GRWTSK/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [PrimeSpectrum.isHomeomorph_comap](../../../../mathematics/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean/declarations/primespectrum-ishomeomorph-comap--0bd634cac1cdc0933c60b03c.md) | 43 | `result-track:0bd634cac1cdc0933c60b03c75ba0ea0675c564009b8ceb03be8f54b5d96fd90` |
| 2 | `lemma` | [PrimeSpectrum.isHomeomorph_comap_of_isPurelyInseparable](../../../../mathematics/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean/declarations/primespectrum-ishomeomorph-comap-of-ispurelyinseparable--a0f561052215a2f6ee5bc608.md) | 69 | `result-track:a0f561052215a2f6ee5bc608ee192b8f65f3ef200c2520c6dea83f4cd115ff0c` |
| 3 | `lemma` | [PrimeSpectrum.isHomeomorph_comap_tensorProductMap_of_isPurelyInseparable](../../../../mathematics/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean/declarations/primespectrum-ishomeomorph-comap-tensorproductmap-of-ispurelyinseparable--1bdd55dd9b2205865ab9f418.md) | 79 | `result-track:1bdd55dd9b2205865ab9f418e4f3f87909d00b9bafcef874d437e276e3de8f36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
