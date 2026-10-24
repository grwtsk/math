# ofScalars_series_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67496967-b04b-b805-9af0-2aa1b010071d",
  "kind": "theorem",
  "lexical_name": "ofScalars_series_injective",
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
  "slug": "ofscalars-series-injective--42a2fb91aafb274163b950b5",
  "source": {
    "blob": "e023a4985dca7a2838c80579aa7cd25c54e8bf89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42a2fb91aafb274163b950b5fdc0b695b26f18c83a30d36ff330b655831ee629",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67496967-b04b-b805-9af0-2aa1b010071d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofScalars_series_injective [Nontrivial E] : Function.Injective (ofScalars E (𝕜 := 𝕜)) := by
  intro _ _
  refine Function.mtr fun h ↦ ?_
  simp_rw [FormalMultilinearSeries.ext_iff, ofScalars, ContinuousMultilinearMap.ext_iff,
    ContinuousMultilinearMap.smul_apply]
  push_neg
  obtain ⟨n, hn⟩ := Function.ne_iff.1 h
  refine ⟨n, fun _ ↦ 1, ?_⟩
  simp only [mkPiAlgebraFin_apply, List.ofFn_const, List.prod_replicate, one_pow, ne_eq]
  exact (smul_left_injective 𝕜 one_ne_zero).ne hn

variable (c)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e023a4985dca7a2838c80579aa7cd25c54e8bf89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
