# continuous_equivIoc_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d10558eef48b083c55a8d9a227c6084d37f1e92a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:439b720b-9543-6d60-2108-959f084c78d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fa9dd26-8e6a-68e2-2bc8-355cf4041b11",
  "kind": "theorem",
  "lexical_name": "continuous_equivIoc_symm",
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
  "slug": "continuous-equivioc-symm--a46bfc515afddaaf8f89270c",
  "source": {
    "blob": "d10558eef48b083c55a8d9a227c6084d37f1e92a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 273,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a46bfc515afddaaf8f89270c200336f87c3c714cc605e0eacd49ffd3360e71f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fa9dd26-8e6a-68e2-2bc8-355cf4041b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_equivIoc_symm : Continuous (equivIoc p a).symm :=
  continuous_quotient_mk'.comp continuous_subtype_val
#align add_circle.continuous_equiv_Ioc_symm AddCircle.continuous_equivIoc_symm

variable {x : AddCircle p} (hx : x ≠ a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d10558eef48b083c55a8d9a227c6084d37f1e92a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
