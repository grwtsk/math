# volume_negAt_plusPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f9f0541131a9c5fdd24e452b713156eeb5398a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:402bd8bb-3582-a44e-b875-7841e5e2d342",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:615de091-66f6-bc47-fa63-8383bdee715b",
  "kind": "theorem",
  "lexical_name": "volume_negAt_plusPart",
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
  "slug": "volume-negat-pluspart--d17dae9150f70a42530726a3",
  "source": {
    "blob": "9f9f0541131a9c5fdd24e452b713156eeb5398a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1118,
    "line": 1110,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d17dae9150f70a42530726a36f23c85e4477df3ddc9366a6e412b6667de9ce84",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:615de091-66f6-bc47-fa63-8383bdee715b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1110–1118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_negAt_plusPart (hm : MeasurableSet A) :
    volume (negAt s '' (plusPart A)) = volume (plusPart A) := by
  rw [← negAt_symm, ContinuousLinearEquiv.image_symm_eq_preimage,
    volume_preserving_negAt.measure_preimage (measurableSet_plusPart hm).nullMeasurableSet]

include hA in
open Classical in
/-- If a subset `A` of the `mixedSpace` is symmetric at real places, then its volume is
`2^ nrRealPlaces K` times the volume of its `plusPart`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean#L1110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f9f0541131a9c5fdd24e452b713156eeb5398a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
