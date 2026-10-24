# mk_smul_indicatorConstLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78a6daa7-8bbe-1055-607a-be5ce1bd9152",
  "kind": "theorem",
  "lexical_name": "mk_smul_indicatorConstLp",
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
  "slug": "mk-smul-indicatorconstlp--5f2bfb3651ac212fa0c31ac1",
  "source": {
    "blob": "08eac5c4742aebe6bc53a42576cbac82e877d3ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 62,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f2bfb3651ac212fa0c31ac1aa8d8ab22fc76b64198e29e3bfac53c521f4c0ec",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78a6daa7-8bbe-1055-607a-be5ce1bd9152`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_smul_indicatorConstLp (c : M)
    {s : Set α} (hs : MeasurableSet s) (hμs : μ s ≠ ∞) (b : E) :
    mk c • indicatorConstLp p hs hμs b =
      indicatorConstLp p (hs.preimage <| measurable_const_smul c)
        (by rwa [SMulInvariantMeasure.measure_preimage_smul c hs]) b :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantebd791b4430b47e8d716005228e19913b39b008247aa2fe9f5a70c49128c9dd2.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08eac5c4742aebe6bc53a42576cbac82e877d3ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
