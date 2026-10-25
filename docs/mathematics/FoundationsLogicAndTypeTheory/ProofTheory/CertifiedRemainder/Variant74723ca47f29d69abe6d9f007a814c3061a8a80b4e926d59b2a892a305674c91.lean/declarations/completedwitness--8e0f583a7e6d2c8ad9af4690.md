# completedWitness?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:154277e9c6004c860b454797f8e25deeafabf6f2458cf1deab2cd8cd89f211ff",
  "kind": "def",
  "lexical_name": "completedWitness?",
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
  "slug": "completedwitness--8e0f583a7e6d2c8ad9af4690",
  "source": {
    "blob": "1fd4b957ea6bf694dc9f2ee71fef46c32c1b7d1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant74723ca47f29d69abe6d9f007a814c3061a8a80b4e926d59b2a892a305674c91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e0f583a7e6d2c8ad9af46906ebfaa4a812ee0ec6a8e486a976e7e06bfef1e5f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant74723ca47f29d69abe6d9f007a814c3061a8a80b4e926d59b2a892a305674c91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:154277e9c6004c860b454797f8e25deeafabf6f2458cf1deab2cd8cd89f211ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completedWitness?
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
        Obligation Certificate snapshot Statement Seeds Usable Eligible) :
    Option (Derivation Statement Seeds Usable remainder.target) :=
  remainder.routeFrontier.completion

/-- A completed route yields a proposition, never a status mutation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant74723ca47f29d69abe6d9f007a814c3061a8a80b4e926d59b2a892a305674c91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant74723ca47f29d69abe6d9f007a814c3061a8a80b4e926d59b2a892a305674c91.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fd4b957ea6bf694dc9f2ee71fef46c32c1b7d1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
