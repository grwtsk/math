# reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1d6e376fab98109789fed6e3e39c7ca342617a4b7488e559f0b3dda5f16a246",
  "kind": "def",
  "lexical_name": "reflection",
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
  "slug": "reflection--7efeeab3fa351512588c19c9",
  "source": {
    "blob": "bcc38e3ed3951a95f60ac3a102597c3c77c25ece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 521,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7efeeab3fa351512588c19c966333610ffee79d343c3703c808d0de8b0b8126d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1d6e376fab98109789fed6e3e39c7ca342617a4b7488e559f0b3dda5f16a246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reflection (s : AffineSubspace ℝ P) [Nonempty s] [HasOrthogonalProjection s.direction] :
    P ≃ᵃⁱ[ℝ] P :=
  AffineIsometryEquiv.mk'
    (fun p => ↑(orthogonalProjection s p) -ᵥ p +ᵥ (orthogonalProjection s p : P))
    (_root_.reflection s.direction) (↑(Classical.arbitrary s))
    (by
      intro p
      let v := p -ᵥ ↑(Classical.arbitrary s)
      let a : V := _root_.orthogonalProjection s.direction v
      let b : P := ↑(Classical.arbitrary s)
      have key : a +ᵥ b -ᵥ (v +ᵥ b) +ᵥ (a +ᵥ b) = a + a - v +ᵥ (b -ᵥ b +ᵥ b) := by
        rw [← add_vadd, vsub_vadd_eq_vsub_sub, vsub_vadd, vadd_vsub]
        congr 1
        abel
      dsimp only
      rwa [reflection_apply, (vsub_vadd p b).symm, AffineMap.map_vadd, orthogonalProjection_linear,
        vadd_vsub, orthogonalProjection_mem_subspace_eq_self, two_smul])
#align euclidean_geometry.reflection EuclideanGeometry.reflection

/-- The result of reflecting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcc38e3ed3951a95f60ac3a102597c3c77c25ece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
