# interior_sourceAngle_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:750c5371-90d8-73b6-808c-941798845e10",
  "kind": "theorem",
  "lexical_name": "interior_sourceAngle_injective",
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
  "slug": "interior-sourceangle-injective--911ae398936b84c0ff3e50af",
  "source": {
    "blob": "a8d7acb224f85a0510345a325c6d2657ac85df83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 117,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:911ae398936b84c0ff3e50af5784fabac03fde1761fe1430ca6a15105294d953",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:750c5371-90d8-73b6-808c-941798845e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_sourceAngle_injective (k : ℕ)
    (c d : PolygonCorner k) (t u : unitInterval)
    (ht : (t : ℝ) < 1) (hu : (u : ℝ) < 1)
    (heq : sourceAngularAddress k (c, t) =
      sourceAngularAddress k (d, u)) :
    c = d ∧ t = u := by
  have hr := interior_angle_real_eq k c d t u ht hu heq
  have hnonneg_t := t.property.1
  have hnonneg_u := u.property.1
  have hc : directedSideOrdinal k c = directedSideOrdinal k d := by
    have hdiff : (directedSideOrdinal k c : ℝ) <
        (directedSideOrdinal k d : ℝ) + 1 := by linarith
    have hdiff' : (directedSideOrdinal k d : ℝ) <
        (directedSideOrdinal k c : ℝ) + 1 := by linarith
    have hd_nat : directedSideOrdinal k c < directedSideOrdinal k d + 1 := by
      exact_mod_cast hdiff
    have hd_nat' : directedSideOrdinal k d < directedSideOrdinal k c + 1 := by
      exact_mod_cast hdiff'
    omega
  have hsource := directedSideOrdinal_injective k hc
  constructor
  · exact hsource
  · subst d
    have htueq : (t : ℝ) = u := by
      have hreal : (directedSideOrdinal k c : ℝ) + t =
          (directedSideOrdinal k c : ℝ) + u := hr
      linarith
    exact Subtype.ext htueq

/-- The quotient perimeter angle retains the same strict source
interior separation, by consuming #889's actual quotient equation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d7acb224f85a0510345a325c6d2657ac85df83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
