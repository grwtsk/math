# rule_attached_open_residue_theorem_like_not_may_forward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d51419bc99ccf287db36a2bc1137d744f0d3e753",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8a8cd8f-5f11-4b39-85d0-3d94eef9af04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa5fde7a-ecda-f353-f7d0-5699dfc3f2cf",
  "kind": "theorem",
  "lexical_name": "rule_attached_open_residue_theorem_like_not_may_forward",
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
  "slug": "rule-attached-open-residue-theorem-like-not-may-forward--722cea66ab20ec9901dfbda7",
  "source": {
    "blob": "d51419bc99ccf287db36a2bc1137d744f0d3e753",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:722cea66ab20ec9901dfbda77f338035522281d4e3cafc16b9ef3af9bf89b498",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa5fde7a-ecda-f353-f7d0-5699dfc3f2cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rule_attached_open_residue_theorem_like_not_may_forward
    (A : RuleAttachedStatement)
    (_hk : A.statement.kind.isTheoremLike = true)
    (ha : A.statement.authority = AuthorityState.openResidue) :
    ¬ A.mayForward := by
  intro h
  rcases h with ⟨_, hProofSpin⟩
  rcases hProofSpin with ⟨a, haActive, hspin⟩
  have hcheckedOrTrusted :=
    (authority_spin_sector_proof_positive_iff_checked_or_trusted a).mp hspin
  cases hcheckedOrTrusted with
  | inl hc =>
      unfold StatementAuthorityFlipSurface.authorityActive at haActive
      unfold FormalStatementSurface.toFlipSurface at haActive
      rw [ha, hc] at haActive
      simp [singletonAuthorityFlip] at haActive
  | inr ht =>
      unfold StatementAuthorityFlipSurface.authorityActive at haActive
      unfold FormalStatementSurface.toFlipSurface at haActive
      rw [ha, ht] at haActive
      simp [singletonAuthorityFlip] at haActive

/-- Non-default rule migration targets skill invocation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d51419bc99ccf287db36a2bc1137d744f0d3e753` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
