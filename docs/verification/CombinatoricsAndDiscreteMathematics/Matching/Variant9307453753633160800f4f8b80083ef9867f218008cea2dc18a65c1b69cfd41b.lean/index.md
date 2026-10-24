# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Matching.Variant9307453753633160800f4f8b80083ef9867f218008cea2dc18a65c1b69cfd41b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "117e9375440a562212414dd17eb69198bdb2c989",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Matching/Variant9307453753633160800f4f8b80083ef9867f218008cea2dc18a65c1b69cfd41b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant9307453753633160800f4f8b80083ef9867f218008cea2dc18a65c1b69cfd41b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant9307453753633160800f4f8b80083ef9867f218008cea2dc18a65c1b69cfd41b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `117e9375440a562212414dd17eb69198bdb2c989`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Matching/Variant9307453753633160800f4f8b80083ef9867f218008cea2dc18a65c1b69cfd41b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Matching/Variant9307453753633160800f4f8b80083ef9867f218008cea2dc18a65c1b69cfd41b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Correspondence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteSpectralMatchingCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant9307453753633160800f4f8b80083ef9867f218008cea2dc18a65c1b69cfd41b.lean/declarations/finitespectralmatchingcertificate--e17f5dfa35676a27239965e7.md) | 24 | `declaration-track:e17f5dfa35676a27239965e7ef772d33bd041b7ec4e3c41102e3129ef2c73208` |
| 2 | `theorem` | [perfectCertifiedMatching_noMissing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant9307453753633160800f4f8b80083ef9867f218008cea2dc18a65c1b69cfd41b.lean/declarations/perfectcertifiedmatching-nomissing--ed60e0d35fc5d3b72304d06f.md) | 64 | `result-track:ed60e0d35fc5d3b72304d06fada0ff941e7af28a665e0066d093b663e4833bb9` |
| 3 | `theorem` | [perfectCertifiedMatching_noSpurious](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant9307453753633160800f4f8b80083ef9867f218008cea2dc18a65c1b69cfd41b.lean/declarations/perfectcertifiedmatching-nospurious--67cf4f693c21cb661e9de880.md) | 78 | `result-track:67cf4f693c21cb661e9de8809fc29af645f3b85cec3bf6704703a225e05fb650` |
| 4 | `theorem` | [perfectCertifiedMatching_preservesMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant9307453753633160800f4f8b80083ef9867f218008cea2dc18a65c1b69cfd41b.lean/declarations/perfectcertifiedmatching-preservesmultiplicity--55a628eb265a1d623ada6852.md) | 92 | `result-track:55a628eb265a1d623ada6852d7b23efa65a50e2b8b57c69e2355e28f18bff7e0` |
| 5 | `theorem` | [perfectCertifiedMatching_noMissing_noSpurious](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant9307453753633160800f4f8b80083ef9867f218008cea2dc18a65c1b69cfd41b.lean/declarations/perfectcertifiedmatching-nomissing-nospurious--4beb02895f04661a6e92f6de.md) | 105 | `result-track:4beb02895f04661a6e92f6de01cabb4e8d92ae8cec0acfa413189e5bcf1e0202` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
