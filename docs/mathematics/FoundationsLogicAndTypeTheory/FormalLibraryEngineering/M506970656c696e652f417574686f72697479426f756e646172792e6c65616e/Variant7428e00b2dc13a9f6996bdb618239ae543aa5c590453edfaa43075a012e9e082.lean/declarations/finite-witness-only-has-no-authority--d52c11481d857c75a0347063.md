# finite_witness_only_has_no_authority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6168ccf-0bc8-a3f5-3b6f-3f1c4aad24ee",
  "kind": "theorem",
  "lexical_name": "finite_witness_only_has_no_authority",
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
  "slug": "finite-witness-only-has-no-authority--d52c11481d857c75a0347063",
  "source": {
    "blob": "2a280c29cf7cfe1f3aa93f91e2b0e3729104270a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f417574686f72697479426f756e646172792e6c65616e/Variant7428e00b2dc13a9f6996bdb618239ae543aa5c590453edfaa43075a012e9e082.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d52c11481d857c75a0347063323c891a65865635a1cd6d06d25d63b475ade9da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f417574686f72697479426f756e646172792e6c65616e/Variant7428e00b2dc13a9f6996bdb618239ae543aa5c590453edfaa43075a012e9e082.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6168ccf-0bc8-a3f5-3b6f-3f1c4aad24ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_witness_only_has_no_authority
    (checkedProofImported externalHypothesesDischarged : Bool) :
    Not (Authority
      { status := .finite_witness_only,
        checkedProofImported := checkedProofImported,
        externalHypothesesDischarged := externalHypothesesDischarged }) := by
  intro hAuthority
  cases hAuthority with
  | inl hChecked =>
      cases hChecked.left
  | inr hExternal =>
      cases hExternal.left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f417574686f72697479426f756e646172792e6c65616e/Variant7428e00b2dc13a9f6996bdb618239ae543aa5c590453edfaa43075a012e9e082.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f417574686f72697479426f756e646172792e6c65616e/Variant7428e00b2dc13a9f6996bdb618239ae543aa5c590453edfaa43075a012e9e082.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a280c29cf7cfe1f3aa93f91e2b0e3729104270a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
