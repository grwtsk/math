# Verification target: GRWTSK.NumberTheory.EquivReindex.Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b97ef800f74f018462c59d710029ac2761fe51fd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b97ef800f74f018462c59d710029ac2761fe51fd`.

Source path: `GRWTSK/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [equivReindex](../../../../mathematics/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean/declarations/equivreindex--fc98b3e375e58f9802f4129d.md) | 37 | `declaration-track:fc98b3e375e58f9802f4129d7f09890ebf043624eca5e8ddb7a6cad01dc614ac` |
| 2 | `abbrev` | [basisMatrix](../../../../mathematics/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean/declarations/basismatrix--9c2274a27291a7ce2ae9b44a.md) | 44 | `declaration-track:9c2274a27291a7ce2ae9b44a99b3ae9c6dc667502bba150428dc9ca63d549375` |
| 3 | `theorem` | [det_of_basisMatrix_non_zero](../../../../mathematics/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean/declarations/det-of-basismatrix-non-zero--155366827f84673bbd6a5ee7.md) | 47 | `result-track:155366827f84673bbd6a5ee79b55159062b08fafa2f079fce5e68a35976ee8ee` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean/declarations/instance--59de22094500fff0676beb8d.md) | 60 | `declaration-track:59de22094500fff0676beb8d9f32591450a2288802e29b29c7db275d3e8c8738` |
| 5 | `theorem` | [canonicalEmbedding_eq_basisMatrix_mulVec](../../../../mathematics/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean/declarations/canonicalembedding-eq-basismatrix-mulvec--ed04ce9011ae6d32b3e71168.md) | 65 | `result-track:ed04ce9011ae6d32b3e71168ea2cd935d5666a8519117cc54aa8ed7bc7a47f8d` |
| 6 | `theorem` | [inverse_basisMatrix_mulVec_eq_repr](../../../../mathematics/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean/declarations/inverse-basismatrix-mulvec-eq-repr--b7cf5e861c5902f28367756f.md) | 74 | `result-track:b7cf5e861c5902f28367756f6bc80f0d0478c59525f339d6d6e8b9ae92069441` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
