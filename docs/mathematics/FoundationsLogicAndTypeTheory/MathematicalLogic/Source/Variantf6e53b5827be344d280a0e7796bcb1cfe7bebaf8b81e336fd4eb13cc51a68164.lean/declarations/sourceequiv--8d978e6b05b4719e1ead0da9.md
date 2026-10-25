# sourceEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2c8b5580a7d8b778459657ff1f73fa1cf85bac2d1151252edc17301a133cf66",
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
  "slug": "sourceequiv--8d978e6b05b4719e1ead0da9",
  "source": {
    "blob": "553ab5df0ace9944033341d97ad7ed539c5bc8e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d978e6b05b4719e1ead0da9b3a40840fc2dd0b5e16e1c411a681dad26cb57f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2c8b5580a7d8b778459657ff1f73fa1cf85bac2d1151252edc17301a133cf66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–144.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553ab5df0ace9944033341d97ad7ed539c5bc8e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
