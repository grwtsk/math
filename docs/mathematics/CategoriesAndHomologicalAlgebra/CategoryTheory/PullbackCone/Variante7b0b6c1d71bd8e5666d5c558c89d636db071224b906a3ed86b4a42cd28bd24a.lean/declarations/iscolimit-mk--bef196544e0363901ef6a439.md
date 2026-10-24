# IsColimit.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6bf24e38474cdd20f15ce7504d2fad27d760ea40fe59349a069ea3a4ec7cf5e",
  "kind": "def",
  "lexical_name": "IsColimit.mk",
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
  "slug": "iscolimit-mk--bef196544e0363901ef6a439",
  "source": {
    "blob": "9a629703f468e9f0fd327742c0848f310a5675e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 444,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variante7b0b6c1d71bd8e5666d5c558c89d636db071224b906a3ed86b4a42cd28bd24a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bef196544e0363901ef6a4393c93a24796f0321282aa1f2ec90a48861d81de30",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variante7b0b6c1d71bd8e5666d5c558c89d636db071224b906a3ed86b4a42cd28bd24a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6bf24e38474cdd20f15ce7504d2fad27d760ea40fe59349a069ea3a4ec7cf5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsColimit.mk {W : C} {inl : Y ⟶ W} {inr : Z ⟶ W} (eq : f ≫ inl = g ≫ inr)
    (desc : ∀ s : PushoutCocone f g, W ⟶ s.pt)
    (fac_left : ∀ s : PushoutCocone f g, inl ≫ desc s = s.inl)
    (fac_right : ∀ s : PushoutCocone f g, inr ≫ desc s = s.inr)
    (uniq :
      ∀ (s : PushoutCocone f g) (m : W ⟶ s.pt) (_ : inl ≫ m = s.inl) (_ : inr ≫ m = s.inr),
        m = desc s) :
    IsColimit (mk inl inr eq) :=
  isColimitAux _ desc fac_left fac_right fun s m w =>
    uniq s m (w WalkingCospan.left) (w WalkingCospan.right)

/-- The pushout cocone reconstructed using `PushoutCocone.mk` from a pushout cocone that is a
colimit, is also a colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variante7b0b6c1d71bd8e5666d5c558c89d636db071224b906a3ed86b4a42cd28bd24a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variante7b0b6c1d71bd8e5666d5c558c89d636db071224b906a3ed86b4a42cd28bd24a.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a629703f468e9f0fd327742c0848f310a5675e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
