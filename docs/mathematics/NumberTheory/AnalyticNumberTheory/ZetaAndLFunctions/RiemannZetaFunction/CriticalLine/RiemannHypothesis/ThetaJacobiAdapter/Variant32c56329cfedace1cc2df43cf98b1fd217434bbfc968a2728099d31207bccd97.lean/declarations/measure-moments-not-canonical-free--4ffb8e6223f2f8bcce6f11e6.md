# measure_moments_not_canonical_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9a2e1c84b9c549ce04477c6829328c1d99ec7e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be279827-88c4-ed6b-d04d-8054bd38c4d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4ea2d7a-8658-2dd1-d2fe-05b47130fa32",
  "kind": "theorem",
  "lexical_name": "measure_moments_not_canonical_free",
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
  "slug": "measure-moments-not-canonical-free--4ffb8e6223f2f8bcce6f11e6",
  "source": {
    "blob": "e9a2e1c84b9c549ce04477c6829328c1d99ec7e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 144,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ffb8e6223f2f8bcce6f11e6a78efca4101e1daec4d95c57799aa69ae35b83bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4ea2d7a-8658-2dd1-d2fe-05b47130fa32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_moments_not_canonical_free (μ : Measure ℝ)
    (hnonneg : ∀ᵐ x ∂μ, 0 ≤ x) (hint : Integrable (fun x : ℝ => x) μ)
    (hmass : 0 < μ (Set.Ioi 0)) :
    measureMagnitudeMoment μ ≠ CatalanJacobi.cyclicCoefficient (R := ℝ) :=
  first_moment_obstructs_transport _ _
    (measure_first_moment_positive_of_positive_support μ hnonneg hint hmass).ne'
    CatalanJacobi.cyclicCoefficient_one

end MeasureMagnitude

section SignedGeometry

variable {V : Type u} [AddCommGroup V] [Module ℝ V]

/-- The signed involution form is a difference of sector energies.  This
reuses the accepted Positive Atlas projector API and retains both signs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9a2e1c84b9c549ce04477c6829328c1d99ec7e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
