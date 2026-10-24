# generalized_implies_base_of_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3224efcd-eb2c-e57f-3f4d-7728033618fe",
  "kind": "theorem",
  "lexical_name": "generalized_implies_base_of_map",
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
  "slug": "generalized-implies-base-of-map--05d074b8b0b3f1047acb0b2a",
  "source": {
    "blob": "5881a2f2caf1aa0b1ec9267376cecb5895327afe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 271,
    "path": "GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05d074b8b0b3f1047acb0b2aeea621942cae149c75b584eb67ab2732851a29c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/DynamicSoficSpectralCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3224efcd-eb2c-e57f-3f4d-7728033618fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generalized_implies_base_of_map
    {Index : Type uIndex}
    {BaseZero : Type uBase}
    {Zero : Index → Type uGen}
    {base : ZeroProblem BaseZero}
    {family : ∀ i, ZeroProblem (Zero i)}
    (i0 : Index)
    (embed : BaseZero → Zero i0)
    (mapsZero : ∀ z,
      base.isZero z → (family i0).isZero (embed z))
    (reflectsCritical : ∀ z,
      base.isZero z →
        (family i0).critical (embed z) →
          base.critical z)
    (hGeneralized : GeneralizedHypothesis family) :
    base.Hypothesis := by
  intro z hz
  exact reflectsCritical z hz
    (hGeneralized i0 (embed z) (mapsZero z hz))

/-- One actual generalized family member containing the base zero problem
supplies the standard generalized-to-base direction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/DynamicSoficSpectralCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5881a2f2caf1aa0b1ec9267376cecb5895327afe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
