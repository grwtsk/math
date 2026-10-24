# toAffineEquiv_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df394e86378880aa3d6ad65238b686d436e20d1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 535,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0d437aa9ee7e38838011d43a5bf7890c2346930fbe68fec01fa438ccdb2438e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:943cec06-18eb-40e6-f527-2a6e8cf53a21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85d9e9dd-9af1-9a42-8f21-35101701f5e9",
  "kind": "theorem",
  "lexical_name": "toAffineEquiv_symm",
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
  "slug": "toaffineequiv-symm--48e71bc08496b8f21fa17025",
  "source": {
    "blob": "df394e86378880aa3d6ad65238b686d436e20d1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 535,
    "path": "GRWTSK/Topology/GeneralTopology/AffineIsometry/Variantc0d437aa9ee7e38838011d43a5bf7890c2346930fbe68fec01fa438ccdb2438e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e71bc08496b8f21fa17025dc9592a050d89d0beec31d8d2aa300e1f2d715ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AffineIsometry/Variantc0d437aa9ee7e38838011d43a5bf7890c2346930fbe68fec01fa438ccdb2438e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85d9e9dd-9af1-9a42-8f21-35101701f5e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toAffineEquiv_symm : e.toAffineEquiv.symm = e.symm.toAffineEquiv :=
  rfl
#align affine_isometry_equiv.to_affine_equiv_symm AffineIsometryEquiv.toAffineEquiv_symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AffineIsometry/Variantc0d437aa9ee7e38838011d43a5bf7890c2346930fbe68fec01fa438ccdb2438e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AffineIsometry/Variantc0d437aa9ee7e38838011d43a5bf7890c2346930fbe68fec01fa438ccdb2438e.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df394e86378880aa3d6ad65238b686d436e20d1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
