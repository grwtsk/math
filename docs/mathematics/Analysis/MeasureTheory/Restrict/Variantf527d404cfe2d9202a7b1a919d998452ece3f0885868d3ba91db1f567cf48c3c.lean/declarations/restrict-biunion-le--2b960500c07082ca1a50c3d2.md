# restrict_biUnion_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8497464d-865f-df7e-c8a1-1e68852bbf38",
  "kind": "theorem",
  "lexical_name": "restrict_biUnion_le",
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
  "slug": "restrict-biunion-le--2b960500c07082ca1a50c3d2",
  "source": {
    "blob": "586739976534ccc489a1d290abd95e1bf6a55e78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 556,
    "path": "GRWTSK/Analysis/MeasureTheory/Restrict/Variantf527d404cfe2d9202a7b1a919d998452ece3f0885868d3ba91db1f567cf48c3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b960500c07082ca1a50c3d2069670851c36c0be31f1bd90ee8d63a12b7698c0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Restrict/Variantf527d404cfe2d9202a7b1a919d998452ece3f0885868d3ba91db1f567cf48c3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8497464d-865f-df7e-c8a1-1e68852bbf38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_biUnion_le {s : ι → Set α} {T : Set ι} (hT : Countable T) :
    μ.restrict (⋃ i ∈ T, s i) ≤ sum fun (i : T) => μ.restrict (s i) :=
  le_iff.2 fun t ht ↦ by simpa [ht, inter_iUnion] using measure_biUnion_le μ hT (t ∩ s ·)

end Measure

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Restrict/Variantf527d404cfe2d9202a7b1a919d998452ece3f0885868d3ba91db1f567cf48c3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Restrict/Variantf527d404cfe2d9202a7b1a919d998452ece3f0885868d3ba91db1f567cf48c3c.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `586739976534ccc489a1d290abd95e1bf6a55e78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
