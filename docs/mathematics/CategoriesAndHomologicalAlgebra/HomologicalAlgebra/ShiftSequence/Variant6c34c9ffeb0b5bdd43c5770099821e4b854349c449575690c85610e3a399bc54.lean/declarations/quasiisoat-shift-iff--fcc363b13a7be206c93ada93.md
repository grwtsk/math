# quasiIsoAt_shift_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c30d43c21d34b65eb720b93a35cf875b605e838e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad6ffc04-a04e-fc18-288b-54c3dfe1bbbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88dc7bd3-a8ec-ae4a-660f-992eff4e8059",
  "kind": "lemma",
  "lexical_name": "quasiIsoAt_shift_iff",
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
  "slug": "quasiisoat-shift-iff--fcc363b13a7be206c93ada93",
  "source": {
    "blob": "c30d43c21d34b65eb720b93a35cf875b605e838e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 129,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcc363b13a7be206c93ada93aa5296c01fa0f82445bef6807e0b531c970e3daa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88dc7bd3-a8ec-ae4a-660f-992eff4e8059`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIsoAt_shift_iff {K L : CochainComplex C ℤ} (φ : K ⟶ L) (n i j : ℤ) (h : n + i = j) :
    QuasiIsoAt (φ⟦n⟧') i ↔ QuasiIsoAt φ j := by
  simp only [quasiIsoAt_iff_isIso_homologyMap]
  exact (NatIso.isIso_map_iff
    ((homologyFunctor C (ComplexShape.up ℤ) 0).shiftIso n i j h) φ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c30d43c21d34b65eb720b93a35cf875b605e838e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
