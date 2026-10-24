# IsTangentAt.eq_orthogonalProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ebb9a37c11a420956e1454d1ec57bcab4564a6ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8483ef4c-ed09-474f-b22b-d0f3712dce4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df7a094a-39de-c259-2fee-769472ce0bfa",
  "kind": "lemma",
  "lexical_name": "IsTangentAt.eq_orthogonalProjection",
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
  "slug": "istangentat-eq-orthogonalprojection--059313bb9648b44c1f7f7305",
  "source": {
    "blob": "ebb9a37c11a420956e1454d1ec57bcab4564a6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 258,
    "path": "GRWTSK/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:059313bb9648b44c1f7f730551458cde04f7f8081d81c4e1f8dd2fa450012bd4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df7a094a-39de-c259-2fee-769472ce0bfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTangentAt.eq_orthogonalProjection {s : Sphere P} {p : P} {as : AffineSubspace ℝ P}
    [Nonempty as] [as.direction.HasOrthogonalProjection] (h : s.IsTangentAt p as) :
    p = orthogonalProjection as s.center := by
  refine h.eq_of_isTangentAt ?_
  have h' := h.isTangent
  rwa [isTangent_iff_isTangentAt_orthogonalProjection] at h'

/-- The set of all maximal tangent spaces to the sphere `s`. -/
-- Note: `Set` has no computational content, but Lean still attempts to compile it.
-- See https://github.com/leanprover/lean4/issues/14084.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebb9a37c11a420956e1454d1ec57bcab4564a6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
