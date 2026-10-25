# usableRoute_discharged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b287b6db-3db8-4911-e10f-5650fd1566c4",
  "kind": "theorem",
  "lexical_name": "usableRoute_discharged",
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
  "slug": "usableroute-discharged--5f141c5619c4ded625a0704c",
  "source": {
    "blob": "669ac2313423c808bbb9eded3295c80b5cda61dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f141c5619c4ded625a0704c8d14b19cb6397d6e6b0074ee7bbf8f52ae83ae63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b287b6db-3db8-4911-e10f-5650fd1566c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem usableRoute_discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    (route : CertifiedRoute Obligation Certificate Statement snapshot)
    (usable : Usable route)
    (premises :
      ∀ premise, premise ∈ route.premises →
        Discharged Statement Seeds Usable premise) :
    Discharged Statement Seeds Usable route.conclusion := by
  refine ⟨.apply route usable ?_⟩
  intro premise member
  exact (premises premise member).some

/-- Discharge is sound; it cannot be manufactured from digests alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `669ac2313423c808bbb9eded3295c80b5cda61dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
