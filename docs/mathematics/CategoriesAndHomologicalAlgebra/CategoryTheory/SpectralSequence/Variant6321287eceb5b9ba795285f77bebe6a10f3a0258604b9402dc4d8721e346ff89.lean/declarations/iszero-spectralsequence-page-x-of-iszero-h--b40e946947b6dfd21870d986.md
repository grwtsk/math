# isZero_spectralSequence_page_X_of_isZero_H'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac6346d0-287f-5bda-fe95-912b3affb14f",
  "kind": "lemma",
  "lexical_name": "isZero_spectralSequence_page_X_of_isZero_H'",
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
  "slug": "iszero-spectralsequence-page-x-of-iszero-h--b40e946947b6dfd21870d986",
  "source": {
    "blob": "c58cd3a6ccdc358167bdb86c3433f2aa7319ab51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 549,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b40e946947b6dfd21870d98687296583fca50aa95c124e27ee24836bb1ecb58c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac6346d0-287f-5bda-fe95-912b3affb14f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isZero_spectralSequence_page_X_of_isZero_H' (r : ℤ) (hr : r₀ ≤ r) (pq : κ)
    (h : IsZero ((X.H (data.deg pq)).obj (mk₁ (homOfLE (data.le₁₂ pq))))) :
    IsZero (((X.spectralSequence data).page r).X pq) :=
  X.isZero_spectralSequence_page_X_of_isZero_H data r hr pq _ rfl _ _ rfl rfl h

unseal spectralSequence in
/-- The short complex of the `r`th page of the spectral sequence on position `pq'`
identifies to the short complex given by the differentials of the spectral object.
Then, the homology of this short complex can be computed using
`SpectralSequence.dHomologyIso`.
(This only applies in the favourable case when there are `pq` and `pq''` such
that `(c r).Rel pq pq'` and `(c r).Rel pq' pq''` hold.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c58cd3a6ccdc358167bdb86c3433f2aa7319ab51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
