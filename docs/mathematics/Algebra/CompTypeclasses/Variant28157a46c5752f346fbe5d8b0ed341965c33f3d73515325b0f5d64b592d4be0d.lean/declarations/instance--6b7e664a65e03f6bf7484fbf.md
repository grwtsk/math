# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3170907a7c00ba13fe5b2131807ddd061cb5aaac4e698edce537e55fd342494",
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
  "slug": "instance--6b7e664a65e03f6bf7484fbf",
  "source": {
    "blob": "6cc6b51a4b9d33f49ab0b49a7249dfb58a3662ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 162,
    "path": "GRWTSK/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b7e664a65e03f6bf7484fbf1024a48cf80e6faf35fc004c74c6ee139c0a84ba",
  "verification": {
    "reference": "docs/verification/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3170907a7c00ba13fe5b2131807ddd061cb5aaac4e698edce537e55fd342494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) invPair {σ₁ : R₁ →+* R₂} {σ₂ : R₂ →+* R₁} [RingHomInvPair σ₁ σ₂] :
    RingHomSurjective σ₁ :=
  ⟨fun x => ⟨σ₂ x, RingHomInvPair.comp_apply_eq₂⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CompTypeclasses/Variant28157a46c5752f346fbe5d8b0ed341965c33f3d73515325b0f5d64b592d4be0d.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cc6b51a4b9d33f49ab0b49a7249dfb58a3662ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
