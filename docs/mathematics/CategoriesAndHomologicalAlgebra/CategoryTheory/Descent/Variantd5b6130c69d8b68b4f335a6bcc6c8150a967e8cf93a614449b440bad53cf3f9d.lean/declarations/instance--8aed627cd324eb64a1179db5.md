# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e648a5000bc7bec80136a127c212666dada44397a6804fabdd53017a38698a6f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8aed627cd324eb64a1179db5",
  "source": {
    "blob": "8d4d1285701f7f6c255d8aaf048285b1cdbcc3ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 149,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantd5b6130c69d8b68b4f335a6bcc6c8150a967e8cf93a614449b440bad53cf3f9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8aed627cd324eb64a1179db51ae17a4cb5ba18fbe0a66617c83e7b200a7752a5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantd5b6130c69d8b68b4f335a6bcc6c8150a967e8cf93a614449b440bad53cf3f9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e648a5000bc7bec80136a127c212666dada44397a6804fabdd53017a38698a6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Q.IsStableUnderCobaseChange] [P.HasOfPostcompProperty Q] [P.RespectsLeft Q] :
    P.CodescendsAlong Q where
  of_isPushout {X Y Z A f g inl inr} h hf hinl := by
    apply P.of_postcomp (W' := Q) g inr (Q.of_isPushout h.flip hf)
    rw [← h.1.1]
    exact RespectsLeft.precomp _ hf _ hinl

end CodescendsAlong

end CategoryTheory.MorphismProperty
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantd5b6130c69d8b68b4f335a6bcc6c8150a967e8cf93a614449b440bad53cf3f9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantd5b6130c69d8b68b4f335a6bcc6c8150a967e8cf93a614449b440bad53cf3f9d.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4d1285701f7f6c255d8aaf048285b1cdbcc3ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
