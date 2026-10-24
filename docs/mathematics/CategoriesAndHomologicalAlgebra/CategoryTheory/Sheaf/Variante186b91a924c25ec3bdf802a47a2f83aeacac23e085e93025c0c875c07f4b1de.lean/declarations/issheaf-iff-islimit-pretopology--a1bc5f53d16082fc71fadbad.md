# isSheaf_iff_isLimit_pretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "641ee8ef3e6d50a25451d92da7942af3292fa026",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e186b91a924c25ec3bdf802a47a2f83aeacac23e085e93025c0c875c07f4b1de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc1905e3-c51f-f9e8-33df-e69a8992691e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8643f790-a062-b051-2fcb-4d81d47a2014",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isLimit_pretopology",
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
  "slug": "issheaf-iff-islimit-pretopology--a1bc5f53d16082fc71fadbad",
  "source": {
    "blob": "641ee8ef3e6d50a25451d92da7942af3292fa026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante186b91a924c25ec3bdf802a47a2f83aeacac23e085e93025c0c875c07f4b1de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1bc5f53d16082fc71fadbadd461d807685a7532eafd004ef0cdd89919657f06",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante186b91a924c25ec3bdf802a47a2f83aeacac23e085e93025c0c875c07f4b1de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8643f790-a062-b051-2fcb-4d81d47a2014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_isLimit_pretopology [HasPullbacks C] (K : Pretopology C) :
    IsSheaf K.toGrothendieck P ↔
      ∀ ⦃X : C⦄ (R : Presieve X),
        R ∈ K X → Nonempty (IsLimit (P.mapCone (generate R).arrows.cocone.op)) := by
  dsimp [IsSheaf]
  simp_rw [isSheaf_pretopology]
  exact
    ⟨fun h X R hR => (isLimit_iff_isSheafFor_presieve P R).2 fun E => h E.unop R hR,
      fun h E X R hR => (isLimit_iff_isSheafFor_presieve P R).1 (h R hR) (op E)⟩

end LimitSheafCondition

variable {J}

/-- This is a wrapper around `Presieve.IsSheafFor.amalgamate` to be used below.
  If `P` is a sheaf, `S` is a cover of `X`, and `x` is a collection of morphisms from `E`
  to `P` evaluated at terms in the cover which are compatible, then we can amalgamate
  the `x`s to obtain a single morphism `E ⟶ P.obj (op X)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante186b91a924c25ec3bdf802a47a2f83aeacac23e085e93025c0c875c07f4b1de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante186b91a924c25ec3bdf802a47a2f83aeacac23e085e93025c0c875c07f4b1de.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `641ee8ef3e6d50a25451d92da7942af3292fa026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
