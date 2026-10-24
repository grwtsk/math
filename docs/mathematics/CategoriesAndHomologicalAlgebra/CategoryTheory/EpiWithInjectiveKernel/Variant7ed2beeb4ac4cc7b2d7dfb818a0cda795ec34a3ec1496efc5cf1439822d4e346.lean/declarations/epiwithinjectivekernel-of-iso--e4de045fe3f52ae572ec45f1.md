# epiWithInjectiveKernel_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a969cfb-7038-81cb-4118-2b3f0e1b1d6f",
  "kind": "lemma",
  "lexical_name": "epiWithInjectiveKernel_of_iso",
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
  "slug": "epiwithinjectivekernel-of-iso--e4de045fe3f52ae572ec45f1",
  "source": {
    "blob": "c0287fb8c1747e1e6f28fccbf444e1e016612318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4de045fe3f52ae572ec45f1bc251e2d47bd82ca85a8b048cd8f49f116dc4c29",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a969cfb-7038-81cb-4118-2b3f0e1b1d6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epiWithInjectiveKernel_of_iso {X Y : C} (f : X ⟶ Y) [IsIso f] :
    epiWithInjectiveKernel f := by
  rw [epiWithInjectiveKernel_iff]
  exact ⟨0, inferInstance, 0, by simp,
    ⟨ShortComplex.Splitting.ofIsZeroOfIsIso _ (isZero_zero C) (by dsimp; infer_instance)⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0287fb8c1747e1e6f28fccbf444e1e016612318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
