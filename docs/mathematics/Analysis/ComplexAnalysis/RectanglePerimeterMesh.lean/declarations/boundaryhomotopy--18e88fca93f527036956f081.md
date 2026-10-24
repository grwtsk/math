# boundaryHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2b456495a3d565457a68a323b58ad935864ab6f3663f14ecd0e3f79842deac3",
  "kind": "def",
  "lexical_name": "boundaryHomotopy",
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
  "slug": "boundaryhomotopy--18e88fca93f527036956f081",
  "source": {
    "blob": "92704720d1436269c03efc01a2a20e9be857cf5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 211,
    "path": "GRWTSK/Analysis/Complex/RectanglePerimeterMesh.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18e88fca93f527036956f0812740c403c66f4aebc4c6668add1bfed320381eae",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2b456495a3d565457a68a323b58ad935864ab6f3663f14ecd0e3f79842deac3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundaryHomotopy (D : Rectangle) {n : ℕ} {a : ℕ → ℝ} (h : Admissible n a) :
    HomotopyWith (curve D n a) D.curve
      (fun g => g 0 = g 1 ∧ ∀ u, g u ∈ D.boundary) where
  toFun p := point D (RealPolygonClock.blend (p.1 : ℝ)
    (RealPolygonClock.clock n a p.2) (RealPolygonClock.clock 4 (fun i : ℕ => (i : ℝ)) p.2))
  continuous_toFun := (point_continuous D).comp (by unfold RealPolygonClock.blend; fun_prop)
  map_zero_left u := by simpa [RealPolygonClock.blend] using (curve_clock D h u).symm
  map_one_left u := by
    simpa [RealPolygonClock.blend, reference_curve D] using
      (curve_clock D reference_admissible u).symm
  prop' lam := by
    constructor
    · have hfour : (1-(lam : ℝ))*4+(lam : ℝ)*4 = 4 := by ring
      simp [RealPolygonClock.blend, h.2.1, h.2.2.1, hfour]
    · intro u
      exact point_boundary D (RealPolygonClock.blend_mem
        (RealPolygonClock.mem_interval (fun i hi => node_mem h hi) u)
        (RealPolygonClock.mem_interval (fun i hi => node_mem reference_admissible hi) u) lam)

end
end GRWTSK.Analysis.Complex.RectanglePerimeterMesh
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectanglePerimeterMesh.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92704720d1436269c03efc01a2a20e9be857cf5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
