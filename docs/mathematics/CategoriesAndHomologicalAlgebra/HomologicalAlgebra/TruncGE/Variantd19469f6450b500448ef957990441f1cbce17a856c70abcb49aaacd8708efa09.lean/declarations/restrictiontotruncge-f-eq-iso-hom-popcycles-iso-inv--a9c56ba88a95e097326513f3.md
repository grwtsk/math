# restrictionToTruncGE'_f_eq_iso_hom_pOpcycles_iso_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "658752c0a0e469fe5e8f28dc89f5dd437e94ee3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d19469f6450b500448ef957990441f1cbce17a856c70abcb49aaacd8708efa09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32a42eaa-5ab7-323a-1517-eb411b865d63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ab20ba0-f83d-403b-9c69-438ffa7d10af",
  "kind": "lemma",
  "lexical_name": "restrictionToTruncGE'_f_eq_iso_hom_pOpcycles_iso_inv",
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
  "slug": "restrictiontotruncge-f-eq-iso-hom-popcycles-iso-inv--a9c56ba88a95e097326513f3",
  "source": {
    "blob": "658752c0a0e469fe5e8f28dc89f5dd437e94ee3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 275,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantd19469f6450b500448ef957990441f1cbce17a856c70abcb49aaacd8708efa09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9c56ba88a95e097326513f36aa27f2206429fd452d322757ce09869bd46b584",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantd19469f6450b500448ef957990441f1cbce17a856c70abcb49aaacd8708efa09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ab20ba0-f83d-403b-9c69-438ffa7d10af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrictionToTruncGE'_f_eq_iso_hom_pOpcycles_iso_inv
    {i : ι} {i' : ι'} (hi' : e.f i = i') (hi : e.BoundaryGE i) :
    (K.restrictionToTruncGE' e).f i = (K.restrictionXIso e hi').hom ≫ K.pOpcycles i' ≫
      (K.truncGE'XIsoOpcycles e hi' hi).inv := by
  apply restrictionToTruncGE'.f_eq_iso_hom_pOpcycles_iso_inv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantd19469f6450b500448ef957990441f1cbce17a856c70abcb49aaacd8708efa09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantd19469f6450b500448ef957990441f1cbce17a856c70abcb49aaacd8708efa09.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `658752c0a0e469fe5e8f28dc89f5dd437e94ee3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
