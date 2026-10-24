# inTangentCoordinates_eq_mfderiv_comp_abuse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b2c940af734da490e5b0466367ebda12740626e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be5c51b6-5290-45fb-03c4-326477dad319",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e76e9f8-aa81-f2a3-7f66-495052aefcaa",
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
  "slug": "intangentcoordinates-eq-mfderiv-comp-abuse--39ca7ac6497f8c835fe9d19e",
  "source": {
    "blob": "4b2c940af734da490e5b0466367ebda12740626e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 107,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39ca7ac6497f8c835fe9d19e6e91a18436b4b708e317e94a5704da9b7714b937",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e76e9f8-aa81-f2a3-7f66-495052aefcaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–119.

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

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2c940af734da490e5b0466367ebda12740626e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
