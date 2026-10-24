# sum_vertexWeight_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:925b65f3-7721-6ea0-ecaf-0071aee5ae9c",
  "kind": "theorem",
  "lexical_name": "sum_vertexWeight_eq_one",
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
  "slug": "sum-vertexweight-eq-one--140d3409af22b7b90f4e854e",
  "source": {
    "blob": "25cf62b30a862c341ab229d28663f397e1c1f4dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 79,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:140d3409af22b7b90f4e854efa36e137880a6454440f106579a48bb17314b0ea",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:925b65f3-7721-6ea0-ecaf-0071aee5ae9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_vertexWeight_eq_one (point : TerrainPoint dimension) :
    ∑ vertex : HypercubeVertex dimension, point.vertexWeight vertex = 1 := by
  classical
  have partitionIdentity :=
    Finset.sum_prod_piFinset
      (R := ℝ)
      (s := (Finset.univ : Finset Bool))
      (g := fun axis bit ↦
        if bit then (point.coordinate axis : ℝ)
        else 1 - point.coordinate axis)
  rw [Fintype.piFinset_univ] at partitionIdentity
  simpa [vertexWeight, vertexFactor, Finset.sum_boole] using
    partitionIdentity

/-- The exact square-root point vector on the Boolean vertices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25cf62b30a862c341ab229d28663f397e1c1f4dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
