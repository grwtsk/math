# documentation_authority_validator_rejects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:916f779a-0423-98e9-3faf-ee4008159a33",
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
  "slug": "documentation-authority-validator-rejects--2802b6230445a0af8f83d419",
  "source": {
    "blob": "627bb61a090224aee7e532fa94ef85ddfe977ba9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 667,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GroundedLanguage/Variant877b5ee53ff49265c2b8aec701e9a966ada2f3d14348061fbed71c73dff66c92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2802b6230445a0af8f83d419d56943d3d44b30d1b0468fd16af0d475519bd8ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GroundedLanguage/Variant877b5ee53ff49265c2b8aec701e9a966ada2f3d14348061fbed71c73dff66c92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:916f779a-0423-98e9-3faf-ee4008159a33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–684.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GroundedLanguage/Variant877b5ee53ff49265c2b8aec701e9a966ada2f3d14348061fbed71c73dff66c92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GroundedLanguage/Variant877b5ee53ff49265c2b8aec701e9a966ada2f3d14348061fbed71c73dff66c92.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `627bb61a090224aee7e532fa94ef85ddfe977ba9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
