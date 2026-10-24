# ext_to_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c09675a4982fcb4365bd9b0114b0bcf328126d16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:787acb5a-106d-0e2e-d644-ca6a624f939b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39354e1f-fe59-681e-dc59-6bfa7ccb9c82",
  "kind": "lemma",
  "lexical_name": "ext_to_X",
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
  "slug": "ext-to-x--3b3d1dffa3f74055f35c6fe3",
  "source": {
    "blob": "c09675a4982fcb4365bd9b0114b0bcf328126d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 143,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b3d1dffa3f74055f35c6fe37ca46acd58222952b6a6f8613ce76af13e71f956",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39354e1f-fe59-681e-dc59-6bfa7ccb9c82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_to_X (i j : ι) (hij : c.Rel i j) {A : C} {f g : A ⟶ X φ i}
    (h₁ : f ≫ fstX φ i j hij = g ≫ fstX φ i j hij) (h₂ : f ≫ sndX φ i = g ≫ sndX φ i) :
    f = g := by
  haveI := HasHomotopyCofiber.hasBinaryBiproduct φ _ _ hij
  rw [← cancel_mono (XIsoBiprod φ i j hij).hom]
  apply biprod.hom_ext
  · simpa using h₁
  · obtain rfl := c.next_eq' hij
    simpa [sndX, dif_pos hij] using h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09675a4982fcb4365bd9b0114b0bcf328126d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
