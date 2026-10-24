# inTangentCoordinates_eq_mfderiv_comp_abuse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e711c17-90d6-110a-252b-62d9e82e05fe",
  "kind": "lemma",
  "lexical_name": "inTangentCoordinates_eq_mfderiv_comp_abuse",
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
  "slug": "intangentcoordinates-eq-mfderiv-comp-abuse--6a7e7417d623bfe2dfc553f6",
  "source": {
    "blob": "9f3742a281a99612c9bb892f43f93d11308a7a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 115,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a7e7417d623bfe2dfc553f616e2dd32e8876321663f1441f603ead187fbd6d2",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e711c17-90d6-110a-252b-62d9e82e05fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inTangentCoordinates_eq_mfderiv_comp_abuse
    {N : Type*} {f : N → M} {g : N → M'}
    {ϕ : Π x : N, TangentSpace% (f x) →L[𝕜] TangentSpace% (g x)} {x₀ : N} {x : N}
    (hx : f x ∈ (chartAt H (f x₀)).source) (hy : g x ∈ (chartAt H' (g x₀)).source) :
    inTangentCoordinates I I' f g ϕ x₀ x =
      mfderiv% (extChartAt I' (g x₀)) (g x) ∘L (ϕ x) ∘L
      mfderiv[range I] (extChartAt I (f x₀)).symm (extChartAt I (f x₀) (f x)) :=
  inTangentCoordinates_eq_mfderiv_comp hx hy

open Bundle
variable (I) in
/-- The canonical identification between the tangent bundle to the model space and the product,
as a diffeomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f3742a281a99612c9bb892f43f93d11308a7a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
