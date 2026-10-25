# unresolved_not_discharged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e883b3be-fb00-5bbf-fa53-cd96ceb3dda5",
  "kind": "theorem",
  "lexical_name": "unresolved_not_discharged",
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
  "slug": "unresolved-not-discharged--84c3abcb4a8af1d9126c3caf",
  "source": {
    "blob": "4b113658d8ffaa8d374b198a55ebd780b7021c4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant179f3a39e6605b754f8c7b1ff281723d8f43ba8a1fc2c918ab2c0573891d7705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84c3abcb4a8af1d9126c3caf8a794269674589f178fd3f881fa0dbce757ff264",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant179f3a39e6605b754f8c7b1ff281723d8f43ba8a1fc2c918ab2c0573891d7705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e883b3be-fb00-5bbf-fa53-cd96ceb3dda5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unresolved_not_discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {Eligible : Obligation → Prop}
    (remainder :
      CertifiedRemainder
        Obligation Certificate snapshot Statement Seeds Usable Eligible)
    {obligation : Obligation}
    (member : obligation ∈ remainder.unresolvedObligations) :
    ¬ Discharged Statement Seeds Usable obligation :=
  (remainder.unresolved_exact obligation).mp member |>.2

/-- The target is retained exactly when no proof-bearing derivation exists. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant179f3a39e6605b754f8c7b1ff281723d8f43ba8a1fc2c918ab2c0573891d7705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant179f3a39e6605b754f8c7b1ff281723d8f43ba8a1fc2c918ab2c0573891d7705.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b113658d8ffaa8d374b198a55ebd780b7021c4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
