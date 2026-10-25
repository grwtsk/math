# currently_eligible_preserved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:415d86f8-a8f2-3017-977f-8eeb05860262",
  "kind": "theorem",
  "lexical_name": "currently_eligible_preserved",
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
  "slug": "currently-eligible-preserved--464415f55770882f6f035b16",
  "source": {
    "blob": "e3b7396e50342f63b9b5df2b1cb162de4e305a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:464415f55770882f6f035b1649e8ab14b0f11ad544926a500d47e97070a7307f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:415d86f8-a8f2-3017-977f-8eeb05860262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem currently_eligible_preserved
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    {current future : SourceSnapshot Artifact Revision}
    (agreement : SnapshotAgreesOn
      (eligibleReadUnion providers inventory withdrawnProviders withdrawnClaims current)
      current future) :
    eligibleProviders providers inventory withdrawnProviders withdrawnClaims current ⊆
      eligibleProviders providers inventory withdrawnProviders withdrawnClaims future := by
  intro provider admitted
  rcases (mem_eligibleProviders providers inventory withdrawnProviders withdrawnClaims
    current provider).mp admitted with ⟨registered, providerActive, claimActive, fresh⟩
  apply (mem_eligibleProviders providers inventory withdrawnProviders withdrawnClaims
    future provider).mpr
  refine ⟨registered, providerActive, claimActive, ?_⟩
  exact snapshot_agrees_trans fresh
    (provider_read_agreement providers _ agreement admitted)

/-- Transport the actual conditional implication, rather than just its current conclusion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3b7396e50342f63b9b5df2b1cb162de4e305a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
