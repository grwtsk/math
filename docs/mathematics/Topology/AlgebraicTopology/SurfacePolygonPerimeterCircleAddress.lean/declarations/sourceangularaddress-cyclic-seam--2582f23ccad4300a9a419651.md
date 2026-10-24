# sourceAngularAddress_cyclic_seam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:985d0c02-dd95-6aae-99d9-438a8ddf2215",
  "kind": "theorem",
  "lexical_name": "sourceAngularAddress_cyclic_seam",
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
  "slug": "sourceangularaddress-cyclic-seam--2582f23ccad4300a9a419651",
  "source": {
    "blob": "73836f1ca73c8653dc58c5de21aa45f64adf758f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 197,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2582f23ccad4300a9a419651dcb0a139d076bac8fc3ed1dafb182d85e2fa951b",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:985d0c02-dd95-6aae-99d9-438a8ddf2215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceAngularAddress_cyclic_seam (k : ℕ) (h : Handle k) :
    sourceAngularAddress k ((h, 3), 1) =
      sourceAngularAddress k ((nextHandle k h, 0), 0) := by
  rcases directedSideOrdinal_next_or_period k h with hnext | ⟨hlast, hzero⟩
  · exact sourceAngularAddress_of_next_ordinal k _ _ hnext
  · have hreal : (directedSideOrdinal k (h, 3) : ℝ) + 1 =
        angularPeriod k := by
      simp only [angularPeriod]
      exact_mod_cast hlast
    calc
      sourceAngularAddress k ((h, 3), 1) =
          ((angularPeriod k : ℝ) : AddCircle (angularPeriod k)) := by
        unfold sourceAngularAddress
        simpa using
          congrArg (fun v : ℝ => (v : AddCircle (angularPeriod k))) hreal
      _ = 0 := AddCircle.coe_period _
      _ = sourceAngularAddress k ((nextHandle k h, 0), 0) := by
        simp [sourceAngularAddress, hzero]

/-- The angular address respects precisely the FOUR unpaired
perimeter seam constructors, including the genuine final wrap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73836f1ca73c8653dc58c5de21aa45f64adf758f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
