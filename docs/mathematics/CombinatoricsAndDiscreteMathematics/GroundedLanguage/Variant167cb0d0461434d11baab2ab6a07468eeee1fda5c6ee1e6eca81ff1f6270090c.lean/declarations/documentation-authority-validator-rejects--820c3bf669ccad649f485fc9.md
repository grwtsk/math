# documentation_authority_validator_rejects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46de24914dd25f20832dd0f05bfedd260246ffcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 659,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/167cb0d0461434d11baab2ab6a07468eeee1fda5c6ee1e6eca81ff1f6270090c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00dfc190-1a27-b07a-6282-3f9626c90fc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5c13e0a-7a13-c414-b357-3dbc96be4695",
  "kind": "theorem",
  "lexical_name": "documentation_authority_validator_rejects",
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
  "slug": "documentation-authority-validator-rejects--820c3bf669ccad649f485fc9",
  "source": {
    "blob": "46de24914dd25f20832dd0f05bfedd260246ffcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 659,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GroundedLanguage/Variant167cb0d0461434d11baab2ab6a07468eeee1fda5c6ee1e6eca81ff1f6270090c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:820c3bf669ccad649f485fc92181f0e4852ca308be1718d0eee2221e5bd9e1bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GroundedLanguage/Variant167cb0d0461434d11baab2ab6a07468eeee1fda5c6ee1e6eca81ff1f6270090c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5c13e0a-7a13-c414-b357-3dbc96be4695`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem documentation_authority_validator_rejects :
    ValidatorRejects documentationContext (assertionWith validClaim) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim
      documentationContext validClaim accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq documentationContext validClaim checked
    have lookup := checked.sourceLookup
    rw [claimEq] at lookup
    have sourceEq : checked.source = generalSource := by
      simpa [documentationContext, validClaim, validBinding, theoremId]
        using (Option.some.inj lookup).symm
    have sourceMatchesManifest := checked.sourceMatchesManifest
    rw [sourceEq] at sourceMatchesManifest
    exact documentation_cannot_supply_kernel_checked_authority
      sourceMatchesManifest)

/-- Rejected preconditions cannot be hidden behind a Boolean success value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GroundedLanguage/Variant167cb0d0461434d11baab2ab6a07468eeee1fda5c6ee1e6eca81ff1f6270090c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GroundedLanguage/Variant167cb0d0461434d11baab2ab6a07468eeee1fda5c6ee1e6eca81ff1f6270090c.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46de24914dd25f20832dd0f05bfedd260246ffcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
