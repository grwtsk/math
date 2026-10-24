# actualLeadingComplexCoefficient_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e554547-2dc1-ab16-3315-b78d47da5956",
  "kind": "theorem",
  "lexical_name": "actualLeadingComplexCoefficient_eq",
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
  "slug": "actualleadingcomplexcoefficient-eq--37554974700b8b6b62cfb056",
  "source": {
    "blob": "93b7d1a279928056d85b67fc59f6e0436a14f600",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant316cbc486115cfd54be00264bb11defddd38a6b074e006f901c7f5557d82fbeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37554974700b8b6b62cfb056422906b7fdc7974bb987fffcc9f6b45b153a8219",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant316cbc486115cfd54be00264bb11defddd38a6b074e006f901c7f5557d82fbeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e554547-2dc1-ab16-3315-b78d47da5956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLeadingComplexCoefficient_eq {z : ℂ} (hz : 0 < z.re) :
    actualLeadingComplexCoefficient z = 384 / z^3 - 96 / z^5 := by
  have hzn : z ≠ 0 := by intro he; rw [he] at hz; simp at hz
  have hh := integral_Ioi_of_hasDerivAt_of_tendsto'
    (a := (0 : ℝ)) (fun u _ => actualLeadingComplexAntiderivative_hasDerivAt hzn u)
    (actualLeadingComplexCoefficient_integrable hz)
    (actualLeadingComplexAntiderivative_tendsto_zero hz)
  simpa [actualLeadingComplexCoefficient, actualLeadingComplexAntiderivative] using hh

end
end FormalResearch.RiemannHypothesis.SourceActualComplexEndpointCoefficient
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant316cbc486115cfd54be00264bb11defddd38a6b074e006f901c7f5557d82fbeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant316cbc486115cfd54be00264bb11defddd38a6b074e006f901c7f5557d82fbeb.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b7d1a279928056d85b67fc59f6e0436a14f600` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
