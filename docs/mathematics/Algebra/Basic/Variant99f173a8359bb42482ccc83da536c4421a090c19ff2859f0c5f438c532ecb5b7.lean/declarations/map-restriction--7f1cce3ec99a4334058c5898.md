# map_restriction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8442ab91bebf2b30041fc54ae5bbebbcbdd85445",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99f173a8359bb42482ccc83da536c4421a090c19ff2859f0c5f438c532ecb5b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abcdffe8-e916-26a3-7655-684e41f05ba4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e33d390-fe58-42cf-b8c9-859f93eaafba",
  "kind": "theorem",
  "lexical_name": "map_restriction",
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
  "slug": "map-restriction--7f1cce3ec99a4334058c5898",
  "source": {
    "blob": "8442ab91bebf2b30041fc54ae5bbebbcbdd85445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 298,
    "path": "GRWTSK/Algebra/Basic/Variant99f173a8359bb42482ccc83da536c4421a090c19ff2859f0c5f438c532ecb5b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f1cce3ec99a4334058c589807db4ad1a463d63a2b3a9c4920c7b657b0db4f7c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant99f173a8359bb42482ccc83da536c4421a090c19ff2859f0c5f438c532ecb5b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e33d390-fe58-42cf-b8c9-859f93eaafba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_restriction {R : Type u} [CommRing R] (p : R[X]) :
    p.restriction.map (algebraMap _ _) = p :=
  ext fun n => by rw [coeff_map, Algebra.algebraMap_ofSubring_apply, coeff_restriction]
#align polynomial.map_restriction Polynomial.map_restriction

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant99f173a8359bb42482ccc83da536c4421a090c19ff2859f0c5f438c532ecb5b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant99f173a8359bb42482ccc83da536c4421a090c19ff2859f0c5f438c532ecb5b7.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8442ab91bebf2b30041fc54ae5bbebbcbdd85445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
