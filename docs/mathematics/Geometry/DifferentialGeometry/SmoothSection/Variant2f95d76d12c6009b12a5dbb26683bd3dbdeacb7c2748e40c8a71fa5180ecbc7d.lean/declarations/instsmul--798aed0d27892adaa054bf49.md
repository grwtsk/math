# instSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07687489710f9da84da91a0b96af5b2c5f6d19685f66c0ba5271ccf60522eaeb",
  "kind": "instance",
  "lexical_name": "instSMul",
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
  "slug": "instsmul--798aed0d27892adaa054bf49",
  "source": {
    "blob": "2925d751958cc32bd309ee4e3541b1f3bff295cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 161,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:798aed0d27892adaa054bf49965d22541f9fd085d772008999b66fde3e5baae1",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07687489710f9da84da91a0b96af5b2c5f6d19685f66c0ba5271ccf60522eaeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSMul : SMul 𝕜 Cₛ^n⟮I; F, V⟯ := by
  refine ⟨fun c s => ⟨c • ⇑s, ?_⟩⟩
  intro x₀
  have hs := s.contMDiff x₀
  rw [contMDiffAt_section] at hs ⊢
  set e := trivializationAt F V x₀
  refine ((contMDiffAt_const (c := c)).smul hs).congr_of_eventuallyEq ?_
  refine eventually_of_mem (e.open_baseSet.mem_nhds <| mem_baseSet_trivializationAt F V x₀) ?_
  intro x hx
  apply (e.linear 𝕜 hx).2

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2925d751958cc32bd309ee4e3541b1f3bff295cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
