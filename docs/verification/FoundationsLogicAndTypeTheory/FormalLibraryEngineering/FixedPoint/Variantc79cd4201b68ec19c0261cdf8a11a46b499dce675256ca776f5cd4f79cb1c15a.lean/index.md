# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPoint.Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e5a66d6dead2bab70dc5e1529d51565d4904e61",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e5a66d6dead2bab70dc5e1529d51565d4904e61`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.DefectTransport` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean/declarations/isfixedpoint--6861bac89128ccf5c41ee2bc.md) | 7 | `declaration-track:6861bac89128ccf5c41ee2bce754a5aa6842c358a4e2766f7f2fc3170e32cfc6` |
| 2 | `structure` | [FixedPointCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean/declarations/fixedpointcertificate--ac9b00720e64f157ba9fffec.md) | 10 | `declaration-track:ac9b00720e64f157ba9fffec4d2aea27deeffb06c16aec612c5b3d5715ff83d6` |
| 3 | `theorem` | [certified_point_satisfies_exact_equation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean/declarations/certified-point-satisfies-exact-equation--fe67ecbe1238c1652bf82803.md) | 17 | `result-track:fe67ecbe1238c1652bf82803f5a124a725d29617f79c300a94f5dd1ab41757f6` |
| 4 | `structure` | [FixedPointAnalyticObligations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean/declarations/fixedpointanalyticobligations--326ac38435d643c40ef6f348.md) | 24 | `declaration-track:326ac38435d643c40ef6f34824c36db9f072131f439ed8ca31a8d237051b7aa9` |
| 5 | `theorem` | [fixed_point_unique_from_separation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean/declarations/fixed-point-unique-from-separation--a36d6dadcf074a96ca1d03eb.md) | 46 | `result-track:a36d6dadcf074a96ca1d03eb1a698bdb62912c6772f84093104da625b0264650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
