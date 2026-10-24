# smoothAt_pi_space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a3eff42180012a8a159b383691e742e500022f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1791,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:949f58a3-8dc1-fd6e-50f3-b4f06225c2a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ba34045-8cc2-12a7-7a88-f6d74bd5340e",
  "kind": "theorem",
  "lexical_name": "smoothAt_pi_space",
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
  "slug": "smoothat-pi-space--95a6b45c5be9f54eeed019ec",
  "source": {
    "blob": "0a3eff42180012a8a159b383691e742e500022f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1795,
    "line": 1791,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95a6b45c5be9f54eeed019ec4e50cd17c704401853319de1a66dd3b5b4ee0c31",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ba34045-8cc2-12a7-7a88-f6d74bd5340e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1791–1795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothAt_pi_space :
    SmoothAt I 𝓘(𝕜, ∀ i, Fi i) φ x ↔ ∀ i, SmoothAt I 𝓘(𝕜, Fi i) (fun x => φ x i) x :=
  contMDiffAt_pi_space
#align smooth_at_pi_space smoothAt_pi_space

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean#L1791).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a3eff42180012a8a159b383691e742e500022f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
