# top_mem_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a328def-fb45-2463-7420-550ebd0a276b",
  "kind": "lemma",
  "lexical_name": "top_mem_range",
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
  "slug": "top-mem-range--f9d60ebd773de3ce854bb8ec",
  "source": {
    "blob": "e3bdc9953f13dbbffdd6cc937da96991022bbb99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9d60ebd773de3ce854bb8ec97e29c67fc086d481b8a18beb6f73b05f2da96dc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a328def-fb45-2463-7420-550ebd0a276b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma top_mem_range (A₀ : Subobject X) {J : Type w} [LinearOrder J] [OrderBot J] [SuccOrder J]
    [WellFoundedLT J] (hJ : HasCardinalLT (Subobject X) (Cardinal.mk J)) :
    ∃ (j : J), transfiniteIterate (largerSubobject hG) j A₀ = ⊤ :=
  top_mem_range_transfiniteIterate (largerSubobject hG) A₀ (lt_largerSubobject hG) (by simp)
    (fun h ↦ by simpa [hasCardinalLT_iff_cardinal_mk_lt] using hJ.of_injective _ h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3bdc9953f13dbbffdd6cc937da96991022bbb99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
