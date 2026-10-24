# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Provenance.Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5280abc2d5081767e33fec3ce1dc931a10079272",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5280abc2d5081767e33fec3ce1dc931a10079272`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Evidence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProvenanceTerminal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca.lean/declarations/provenanceterminal--a98dec30ca4c6c8519853c2b.md) | 17 | `declaration-track:a98dec30ca4c6c8519853c2b62986ea92093905aee50cbf5adcc9bc344a26916` |
| 2 | `structure` | [ProvenanceEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca.lean/declarations/provenanceedge--71c4579cee218aac15573d6a.md) | 22 | `declaration-track:71c4579cee218aac15573d6af67e4c03e95a45dd99f0af705c63dd93afd60a5f` |
| 3 | `structure` | [ProvenancePath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca.lean/declarations/provenancepath--a7f6a90564fcb69b74c63276.md) | 29 | `declaration-track:a7f6a90564fcb69b74c632760538be642c57b15f2c9caaa11416b99c87e51133` |
| 4 | `def` | [ProvenancePath.Valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca.lean/declarations/provenancepath-valid--f5f870c4be64b6977efeef9c.md) | 36 | `declaration-track:f5f870c4be64b6977efeef9c1d3e442138479a0ef041b5b039d31f0995e082eb` |
| 5 | `theorem` | [validProvenance_snapshot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca.lean/declarations/validprovenance-snapshot--779ae5274b8757fda051429b.md) | 49 | `result-track:779ae5274b8757fda051429b442b7137d7c2cfb3716fc14f9abb4a645089d685` |
| 6 | `structure` | [ProvenanceCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca.lean/declarations/provenancecertificate--9fc2b6e2ca601387e7c830fd.md) | 58 | `declaration-track:9fc2b6e2ca601387e7c830fd4c64946c0728a2c618609a39a9a9a32fd685c28a` |
| 7 | `theorem` | [provenanceCertificate_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant27ca47f256bb2d13ccfb8f193fead01090bd870cc98572fde73f973505c0e0ca.lean/declarations/provenancecertificate-sound--e88d896e1f5b1c193e99ed2d.md) | 66 | `result-track:e88d896e1f5b1c193e99ed2d7eef1f1125fa83a871f731e23333c17a77b2b36d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
