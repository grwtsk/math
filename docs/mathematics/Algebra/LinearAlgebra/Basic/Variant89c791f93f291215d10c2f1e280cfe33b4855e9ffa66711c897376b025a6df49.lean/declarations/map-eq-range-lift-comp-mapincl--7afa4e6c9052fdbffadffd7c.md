# map₂_eq_range_lift_comp_mapIncl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85081c27579d700be9047c196d3a8fa6a81a28a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 736,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89c791f93f291215d10c2f1e280cfe33b4855e9ffa66711c897376b025a6df49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02bd8ab2-7818-8aef-6272-42943d2b1165",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6da3fa7-a4e4-fe58-a3d8-f0eb54961c0d",
  "kind": "theorem",
  "lexical_name": "map₂_eq_range_lift_comp_mapIncl",
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
  "slug": "map-eq-range-lift-comp-mapincl--7afa4e6c9052fdbffadffd7c",
  "source": {
    "blob": "85081c27579d700be9047c196d3a8fa6a81a28a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 747,
    "line": 736,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant89c791f93f291215d10c2f1e280cfe33b4855e9ffa66711c897376b025a6df49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7afa4e6c9052fdbffadffd7c814dc0bbc32f57027ff01d66d241fda8a6c32628",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant89c791f93f291215d10c2f1e280cfe33b4855e9ffa66711c897376b025a6df49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6da3fa7-a4e4-fe58-a3d8-f0eb54961c0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–747.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map₂_eq_range_lift_comp_mapIncl (f : P →ₗ[R] Q →ₗ[R] M)
    (p : Submodule R P) (q : Submodule R Q) :
    Submodule.map₂ f p q = LinearMap.range (lift f ∘ₗ mapIncl p q) := by
  simp_rw [LinearMap.range_comp, range_mapIncl, Submodule.map_span,
    Set.image_image2, Submodule.map₂_eq_span_image2, lift.tmul]

section

variable {P' Q' : Type*}
variable [AddCommMonoid P'] [Module R P']
variable [AddCommMonoid Q'] [Module R Q']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant89c791f93f291215d10c2f1e280cfe33b4855e9ffa66711c897376b025a6df49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant89c791f93f291215d10c2f1e280cfe33b4855e9ffa66711c897376b025a6df49.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85081c27579d700be9047c196d3a8fa6a81a28a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
