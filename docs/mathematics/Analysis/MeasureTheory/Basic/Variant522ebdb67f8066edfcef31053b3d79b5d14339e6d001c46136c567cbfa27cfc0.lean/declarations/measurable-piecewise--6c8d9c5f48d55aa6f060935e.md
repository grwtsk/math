# Measurable.piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7db7bd917183abca11446d38876f5f43449f0a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d9d2125-d96d-7aad-a2b0-273b8fbcca42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12c1a913-66e5-375a-a4f0-d575a81f71c2",
  "kind": "theorem",
  "lexical_name": "Measurable.piecewise",
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
  "slug": "measurable-piecewise--6c8d9c5f48d55aa6f060935e",
  "source": {
    "blob": "d7db7bd917183abca11446d38876f5f43449f0a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 317,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c8d9c5f48d55aa6f060935e7f1f6f9a3bcabeea48018bcc5f6c4fca0f0a6a88",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12c1a913-66e5-375a-a4f0-d575a81f71c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Measurable.piecewise {_ : DecidablePred (· ∈ s)} (hs : MeasurableSet s)
    (hf : Measurable f) (hg : Measurable g) : Measurable (piecewise s f g) :=
  fun t ht => by simpa [piecewise_preimage] using hs.ite (hf ht) (hg ht)

/-- This is slightly different from `Measurable.piecewise`. It can be used to show
`Measurable (ite (x=0) 0 1)` by
`exact Measurable.ite (measurableSet_singleton 0) measurable_const measurable_const`,
but replacing `Measurable.ite` by `Measurable.piecewise` in that example proof does not work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant522ebdb67f8066edfcef31053b3d79b5d14339e6d001c46136c567cbfa27cfc0.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7db7bd917183abca11446d38876f5f43449f0a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
