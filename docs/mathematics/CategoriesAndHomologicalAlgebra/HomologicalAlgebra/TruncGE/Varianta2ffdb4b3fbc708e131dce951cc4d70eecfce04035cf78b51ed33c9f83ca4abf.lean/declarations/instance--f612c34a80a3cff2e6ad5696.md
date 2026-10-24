# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7962c290a76b3b8c01e649b04af9e319cf1e88c074f3ee8e69ec73f85728de31",
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
  "slug": "instance--f612c34a80a3cff2e6ad5696",
  "source": {
    "blob": "a52a44c7a71d2419f996af373f41bd194773a471",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 377,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Varianta2ffdb4b3fbc708e131dce951cc4d70eecfce04035cf78b51ed33c9f83ca4abf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f612c34a80a3cff2e6ad5696d6128442b008af151c03a3b04c328c391fcd6467",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Varianta2ffdb4b3fbc708e131dce951cc4d70eecfce04035cf78b51ed33c9f83ca4abf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7962c290a76b3b8c01e649b04af9e319cf1e88c074f3ee8e69ec73f85728de31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {ι'' : Type*} {c'' : ComplexShape ι''} (e' : c''.Embedding c')
    [K.IsStrictlySupported e'] : (K.truncGE e).IsStrictlySupported e' where
  isZero := by
    intro i' hi'
    by_cases hi'' : ∃ i, e.f i = i'
    · obtain ⟨i, hi⟩ := hi''
      by_cases hi''' : e.BoundaryGE i
      · rw [IsZero.iff_id_eq_zero, ← cancel_epi
          ((K.truncGE' e).extendXIso e hi ≪≫ K.truncGE'XIsoOpcycles e hi hi''').inv,
          ← cancel_epi (HomologicalComplex.pOpcycles _ _)]
        apply (K.isZero_X_of_isStrictlySupported e' i' hi').eq_of_src
      · exact (K.isZero_X_of_isStrictlySupported e' i' hi').of_iso
          ((K.truncGE' e).extendXIso e hi ≪≫ K.truncGE'XIso e hi hi''')
    · exact (K.truncGE e).isZero_X_of_isStrictlySupported e _ (by simpa using hi'')

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Varianta2ffdb4b3fbc708e131dce951cc4d70eecfce04035cf78b51ed33c9f83ca4abf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Varianta2ffdb4b3fbc708e131dce951cc4d70eecfce04035cf78b51ed33c9f83ca4abf.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a52a44c7a71d2419f996af373f41bd194773a471` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
