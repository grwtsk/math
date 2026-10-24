# IsTangentAt.eq_orthRadius_of_finrank_add_one_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70b06b7a-c6b4-66cb-cbc3-0dacb79e81ee",
  "kind": "lemma",
  "lexical_name": "IsTangentAt.eq_orthRadius_of_finrank_add_one_eq",
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
  "slug": "istangentat-eq-orthradius-of-finrank-add-one-eq--cdebca3fb0421e5975b246bc",
  "source": {
    "blob": "52c59c192899f975c56964179e20590005db3e2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 145,
    "path": "GRWTSK/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdebca3fb0421e5975b246bc9e5813ebc954499d80eddf827262ea488775d4d1",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70b06b7a-c6b4-66cb-cbc3-0dacb79e81ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTangentAt.eq_orthRadius_of_finrank_add_one_eq {s : Sphere P} {as : AffineSubspace ℝ P}
    {p : P} (ht : s.IsTangentAt p as) (hr : s.radius ≠ 0)
    (hfr : Module.finrank ℝ as.direction + 1 = Module.finrank ℝ V) : as = s.orthRadius p := by
  have : FiniteDimensional ℝ V := Module.finite_of_finrank_eq_succ hfr.symm
  have hp : p ≠ s.center := fun h ↦ (h ▸ s.center_mem_iff).not.2 hr ht.mem_sphere
  rw [← finrank_orthRadius hp, Nat.add_right_cancel_iff] at hfr
  exact eq_of_direction_eq_of_nonempty_of_le
    (Submodule.eq_of_le_of_finrank_eq (direction_le ht.le_orthRadius) hfr) ⟨p, ht.mem_space⟩
    ht.le_orthRadius

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52c59c192899f975c56964179e20590005db3e2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
