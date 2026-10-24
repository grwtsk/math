# isPushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:791802b0-a9e1-e1d8-220a-8b3581f064e1",
  "kind": "lemma",
  "lexical_name": "isPushout",
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
  "slug": "ispushout--86623b85d5a57af0de0356df",
  "source": {
    "blob": "7bd3038dbf5830aad08091fdb40eb859cdee4721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MultiequalizerPullback/Variant4f8ea20888ad1308c43df578b07d05192ab5cd1dfb0598a52c42f2b399f72830.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86623b85d5a57af0de0356df6ee93a1c8729b201e7ffc95eb2ef5b2d93018223",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MultiequalizerPullback/Variant4f8ea20888ad1308c43df578b07d05192ab5cd1dfb0598a52c42f2b399f72830.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:791802b0-a9e1-e1d8-220a-8b3581f064e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPushout (hc : IsColimit c) :
    IsPushout (I.fst default) (I.snd default) (c.π (J.fst default)) (c.π (J.snd default)) where
  w := c.condition _
  isColimit' := ⟨PushoutCocone.IsColimit.mk _
    (fun s ↦ hc.desc (isPushout.multicofork h h' s))
    (fun s ↦ by simpa using! hc.fac (isPushout.multicofork h h' s) (.right (J.fst default)))
    (fun s ↦ by simpa using! hc.fac (isPushout.multicofork h h' s) (.right (J.snd default)))
    (fun s m h₁ h₂ ↦ by
      apply Multicofork.IsColimit.hom_ext hc
      intro k
      have := h.symm.le (Set.mem_univ k)
      push _ ∈ _ at this
      obtain rfl | rfl := this
      · simpa [h₁] using! (hc.fac (isPushout.multicofork h h' s) (.right (J.fst default))).symm
      · simpa [h₂] using! (hc.fac (isPushout.multicofork h h' s) (.right (J.snd default))).symm)⟩

end CategoryTheory.Limits.Multicofork.IsColimit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MultiequalizerPullback/Variant4f8ea20888ad1308c43df578b07d05192ab5cd1dfb0598a52c42f2b399f72830.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MultiequalizerPullback/Variant4f8ea20888ad1308c43df578b07d05192ab5cd1dfb0598a52c42f2b399f72830.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bd3038dbf5830aad08091fdb40eb859cdee4721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
