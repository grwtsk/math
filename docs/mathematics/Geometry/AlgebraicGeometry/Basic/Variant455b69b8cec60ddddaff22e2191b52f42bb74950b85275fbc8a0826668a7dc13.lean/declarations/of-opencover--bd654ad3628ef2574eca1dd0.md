# of_openCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3b13748-1138-cec1-457c-11b82d4400d6",
  "kind": "lemma",
  "lexical_name": "of_openCover",
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
  "slug": "of-opencover--bd654ad3628ef2574eca1dd0",
  "source": {
    "blob": "ef109d77ea0832b10e22aeb0537c7e22f330f82f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 284,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd654ad3628ef2574eca1dd05a25a9c477ce15c0f8f242994637f5bb76506839",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3b13748-1138-cec1-457c-11b82d4400d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_openCover (H : ∀ i, P (𝒰.f i ≫ f)) : P f := by
  refine of_iSup_eq_top (fun i ↦ (𝒰.f i).opensRange) 𝒰.iSup_opensRange fun i ↦ ?_
  rw [← IsOpenImmersion.isoOfRangeEq_inv_fac (𝒰.f i) (Scheme.Opens.ι _)
    (congr_arg Opens.carrier (𝒰.f i).opensRange.opensRange_ι.symm), Category.assoc,
    P.cancel_left_of_respectsIso]
  exact H i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef109d77ea0832b10e22aeb0537c7e22f330f82f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
