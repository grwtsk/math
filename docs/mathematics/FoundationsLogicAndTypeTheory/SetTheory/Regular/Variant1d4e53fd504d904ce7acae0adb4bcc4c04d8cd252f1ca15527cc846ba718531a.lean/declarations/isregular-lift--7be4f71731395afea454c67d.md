# IsRegular.lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73c4a630-e8b9-60ba-3da6-e768a7b46a6b",
  "kind": "lemma",
  "lexical_name": "IsRegular.lift",
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
  "slug": "isregular-lift--7be4f71731395afea454c67d",
  "source": {
    "blob": "d7fc4de252c8a6bc6eff85392daf317bb0f04fc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant1d4e53fd504d904ce7acae0adb4bcc4c04d8cd252f1ca15527cc846ba718531a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7be4f71731395afea454c67d8cad66435049d12f5087d35e8d3c74bf0106208f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant1d4e53fd504d904ce7acae0adb4bcc4c04d8cd252f1ca15527cc846ba718531a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73c4a630-e8b9-60ba-3da6-e768a7b46a6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsRegular.lift {κ : Cardinal.{v}} (h : κ.IsRegular) :
    (Cardinal.lift.{u} κ).IsRegular := by
  obtain ⟨h₁, h₂⟩ := h
  constructor
  · simpa
  · rwa [← Cardinal.lift_ord, ← Ordinal.lift_cof, lift_le]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant1d4e53fd504d904ce7acae0adb4bcc4c04d8cd252f1ca15527cc846ba718531a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant1d4e53fd504d904ce7acae0adb4bcc4c04d8cd252f1ca15527cc846ba718531a.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7fc4de252c8a6bc6eff85392daf317bb0f04fc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
