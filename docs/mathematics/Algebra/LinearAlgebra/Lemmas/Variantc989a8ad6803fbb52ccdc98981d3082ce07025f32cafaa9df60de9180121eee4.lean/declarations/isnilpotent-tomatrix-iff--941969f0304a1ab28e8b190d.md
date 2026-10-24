# isNilpotent_toMatrix_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:735f8297-aef0-55a5-0982-a2339bd3669d",
  "kind": "lemma",
  "lexical_name": "isNilpotent_toMatrix_iff",
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
  "slug": "isnilpotent-tomatrix-iff--941969f0304a1ab28e8b190d",
  "source": {
    "blob": "e77e36673d637a4c3f4a75b36ee1f8ea59cff7bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantc989a8ad6803fbb52ccdc98981d3082ce07025f32cafaa9df60de9180121eee4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:941969f0304a1ab28e8b190ddf203b2c5f609084bc1a163aa95cc2e78cf3f7f3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variantc989a8ad6803fbb52ccdc98981d3082ce07025f32cafaa9df60de9180121eee4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:735f8297-aef0-55a5-0982-a2339bd3669d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNilpotent_toMatrix_iff (b : Basis ι R M) (f : M →ₗ[R] M) :
    IsNilpotent (toMatrix b b f) ↔ IsNilpotent f := by
  refine exists_congr fun k ↦ ?_
  rw [toMatrix_pow]
  exact (toMatrix b b).map_eq_zero_iff

end LinearMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variantc989a8ad6803fbb52ccdc98981d3082ce07025f32cafaa9df60de9180121eee4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantc989a8ad6803fbb52ccdc98981d3082ce07025f32cafaa9df60de9180121eee4.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e77e36673d637a4c3f4a75b36ee1f8ea59cff7bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
