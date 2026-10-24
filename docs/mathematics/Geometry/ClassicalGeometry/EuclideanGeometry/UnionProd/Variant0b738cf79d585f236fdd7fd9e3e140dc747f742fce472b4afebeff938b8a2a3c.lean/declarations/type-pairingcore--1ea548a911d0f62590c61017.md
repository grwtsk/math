# type₁_pairingCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "befcd8a2916f87c43a0808772433669bb3e822aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 571,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11f05bf7-b9ec-f73a-ebfe-b3f5c8824b9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d5f9eb0-4255-6cd5-53e2-2fddce0d06ea",
  "kind": "lemma",
  "lexical_name": "type₁_pairingCore",
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
  "slug": "type-pairingcore--1ea548a911d0f62590c61017",
  "source": {
    "blob": "befcd8a2916f87c43a0808772433669bb3e822aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 571,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ea548a911d0f62590c610176242f5ee5d5d6ab08788c433447bfe003b95a735",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d5f9eb0-4255-6cd5-53e2-2fddce0d06ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma type₁_pairingCore {m : ℕ} (k : Fin (m + 1)) {n : ℕ}
    (s : Type₁.{u} k n) :
    (pairingCore k n).type₁ s = s.x :=
  Subcomplex.N.cast_eq_self _ s.hd

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- A weak rank function for `pairingCore k n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `befcd8a2916f87c43a0808772433669bb3e822aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
