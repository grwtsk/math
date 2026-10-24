# series_projection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1eab251b-6d41-3ce7-3a9f-c93e0edf9f64",
  "kind": "theorem",
  "lexical_name": "series_projection",
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
  "slug": "series-projection--96130e69434fb41364b1e8a2",
  "source": {
    "blob": "89bd73be47e037f7231ba1b13900da3fa28f79ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 255,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96130e69434fb41364b1e8a29ab8c709fda657c972179833964a80155527fe08",
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

Occurrence: `result:1eab251b-6d41-3ce7-3a9f-c93e0edf9f64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem series_projection (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1)
    (N : ℕ) (F : PowerSeries R) :
    FreyParameterSeries.seriesTrunc N (seriesPullback a b l jA jB hl hA hB F) =
      parameterEquiv a b l jA jB hl hA hB N (FreyParameterSeries.seriesTrunc N F) := by
  have hq : canonicalProjection a b (-b) (N + 1) ((frameB a b jB hB).symm F) =
      (finiteEquiv a b (-b) N).symm
        ((algebraEquiv a b (-b) jB (by ring) hB N).symm
          (FreyParameterSeries.seriesTrunc N F)) := by
    apply (finiteEquiv a b (-b) N).injective
    apply (algebraEquiv a b (-b) jB (by ring) hB N).injective
    have h := adicSeries_projection a b (-b) jB (by ring) hB N
      ((frameB a b jB hB).symm F)
    simpa only [frameB, AlgEquiv.apply_symm_apply] using h.symm
  change FreyParameterSeries.seriesTrunc N (adicSeriesEquiv a b a jA (by ring) hA
    (completionEquiv a b l hl ((frameB a b jB hB).symm F))) = _
  rw [adicSeries_projection, completion_projection, hq]
  rfl

/-- Parameter-adic divisibility is preserved exactly by the full formal pullback.
No assertion about coefficient valuations or norms is contained in this statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89bd73be47e037f7231ba1b13900da3fa28f79ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
