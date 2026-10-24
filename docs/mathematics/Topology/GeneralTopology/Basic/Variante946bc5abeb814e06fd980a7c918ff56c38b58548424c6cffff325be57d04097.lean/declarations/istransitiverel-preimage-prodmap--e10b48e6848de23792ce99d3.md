# IsTransitiveRel.preimage_prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "817f632b3b9bbd9bc980b07c295281c92c681fd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22165f0b-6962-183e-f0bd-f03af2d312a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de7e2952-b547-caec-f8a7-89b640e964c4",
  "kind": "lemma",
  "lexical_name": "IsTransitiveRel.preimage_prodMap",
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
  "slug": "istransitiverel-preimage-prodmap--e10b48e6848de23792ce99d3",
  "source": {
    "blob": "817f632b3b9bbd9bc980b07c295281c92c681fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 92,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e10b48e6848de23792ce99d31cb7a69918d6a15c6b617147c77b38ddd57d0ed5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de7e2952-b547-caec-f8a7-89b640e964c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTransitiveRel.preimage_prodMap {Y : Type*} {t : Set (Y × Y)}
    (ht : IsTransitiveRel t) (f : X → Y) :
    IsTransitiveRel (Prod.map f f ⁻¹' t) :=
  fun _ _ _ h h' ↦ ht h h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `817f632b3b9bbd9bc980b07c295281c92c681fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
