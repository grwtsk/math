# sourceEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a9b0dbcd6bab5dd218c38dd5407a92ebdc3ef42f99952519113201bf8bcca67",
  "kind": "def",
  "lexical_name": "sourceEquiv",
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
  "slug": "sourceequiv--0b6e552b6c0c408e691bc32a",
  "source": {
    "blob": "3dcce4fdb7b54a16d035b6aa931dfc7ac25b0133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant9db37286b5247e7f410e7074f8f27b573002ffaa7d71516acb58572af4b4e278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b6e552b6c0c408e691bc32aec7361f48bb4a28f53c53d45733f122f6f999960",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant9db37286b5247e7f410e7074f8f27b573002ffaa7d71516acb58572af4b4e278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a9b0dbcd6bab5dd218c38dd5407a92ebdc3ef42f99952519113201bf8bcca67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sourceEquiv
    {Address : Type}
    (codec : SourceCodec Address) :
    CanonicalSource ≃ codec.SourceState where
  toFun source := ⟨codec.encode source, source, rfl⟩
  invFun state := Classical.choose state.property
  left_inv source := by
    apply codec.encode_injective
    exact Classical.choose_spec
      ((show ∃ candidate, codec.encode candidate = codec.encode source from
        ⟨source, rfl⟩))
  right_inv state := by
    apply Subtype.ext
    exact Classical.choose_spec state.property

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant9db37286b5247e7f410e7074f8f27b573002ffaa7d71516acb58572af4b4e278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant9db37286b5247e7f410e7074f8f27b573002ffaa7d71516acb58572af4b4e278.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dcce4fdb7b54a16d035b6aa931dfc7ac25b0133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
