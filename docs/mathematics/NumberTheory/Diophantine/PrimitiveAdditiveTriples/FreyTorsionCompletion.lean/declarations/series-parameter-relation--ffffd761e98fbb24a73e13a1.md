# series_parameter_relation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:176dee6a-4266-7b2f-73dd-4ee086ad247f",
  "kind": "theorem",
  "lexical_name": "series_parameter_relation",
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
  "slug": "series-parameter-relation--ffffd761e98fbb24a73e13a1",
  "source": {
    "blob": "89bd73be47e037f7231ba1b13900da3fa28f79ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 223,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffffd761e98fbb24a73e13a1fb96f27d56e94234f4e9666db55978b6f1ab5571",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:176dee6a-4266-7b2f-73dd-4ee086ad247f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem series_parameter_relation (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1) :
    seriesPullback a b l jA jB hl hA hB PowerSeries.X *
        frameA a b jA hA (coordinateImage a b a (FreyTorsionOpen.affineX a b)) ^ 2 =
      algebraMap R (PowerSeries R) (a*b) * PowerSeries.X := by
  have hYB : frameB a b jB hB
      (coordinateImage a b (-b) (coordinateMap a b (MvPolynomial.X 1))) = PowerSeries.X :=
    adicSeries_y a b (-b) jB (by ring) hB
  have hYA : frameA a b jA hA
      (coordinateImage a b a (coordinateMap a b (MvPolynomial.X 1))) = PowerSeries.X :=
    adicSeries_y a b a jA (by ring) hA
  have hs := series_square a b l jA jB hl hA hB
    (coordinateImage a b (-b) (coordinateMap a b (MvPolynomial.X 1)))
  rw [hYB] at hs
  have hc : frameA a b jA hA
      (coordinateImage a b a (algebraMap R (Coordinate a b) (a*b))) =
        algebraMap R (PowerSeries R) (a*b) :=
    (frameA a b jA hA).commutes (a*b)
  have h := congrArg (frameA a b jA hA) (completion_Y_relation a b l hl)
  simp only [map_mul, map_pow] at h
  rw [← hs, hc, hYA] at h
  exact h

/-- The finite parameter map is the old presented nonlinear map in finite frames. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89bd73be47e037f7231ba1b13900da3fa28f79ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
