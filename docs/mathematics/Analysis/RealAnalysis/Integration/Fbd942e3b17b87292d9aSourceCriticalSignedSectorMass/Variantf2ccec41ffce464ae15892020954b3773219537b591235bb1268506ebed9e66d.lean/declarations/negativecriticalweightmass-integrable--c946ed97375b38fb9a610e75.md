# negativeCriticalWeightMass_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de4c59ba-2587-a2c2-76f8-8b985bea8c9a",
  "kind": "theorem",
  "lexical_name": "negativeCriticalWeightMass_integrable",
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
  "slug": "negativecriticalweightmass-integrable--c946ed97375b38fb9a610e75",
  "source": {
    "blob": "b18c1ad614f06b8009820f7e3f999a0a90715020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Fbd942e3b17b87292d9aSourceCriticalSignedSectorMass/Variantf2ccec41ffce464ae15892020954b3773219537b591235bb1268506ebed9e66d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c946ed97375b38fb9a610e75005ba1dc3c49cb527754f57c9c565609c5528be6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Fbd942e3b17b87292d9aSourceCriticalSignedSectorMass/Variantf2ccec41ffce464ae15892020954b3773219537b591235bb1268506ebed9e66d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de4c59ba-2587-a2c2-76f8-8b985bea8c9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeCriticalWeightMass_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun t => max (-baselineLogKernel A t) 0) (Ioi (0 : ℝ)) :=
  (baselineLogKernel_integrable hA).neg_part

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Fbd942e3b17b87292d9aSourceCriticalSignedSectorMass/Variantf2ccec41ffce464ae15892020954b3773219537b591235bb1268506ebed9e66d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Fbd942e3b17b87292d9aSourceCriticalSignedSectorMass/Variantf2ccec41ffce464ae15892020954b3773219537b591235bb1268506ebed9e66d.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b18c1ad614f06b8009820f7e3f999a0a90715020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
