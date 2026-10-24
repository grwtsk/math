# perimeterConnected_interior_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cddfa3d-c666-f83c-3861-f9970b8b4ccd",
  "kind": "theorem",
  "lexical_name": "perimeterConnected_interior_fixed",
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
  "slug": "perimeterconnected-interior-fixed--5d1b5f2e45965cb7b76a5f1f",
  "source": {
    "blob": "c902501d3eb3ce7bb5df9a2b0804c1a39d7464f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 288,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d1b5f2e45965cb7b76a5f1fedd26a8b8f5d594f9a1c88210cd51f93bd8bf3c8",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cddfa3d-c666-f83c-3861-f9970b8b4ccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perimeterConnected_interior_fixed (k : ℕ)
    {p q : BoundaryPoint k} (h : PerimeterConnected k p q) :
    ¬ IsEndpoint p.2 → p = q := by
  induction h with
  | rel p q hpq =>
      intro hi
      exact False.elim (hi (seamStep_has_endpoints k hpq).1)
  | refl p =>
      intro _
      rfl
  | symm p q hpq ih =>
      intro hq
      have hp : ¬ IsEndpoint p.2 := by
        intro hendpoint
        exact hq ((perimeterConnected_preserves_endpoint k hpq).mp hendpoint)
      exact (ih hp).symm
  | trans p q r hpq hqr ih1 ih2 =>
      intro hp
      have hpq_eq : p = q := ih1 hp
      have hq : ¬ IsEndpoint q.2 := by
        simpa [← hpq_eq] using hp
      exact hpq_eq.trans (ih2 hq)

/-- The first handle a-midpoint and its opposite a⁻¹-midpoint remain
DISTINCT in the UNPAIRED perimeter, although attachment pairs them.
The difference is a true source-ID difference, not a numerical guess. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c902501d3eb3ce7bb5df9a2b0804c1a39d7464f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
