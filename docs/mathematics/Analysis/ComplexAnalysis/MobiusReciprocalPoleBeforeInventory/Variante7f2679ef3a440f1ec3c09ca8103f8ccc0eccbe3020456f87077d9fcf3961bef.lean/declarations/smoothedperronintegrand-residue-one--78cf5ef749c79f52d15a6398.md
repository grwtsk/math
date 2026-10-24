# smoothedPerronIntegrand_residue_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64cbf5c2-7e6b-eb48-6bc5-eaf3d499e63a",
  "kind": "theorem",
  "lexical_name": "smoothedPerronIntegrand_residue_one",
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
  "slug": "smoothedperronintegrand-residue-one--78cf5ef749c79f52d15a6398",
  "source": {
    "blob": "6826f7f782ecaac32a2d0115b03eb28d122b620c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 153,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78cf5ef749c79f52d15a63984f0a8959537abaab010b57718e42214510c573b5",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64cbf5c2-7e6b-eb48-6bc5-eaf3d499e63a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothedPerronIntegrand_residue_one (x : ℝ) (hx : 0 < x) :
    residue (smoothedPerronIntegrand x) 0 = 1 := by
  apply residue_eq_of_tendsto
  simpa only [sub_zero] using smoothedPerronIntegrand_residue_limit x hx

end
end FormalResearch.RiemannHypothesis.SourceComparison.MobiusReciprocalPole
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variante7f2679ef3a440f1ec3c09ca8103f8ccc0eccbe3020456f87077d9fcf3961bef.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6826f7f782ecaac32a2d0115b03eb28d122b620c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
