# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1594f4e499ac8dfd6711dee8b22d96ea566c62bb5af4c53895270345cc85d38",
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
  "slug": "instance--cf8a5c68fd89db790e5fd26b",
  "source": {
    "blob": "f49ce26938516267618aa6740828c0bed4fcf503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6fa8e095aa7543dd8541dc093f223c1e737e6860ae73c4cfa8cc158b8adec5e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf8a5c68fd89db790e5fd26b957a8a75675054f915b27f430a538b09c25b69cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6fa8e095aa7543dd8541dc093f223c1e737e6860ae73c4cfa8cc158b8adec5e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1594f4e499ac8dfd6711dee8b22d96ea566c62bb5af4c53895270345cc85d38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LawfulMonad (Sum.{v, u} e) where
  seqRight_eq := by
    intros
    casesm Sum _ _ <;> casesm Sum _ _ <;> rfl
  seqLeft_eq := by
    intros
    casesm Sum _ _ <;> rfl
  pure_seq := by
    intros
    rfl
  bind_assoc := by
    intros
    casesm Sum _ _ <;> rfl
  pure_bind := by
    intros
    rfl
  bind_pure_comp := by
    intros
    casesm Sum _ _ <;> rfl
  bind_map := by
    intros
    casesm Sum _ _ <;> rfl

end Sum

/-- A `CommApplicative` functor `m` is a (lawful) applicative functor which behaves identically on
`α × β` and `β × α`, so computations can occur in either order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6fa8e095aa7543dd8541dc093f223c1e737e6860ae73c4cfa8cc158b8adec5e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6fa8e095aa7543dd8541dc093f223c1e737e6860ae73c4cfa8cc158b8adec5e7.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f49ce26938516267618aa6740828c0bed4fcf503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
