# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SpanFamily.Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5590def77feab82ee368cb29a84962c1d1a2a937",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5590def77feab82ee368cb29a84962c1d1a2a937`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Span` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CandidateSpanSource](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/declarations/candidatespansource--37e833d178a81c28c1beb0d2.md) | 17 | `declaration-track:37e833d178a81c28c1beb0d2953a6ec5e2ce416366612dc05b0b42a3d1494a96` |
| 2 | `structure` | [CandidateSpanConfiguration](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/declarations/candidatespanconfiguration--91bba9dfed8f8f371a0ae837.md) | 32 | `declaration-track:91bba9dfed8f8f371a0ae8372a5a00bc76347d9bdbc6bb711315a3ef19d2926d` |
| 3 | `structure` | [CandidateSpanFamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/declarations/candidatespanfamily--8725778ea0cb7d3d73d5c46a.md) | 39 | `declaration-track:8725778ea0cb7d3d73d5c46a6a942b639de19566c4ae42534db537b72b058015` |
| 4 | `def` | [OrderedSpans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/declarations/orderedspans--ab33e977a21830d63c57c2ad.md) | 44 | `declaration-track:ab33e977a21830d63c57c2ada19e70b1a4d60969174a98afc07ef8ad09992ddd` |
| 5 | `def` | [PairwiseDisjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/declarations/pairwisedisjoint--e9f43524e1b898c22ca18dd1.md) | 48 | `declaration-track:e9f43524e1b898c22ca18dd19c151abbea9e48d13759ba620878b2176228fe76` |
| 6 | `structure` | [TextRegion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/declarations/textregion--07a0f755967034b250321d6c.md) | 52 | `declaration-track:07a0f755967034b250321d6c91783a703df5f4ffce493cd35c543ca37e89c203` |
| 7 | `structure` | [IgnoredRegion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/declarations/ignoredregion--b85be48d556d1946f69ffa09.md) | 55 | `declaration-track:b85be48d556d1946f69ffa09567cbab1749cf222bad0a26e6d304aa3b57ec482` |
| 8 | `def` | [Covers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/declarations/covers--b717b038c4a0e956b5638805.md) | 59 | `declaration-track:b717b038c4a0e956b5638805e6045aabe944ea4294e678d5f105751873207d22` |
| 9 | `structure` | [EvidenceRequiredSpans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/declarations/evidencerequiredspans--1603939bdef785fbb335b8ca.md) | 66 | `declaration-track:1603939bdef785fbb335b8ca80cd393a5ea32aca81cca6cb06f3ef3e189d2413` |
| 10 | `structure` | [CandidateCoverageCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/declarations/candidatecoveragecertificate--df01d33dce92c45fbde980c3.md) | 70 | `declaration-track:df01d33dce92c45fbde980c32f8671474813251316c0f0bac6d1998d9825210a` |
| 11 | `theorem` | [candidateCoverage_contains](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpanFamily/Variant8117c155ef9a43ddd2b09e430108ef52eb64e56201f9ac27f59d09376b41eba2.lean/declarations/candidatecoverage-contains--f4027bacc7b7265b820dd69e.md) | 78 | `result-track:f4027bacc7b7265b820dd69e15ffaa90af2d5c39fa48b79125e89c85189b322c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
