# Functor.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df7cee4b-acb7-b6e7-122a-bf44651d1fb7",
  "kind": "theorem",
  "lexical_name": "Functor.ext",
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
  "slug": "functor-ext--6b676cf9daa5f88eac82afac",
  "source": {
    "blob": "f1b06850dbb204dfb1b0a033aa7342ad21ae293d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b676cf9daa5f88eac82afac1847ecfab138206d92b567a08dc6a6192cd1c5a5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df7cee4b-acb7-b6e7-122a-bf44651d1fb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.ext {F} :
    ∀ {F1 : Functor F} {F2 : Functor F} [@LawfulFunctor F F1] [@LawfulFunctor F F2],
    (∀ (α β) (f : α → β) (x : F α), @Functor.map _ F1 _ _ f x = @Functor.map _ F2 _ _ f x) →
    F1 = F2
  | ⟨m, mc⟩, ⟨m', mc'⟩, H1, H2, H => by
    cases show @m = @m' by funext α β f x; apply H
    congr
    funext α β
    have E1 := @map_const _ ⟨@m, @mc⟩ H1
    have E2 := @map_const _ ⟨@m, @mc'⟩ H2
    exact E1.trans E2.symm

end Functor

/-- Introduce `id` as a quasi-functor. (Note that where a lawful `Monad` or
`Applicative` or `Functor` is needed, `Id` is the correct definition). -/
@[deprecated "Use `pure : α → Id α` instead." (since := "2025-05-21")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b06850dbb204dfb1b0a033aa7342ad21ae293d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
