# IsSheaf.isSheafUniqueGluing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35f474743c9a6c933f4c62530be23cdc92a30288",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bccc4bd6-813e-b688-adf1-77c9772594d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:011033c1-f650-786f-ebbf-03ca2815e15a",
  "kind": "theorem",
  "lexical_name": "IsSheaf.isSheafUniqueGluing",
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
  "slug": "issheaf-issheafuniquegluing--6927e5edd4ff52d32166481f",
  "source": {
    "blob": "35f474743c9a6c933f4c62530be23cdc92a30288",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 150,
    "path": "GRWTSK/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6927e5edd4ff52d32166481f61296c738b221dc9c3e7c0f10d43bad0dbcd20f3",
  "verification": {
    "reference": "docs/verification/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:011033c1-f650-786f-ebbf-03ca2815e15a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSheaf.isSheafUniqueGluing (h : F.IsSheaf) {ι : Type*} (U : ι → Opens X)
    (sf : ∀ i : ι, ToType (F.obj (op (U i))))
    (cpt : IsCompatible F U sf) : ∃! s : ToType (F.obj (op (iSup U))), IsGluing F U sf s :=
  ((isSheaf_iff_isSheaf_comp' (forget C) F).mp h).isSheafUniqueGluing_types sf cpt

variable (F)

/-- For presheaves valued in a concrete category, whose forgetful functor reflects isomorphisms and
preserves limits, the sheaf condition in terms of unique gluings is equivalent to the usual one.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35f474743c9a6c933f4c62530be23cdc92a30288` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
