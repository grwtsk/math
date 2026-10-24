# comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc622fc74da2c8c3a6a2fa0a93902b0c695d8c56e444bb73aa07c7e6f5e530ec",
  "kind": "def",
  "lexical_name": "comap",
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
  "slug": "comap--cedb04ea2543fc5d2d890927",
  "source": {
    "blob": "9cefd9b847b658317b434975d1d707b3eadc676a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 235,
    "path": "GRWTSK/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cedb04ea2543fc5d2d890927e49be7673f2d8b98ec85824db5b7028ea1036129",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc622fc74da2c8c3a6a2fa0a93902b0c695d8c56e444bb73aa07c7e6f5e530ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def comap (f : E →L[ℝ] F) (S : ProperCone ℝ F) : ProperCone ℝ E
    where
  toConvexCone := ConvexCone.comap (f : E →ₗ[ℝ] F) S
  nonempty' :=
    ⟨0, by
      simp only [ConvexCone.comap, mem_preimage, map_zero, SetLike.mem_coe, mem_coe]
      apply ProperCone.pointed⟩
  is_closed' := by
    simp only [ConvexCone.comap, ContinuousLinearMap.coe_coe]
    apply IsClosed.preimage f.2 S.isClosed
#align proper_cone.comap ProperCone.comap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cefd9b847b658317b434975d1d707b3eadc676a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
