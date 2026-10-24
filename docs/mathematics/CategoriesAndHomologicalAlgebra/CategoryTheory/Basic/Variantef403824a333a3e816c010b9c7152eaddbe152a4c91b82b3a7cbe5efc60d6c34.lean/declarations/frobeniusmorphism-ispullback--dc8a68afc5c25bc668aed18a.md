# frobeniusMorphism_isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c992809-ef55-851e-71f1-ab6ce614c900",
  "kind": "lemma",
  "lexical_name": "frobeniusMorphism_isPullback",
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
  "slug": "frobeniusmorphism-ispullback--dc8a68afc5c25bc668aed18a",
  "source": {
    "blob": "41d89dde2f167ad0f1ef659bf5948d242a6bfa5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 197,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef403824a333a3e816c010b9c7152eaddbe152a4c91b82b3a7cbe5efc60d6c34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc8a68afc5c25bc668aed18ac36f0a0b8f1604695642b06f2772a23b3de74c7f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef403824a333a3e816c010b9c7152eaddbe152a4c91b82b3a7cbe5efc60d6c34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c992809-ef55-851e-71f1-ab6ce614c900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma frobeniusMorphism_isPullback :
    IsPullback (frobeniusMorphism f A' B')
      ((ofLE _ _ (inf_le_left A' ((Subobject.pullback f).obj B'))))
      ((ofLE _ _ (inf_le_left ((«exists» f).obj A') B')))
      (imageFactorisation _ _).F.e := by
  apply IsPullback.of_right (t := (inf_isPullback ((«exists» f).obj A') B').flip)
    (p := by simp [frobeniusMorphism])
  simpa [frobeniusMorphism, IsPullback.lift_fst, ← imageFactorisation_F_m,
    (isPullback f B').paste_horiz_iff] using
    (inf_isPullback A' ((Subobject.pullback f).obj B')).flip

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef403824a333a3e816c010b9c7152eaddbe152a4c91b82b3a7cbe5efc60d6c34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef403824a333a3e816c010b9c7152eaddbe152a4c91b82b3a7cbe5efc60d6c34.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41d89dde2f167ad0f1ef659bf5948d242a6bfa5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
