# enhancedCarrierBalanceSound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c40ec08e-b3e5-32d4-1d1a-4903b00d8fa8",
  "kind": "theorem",
  "lexical_name": "enhancedCarrierBalanceSound",
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
  "slug": "enhancedcarrierbalancesound--8c9fcadee744c31ec2780ff0",
  "source": {
    "blob": "5859cb5cfc69111ebc20ccd94fb5005fa5be8309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f5363617474657265644d616361756c61792e6c65616e/Variantd841bbaf32361de74c015582f380396dcc4b3547350881243bb65546f138f781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c9fcadee744c31ec2780ff06ca06664ccc0c6a2ff164e2b07fcab39c999c1f6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f5363617474657265644d616361756c61792e6c65616e/Variantd841bbaf32361de74c015582f380396dcc4b3547350881243bb65546f138f781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c40ec08e-b3e5-32d4-1d1a-4903b00d8fa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem enhancedCarrierBalanceSound
    (witness : EnhancedCarrierBalanceWitness)
    (closed : witness.closed) :
    witness.scattered.sourceScattered
      ∧ witness.symbolic.supportClosed
      ∧ witness.macaulay.kernelSound
      ∧ witness.equivalence.strongSeparated
      ∧ witness.equivalence.weakSeparated := by
  rcases closed with
    ⟨_, _, sourceScattered, _, supportClosed, _, _, _, _, kernelSound,
      _, _, strongSeparated, weakSeparated, _, _⟩
  exact ⟨sourceScattered, supportClosed, kernelSound, strongSeparated, weakSeparated⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f5363617474657265644d616361756c61792e6c65616e/Variantd841bbaf32361de74c015582f380396dcc4b3547350881243bb65546f138f781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f5363617474657265644d616361756c61792e6c65616e/Variantd841bbaf32361de74c015582f380396dcc4b3547350881243bb65546f138f781.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5859cb5cfc69111ebc20ccd94fb5005fa5be8309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
