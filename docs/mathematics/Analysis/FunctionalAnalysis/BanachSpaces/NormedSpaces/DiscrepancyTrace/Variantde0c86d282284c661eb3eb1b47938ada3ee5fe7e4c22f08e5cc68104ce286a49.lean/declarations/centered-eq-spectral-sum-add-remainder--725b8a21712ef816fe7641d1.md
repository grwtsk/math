# centered_eq_spectral_sum_add_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b139de789c489fa15dd0881594b1c165e6988423",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ee47831-5fce-41ef-92c2-7d09fa8f6e48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13fd6471-1683-38a9-ddc0-2d59262566ec",
  "kind": "theorem",
  "lexical_name": "centered_eq_spectral_sum_add_remainder",
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
  "slug": "centered-eq-spectral-sum-add-remainder--725b8a21712ef816fe7641d1",
  "source": {
    "blob": "b139de789c489fa15dd0881594b1c165e6988423",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 93,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:725b8a21712ef816fe7641d18583a4ea8abfe6341f143421718f4a7eb838ef8f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13fd6471-1683-38a9-ddc0-2d59262566ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_eq_spectral_sum_add_remainder
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier)
    (scale : Scale) :
    trace.centeredDiscrepancy scale =
      (∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
        trace.remainder scale := by
  change
    trace.discrepancy scale -
        trace.invariantProjection.project (trace.discrepancy scale) =
      (∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
        trace.remainder scale
  calc
    trace.discrepancy scale -
          trace.invariantProjection.project (trace.discrepancy scale) =
        (trace.invariantProjection.project (trace.discrepancy scale) +
            ((∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
              trace.remainder scale)) -
          trace.invariantProjection.project (trace.discrepancy scale) :=
      congrArg
        (fun value =>
          value -
            trace.invariantProjection.project (trace.discrepancy scale))
        (trace.exact scale)
    _ =
        (∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
          trace.remainder scale := by abel

/-- The centered discrepancy has zero invariant projection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b139de789c489fa15dd0881594b1c165e6988423` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
