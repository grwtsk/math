# instIsProbabilityMeasureCondCDF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2221582fe1f5668fb6182cd13e05bc58cd5aa56e33c1874027bb960c3129087",
  "kind": "instance",
  "lexical_name": "instIsProbabilityMeasureCondCDF",
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
  "slug": "instisprobabilitymeasurecondcdf--9933fd65a00a359a9a5509ef",
  "source": {
    "blob": "bd149b39a23f97725d9f6f82209f8dace9845ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 329,
    "path": "GRWTSK/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9933fd65a00a359a9a5509efda39752b75c850aa4d36d345107282c320e9986f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2221582fe1f5668fb6182cd13e05bc58cd5aa56e33c1874027bb960c3129087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsProbabilityMeasureCondCDF (ρ : Measure (α × ℝ)) (a : α) :
    IsProbabilityMeasure (condCDF ρ a).measure :=
  ⟨measure_condCDF_univ ρ a⟩

/-- The function `a ↦ (condCDF ρ a).measure` is measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd149b39a23f97725d9f6f82209f8dace9845ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
