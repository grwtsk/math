# Lifting₃.bifunctorComp₁₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98c6a1b716574a9d0da4e074c4e94e16ea60f1904a27d6affdec6df1f0ec09cb",
  "kind": "def",
  "lexical_name": "Lifting₃.bifunctorComp₁₂",
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
  "slug": "lifting-bifunctorcomp--38b5c60c905465f4736a7d7f",
  "source": {
    "blob": "782b08c753808783d23dc27ffd4bd5b1f6deeb1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 171,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38b5c60c905465f4736a7d7f558343de83899eb539988d3c785a675548e9c248",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98c6a1b716574a9d0da4e074c4e94e16ea60f1904a27d6affdec6df1f0ec09cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Lifting₃.bifunctorComp₁₂ :
    Lifting₃ L₁ L₂ L₃ W₁ W₂ W₃
      ((Functor.postcompose₃.obj L).obj (bifunctorComp₁₂ F₁₂ G))
      (bifunctorComp₁₂ F₁₂' G') where
  iso' :=
    ((whiskeringRight C₁ _ _).obj
      ((whiskeringRight C₂ _ _).obj ((whiskeringLeft _ _ D).obj L₃))).mapIso
        ((bifunctorComp₁₂Functor.mapIso
          (Lifting₂.iso L₁ L₂ W₁ W₂ (F₁₂ ⋙ (whiskeringRight _ _ _).obj L₁₂) F₁₂')).app G') ≪≫
        (bifunctorComp₁₂Functor.obj F₁₂).mapIso
          (Lifting₂.iso L₁₂ L₃ W₁₂ W₃ (G ⋙ (whiskeringRight _ _ _).obj L) G')

/-- The construction `bifunctorComp₂₃` of a trifunctor by composition of bifunctors
is compatible with localization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `782b08c753808783d23dc27ffd4bd5b1f6deeb1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
