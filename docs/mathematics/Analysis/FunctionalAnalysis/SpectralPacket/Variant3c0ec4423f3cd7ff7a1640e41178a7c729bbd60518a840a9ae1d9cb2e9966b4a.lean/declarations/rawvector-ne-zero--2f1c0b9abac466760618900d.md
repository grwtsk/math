# rawVector_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5a06acdb4c72e7ff26b5893b012c5501abed36d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4972b022-8ab7-ddb5-cbc9-ba0de724ccbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:846610ca-bfb5-f41e-6012-88492d60cb60",
  "kind": "theorem",
  "lexical_name": "rawVector_ne_zero",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "rawvector-ne-zero--2f1c0b9abac466760618900d",
  "source": {
    "blob": "c5a06acdb4c72e7ff26b5893b012c5501abed36d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 56,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f1c0b9abac466760618900de567c24b51f5ac24ca8fe61e19041adeec43f0dc",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:846610ca-bfb5-f41e-6012-88492d60cb60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawVector_ne_zero (packet : SpectralPacketData Grid) :
    packet.rawVector ≠ 0 := by
  intro zeroVector
  let index : Grid := Classical.choice inferInstance
  have pointwise := congrArg (fun vector : FiniteHilbert (Grid × Fin 2) ↦
    vector (index, 0)) zeroVector
  simp only [packet.rawVector_apply_zero, PiLp.zero_apply] at pointwise
  exact ne_of_gt (packet.rawAmplitude_pos index) (Complex.ofReal_eq_zero.mp pointwise)

/-- Exact norm-normalized spectral packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5a06acdb4c72e7ff26b5893b012c5501abed36d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
