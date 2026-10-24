# Measurable.map_prodMk_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d488447d-b3bb-8120-086a-788d21918b7e",
  "kind": "theorem",
  "lexical_name": "Measurable.map_prodMk_left",
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
  "slug": "measurable-map-prodmk-left--fa515f7ebbb520e96ca621a6",
  "source": {
    "blob": "40e0faec880ca5ec0dc3cca09bef3e14d7b48234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 121,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantb9876717908e8aab9b80f0d641f5717a32d8fe5a16d3215096cd4fd4cd64b105.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa515f7ebbb520e96ca621a6cb3197f345bc630f08eda09220a0dd48976cfaeb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variantb9876717908e8aab9b80f0d641f5717a32d8fe5a16d3215096cd4fd4cd64b105.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d488447d-b3bb-8120-086a-788d21918b7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Measurable.map_prodMk_left [SFinite ν] :
    Measurable fun x : α => map (Prod.mk x) ν := by
  apply measurable_of_measurable_coe; intro s hs
  simp_rw [map_apply measurable_prodMk_left hs]
  exact measurable_measure_prodMk_left hs

@[deprecated (since := "2025-03-05")]
alias Measurable.map_prod_mk_left := Measurable.map_prodMk_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantb9876717908e8aab9b80f0d641f5717a32d8fe5a16d3215096cd4fd4cd64b105.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantb9876717908e8aab9b80f0d641f5717a32d8fe5a16d3215096cd4fd4cd64b105.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40e0faec880ca5ec0dc3cca09bef3e14d7b48234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
