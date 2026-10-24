# square_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9ed5bbf-c9cb-2002-10fb-a5b02fb36c38",
  "kind": "lemma",
  "lexical_name": "square_mem_nhds",
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
  "slug": "square-mem-nhds--e65eeb8b9631c5cd8e273cb5",
  "source": {
    "blob": "d971531011e9bebf102f5920b76d60d72bdd4f96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 273,
    "path": "GRWTSK/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e65eeb8b9631c5cd8e273cb5c6d57d74e87e109f8482d06bf00ca1fd86865ffe",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9ed5bbf-c9cb-2002-10fb-a5b02fb36c38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma square_mem_nhds (p : ℂ) {c : ℝ} (hc : c ≠ 0) :
    Square p c ∈ 𝓝 p := by
  wlog hc_pos : 0 < c generalizing c with h
  · rw [← square_neg]
    exact h (neg_ne_zero.mpr hc) <| neg_pos.mpr <| hc.lt_of_le <| not_lt.mp hc_pos
  exact (nhds_hasBasis_square p).mem_of_mem hc_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d971531011e9bebf102f5920b76d60d72bdd4f96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
