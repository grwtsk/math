# finiteLog_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:468fa66f-1b7a-3299-f813-12c52624d85a",
  "kind": "theorem",
  "lexical_name": "finiteLog_exp",
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
  "slug": "finitelog-exp--30abe8d0ce47fc058d7b5476",
  "source": {
    "blob": "24758d17af4e5bf83b68bd983ddc16f11a27fa9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 189,
    "path": "GRWTSK/Analysis/Complex/RationalPolygonIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30abe8d0ce47fc058d7b5476e054e366597122db3b65813ddcd9e7b4dd6d043d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:468fa66f-1b7a-3299-f813-12c52624d85a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteLog_exp {n : ℕ} (hn : 0 < n) (v : List Coordinates)
    (he : ∀ i, i < n → EdgeValid (vertex v i) (vertex v (i + 1))) (t : I) :
    Complex.exp (finiteLog n v he t) = polygonMap n (points v) t := by
  have ha : points v 0 ≠ 0 := by simpa [points] using edge_nonzero (he 0 hn) (0 : I)
  symm
  apply natural (constantVertex (liftVertex v)) (constantVertex (points v)) n
    (fun i hi => logCell v i (he i hi)) (fun i _ => affineCell (points v) i)
    Complex.exp (0 : I) (0 : I)
  · simp [constantVertex, liftVertex, ha, Complex.exp_log]
  · intro i hi u
    exact (logCell_exp v i (he i hi) u 0).symm

/-- Only exact closure cancels the principal endpoint logs. The accumulated
period remains; subtracting principal logs alone would erase this integer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalPolygonIndex.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24758d17af4e5bf83b68bd983ddc16f11a27fa9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
