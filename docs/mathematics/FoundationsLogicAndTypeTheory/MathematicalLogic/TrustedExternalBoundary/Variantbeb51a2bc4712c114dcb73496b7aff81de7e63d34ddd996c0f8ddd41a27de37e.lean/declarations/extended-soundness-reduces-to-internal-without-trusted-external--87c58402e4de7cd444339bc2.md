# extended_soundness_reduces_to_internal_without_trusted_external

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c60d49a8ad961fa4b3acabb1a4239bebf80df3b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beb51a2bc4712c114dcb73496b7aff81de7e63d34ddd996c0f8ddd41a27de37e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa3d579f-f4ae-d964-1681-41c9d78bb98d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:037df18f-deb9-3391-7c7a-bd015a1a3eae",
  "kind": "theorem",
  "lexical_name": "extended_soundness_reduces_to_internal_without_trusted_external",
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
  "slug": "extended-soundness-reduces-to-internal-without-trusted-external--87c58402e4de7cd444339bc2",
  "source": {
    "blob": "c60d49a8ad961fa4b3acabb1a4239bebf80df3b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variantbeb51a2bc4712c114dcb73496b7aff81de7e63d34ddd996c0f8ddd41a27de37e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87c58402e4de7cd444339bc2e0b532b8eed5ce1055c404e70df6296eb867a319",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variantbeb51a2bc4712c114dcb73496b7aff81de7e63d34ddd996c0f8ddd41a27de37e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:037df18f-deb9-3391-7c7a-bd015a1a3eae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extended_soundness_reduces_to_internal_without_trusted_external
    (T : TrustedExternalDTT)
    {Γ : T.base.Context}
    {b : T.base.Boundary}
    {q : T.base.Claim Γ b}
    (hNoTrusted :
      ∀ C : T.TrustedExternalFor Γ b q, False)
    (hOwn : T.OwnsExt Γ b q) :
    T.base.Holds q := by
  cases
    extended_ownership_reduces_to_internal_without_trusted_external
      T hNoTrusted hOwn with
  | intro c => exact T.base.certificateSound c

/-!
## Categorical mirror

These theorems restate the trusted-external boundary calculus as subobject
inclusions, mirroring `owns_le_cert_categorical`, `cert_le_holds_categorical`,
`owns_le_holds_by_categorical_logic`, and
`no_direct_crossing_as_empty_subobject` from the base calculus.
-/

/-- Extended-ownership predicate on the total claim index of the base model. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variantbeb51a2bc4712c114dcb73496b7aff81de7e63d34ddd996c0f8ddd41a27de37e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variantbeb51a2bc4712c114dcb73496b7aff81de7e63d34ddd996c0f8ddd41a27de37e.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c60d49a8ad961fa4b3acabb1a4239bebf80df3b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
