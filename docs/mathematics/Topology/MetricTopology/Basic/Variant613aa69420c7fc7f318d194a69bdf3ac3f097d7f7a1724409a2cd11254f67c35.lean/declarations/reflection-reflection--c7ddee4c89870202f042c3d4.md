# reflection_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c35c7f3-b8de-bc3b-8f10-06298bf34eaf",
  "kind": "theorem",
  "lexical_name": "reflection_reflection",
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
  "slug": "reflection-reflection--c7ddee4c89870202f042c3d4",
  "source": {
    "blob": "bcc38e3ed3951a95f60ac3a102597c3c77c25ece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 555,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7ddee4c89870202f042c3d46fb64094edacad2cfe3f286bffd180d87e3e9f41",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c35c7f3-b8de-bc3b-8f10-06298bf34eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflection_reflection (s : AffineSubspace ℝ P) [Nonempty s]
    [HasOrthogonalProjection s.direction] (p : P) : reflection s (reflection s p) = p := by
  have : ∀ a : s, ∀ b : V, (_root_.orthogonalProjection s.direction) b = 0 →
      reflection s (reflection s (b +ᵥ (a : P))) = b +ᵥ (a : P) := by
    intro _ _ h
    simp [reflection, h]
  rw [← vsub_vadd p (orthogonalProjection s p)]
  exact this (orthogonalProjection s p) _ (orthogonalProjection_vsub_orthogonalProjection s p)
#align euclidean_geometry.reflection_reflection EuclideanGeometry.reflection_reflection

/-- Reflection is its own inverse. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcc38e3ed3951a95f60ac3a102597c3c77c25ece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
