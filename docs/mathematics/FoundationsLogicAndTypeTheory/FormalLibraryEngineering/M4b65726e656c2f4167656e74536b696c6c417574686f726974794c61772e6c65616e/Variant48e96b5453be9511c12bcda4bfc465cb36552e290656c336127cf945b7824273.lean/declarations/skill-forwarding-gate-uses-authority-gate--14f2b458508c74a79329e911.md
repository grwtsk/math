# skill_forwarding_gate_uses_authority_gate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42ead058af3927bdef242c5659878e40c4f7ccc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48e96b5453be9511c12bcda4bfc465cb36552e290656c336127cf945b7824273.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27c1bed3-6564-9841-d2f4-ba58c63c5907",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9552b83-18f6-1820-498a-b7f9b298eebc",
  "kind": "theorem",
  "lexical_name": "skill_forwarding_gate_uses_authority_gate",
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
  "slug": "skill-forwarding-gate-uses-authority-gate--14f2b458508c74a79329e911",
  "source": {
    "blob": "42ead058af3927bdef242c5659878e40c4f7ccc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variant48e96b5453be9511c12bcda4bfc465cb36552e290656c336127cf945b7824273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14f2b458508c74a79329e91175abf63c006a1f30dc36b3d005556e7de66a3e35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variant48e96b5453be9511c12bcda4bfc465cb36552e290656c336127cf945b7824273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9552b83-18f6-1820-498a-b7f9b298eebc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem skill_forwarding_gate_uses_authority_gate
    (S : StatementAuthorityFlipSurface)
    (h : SkillAuthorityMayForward S) :
    ∃ k a,
      S.kindActive k ∧
      S.authorityActive a ∧
      AuthorityGate.theoremAuthorityMayForward
        (AuthorityGate.claimKindOfStatementKind k)
        (AuthorityGate.theoremAuthorityOfAuthorityState a) := by
  rcases h with ⟨hKind, hProof⟩
  rcases hKind with ⟨k, hkTheoremLike, hkActive⟩
  rcases hProof with ⟨a, haActive, hSpin⟩
  have hAuth :=
    (authority_spin_sector_proof_positive_iff_checked_or_trusted a).mp hSpin
  refine ⟨k, a, hkActive, haActive, ?_⟩
  constructor
  · exact AuthorityGate.claim_kind_of_statement_kind_theorem_like hkTheoremLike
  · cases hAuth with
    | inl hChecked =>
        left
        rw [hChecked]
        rfl
    | inr hTrusted =>
        right
        rw [hTrusted]
        rfl

/-- Skill attachment to a statement surface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variant48e96b5453be9511c12bcda4bfc465cb36552e290656c336127cf945b7824273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variant48e96b5453be9511c12bcda4bfc465cb36552e290656c336127cf945b7824273.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42ead058af3927bdef242c5659878e40c4f7ccc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
