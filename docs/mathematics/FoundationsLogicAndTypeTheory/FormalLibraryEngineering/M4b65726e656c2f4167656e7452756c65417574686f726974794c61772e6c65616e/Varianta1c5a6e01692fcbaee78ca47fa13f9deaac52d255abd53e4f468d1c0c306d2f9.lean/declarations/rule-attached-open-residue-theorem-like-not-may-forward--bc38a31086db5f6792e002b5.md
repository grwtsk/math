# rule_attached_open_residue_theorem_like_not_may_forward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0de5cce8-5b62-d81d-dbf7-4863885b525e",
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
  "slug": "rule-attached-open-residue-theorem-like-not-may-forward--bc38a31086db5f6792e002b5",
  "source": {
    "blob": "f904bb66a5e19cbdec5226624a55115bdd877092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Varianta1c5a6e01692fcbaee78ca47fa13f9deaac52d255abd53e4f468d1c0c306d2f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc38a31086db5f6792e002b59679b6601542f9d2a84d47a7e71e8fe699fa091c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Varianta1c5a6e01692fcbaee78ca47fa13f9deaac52d255abd53e4f468d1c0c306d2f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0de5cce8-5b62-d81d-dbf7-4863885b525e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–204.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Varianta1c5a6e01692fcbaee78ca47fa13f9deaac52d255abd53e4f468d1c0c306d2f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Varianta1c5a6e01692fcbaee78ca47fa13f9deaac52d255abd53e4f468d1c0c306d2f9.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f904bb66a5e19cbdec5226624a55115bdd877092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
