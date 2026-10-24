# quotient_mk_eq_iff_isNull_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b07157ef276b598f2706b39a3cede03555927b3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dda5c162-a55c-4c7c-e45e-23b5f34b54cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9484c4f3-1e1d-a8c0-1a1d-a5bdf1eb96f0",
  "kind": "theorem",
  "lexical_name": "quotient_mk_eq_iff_isNull_sub",
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
  "slug": "quotient-mk-eq-iff-isnull-sub--d35704b08fdf25d553b820bb",
  "source": {
    "blob": "b07157ef276b598f2706b39a3cede03555927b3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 205,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d35704b08fdf25d553b820bbd3cffa58849f9a6f529dd61abb3041faa7ce63e8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9484c4f3-1e1d-a8c0-1a1d-a5bdf1eb96f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient_mk_eq_iff_isNull_sub (feature : V →ₗ[ℝ] (I → ℝ))
    (weight : I → ℝ) (hw : ∀ i, 0 < weight i) (x y : V) :
    (Submodule.Quotient.mk x : NullQuotient feature) = Submodule.Quotient.mk y ↔
      (featureForm feature weight (fun i => (hw i).le)).IsNull (x - y) := by
  rw [quotient_mk_eq_iff, featureForm_isNull_iff _ weight hw, LinearMap.mem_ker,
    map_sub, sub_eq_zero]

end Finite

/-- A rank-one realization that retains the first coordinate and forgets the second. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b07157ef276b598f2706b39a3cede03555927b3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
