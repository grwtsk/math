# domain_covered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81919140-e50b-60ca-f7da-bae351e02f11",
  "kind": "theorem",
  "lexical_name": "domain_covered",
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
  "slug": "domain-covered--a3288c4b6a9a72037de35f14",
  "source": {
    "blob": "626ee8358fa28f040b6e2bdf389e5ea29b70085d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JetPoleContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3288c4b6a9a72037de35f142662fe71c34247d278fd4fd3cfa05cc7aeab150e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JetPoleContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81919140-e50b-60ca-f7da-bae351e02f11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domain_covered {a b u v : Coordinates} {p : Plan} (h : EdgeValid a b u v p)
    {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) :
    PolygonTube.blend t (toComplex a) (toComplex b) ∈ closedBall (toComplex p.center) (p.inner : ℝ) := by
  apply PolygonTube.blend_mem_closedBall
  · simpa only [toComplex_sub, mem_closedBall, dist_eq_norm] using (inBall_iff _ _).mp h.2.1
  · simpa only [toComplex_sub, mem_closedBall, dist_eq_norm] using (inBall_iff _ _).mp h.2.2.1
  · exact ht

/-- The source, surrogate chord and deformation all use the new SAME image radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JetPoleContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JetPoleContour.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `626ee8358fa28f040b6e2bdf389e5ea29b70085d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
