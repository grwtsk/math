# orthogonalProjection_eq_self_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b15178a8-ad49-537d-877d-33abb611a75f",
  "kind": "theorem",
  "lexical_name": "orthogonalProjection_eq_self_iff",
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
  "slug": "orthogonalprojection-eq-self-iff--8f4448c9717d5aad9117a72b",
  "source": {
    "blob": "cd85e240c46743b65059b0945464e0510d11201a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 214,
    "path": "GRWTSK/Topology/MetricTopology/Projection/Variantfa31d1d82c7b31b0541ac04628d04ad886f4f7f59fcccc5771d62872711c080a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f4448c9717d5aad9117a72b4eb05fa2cbbb765feebc78b46bd80d68b18abb35",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Projection/Variantfa31d1d82c7b31b0541ac04628d04ad886f4f7f59fcccc5771d62872711c080a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b15178a8-ad49-537d-877d-33abb611a75f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalProjection_eq_self_iff {s : AffineSubspace ℝ P} [Nonempty s]
    [s.direction.HasOrthogonalProjection] {p : P} : ↑(orthogonalProjection s p) = p ↔ p ∈ s := by
  constructor
  · exact fun h => h ▸ orthogonalProjection_mem p
  · intro h
    have hp : p ∈ (s : Set P) ∩ mk' p s.directionᗮ := ⟨h, self_mem_mk' p _⟩
    rw [inter_eq_singleton_orthogonalProjection p] at hp
    symm
    exact hp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Projection/Variantfa31d1d82c7b31b0541ac04628d04ad886f4f7f59fcccc5771d62872711c080a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Projection/Variantfa31d1d82c7b31b0541ac04628d04ad886f4f7f59fcccc5771d62872711c080a.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd85e240c46743b65059b0945464e0510d11201a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
