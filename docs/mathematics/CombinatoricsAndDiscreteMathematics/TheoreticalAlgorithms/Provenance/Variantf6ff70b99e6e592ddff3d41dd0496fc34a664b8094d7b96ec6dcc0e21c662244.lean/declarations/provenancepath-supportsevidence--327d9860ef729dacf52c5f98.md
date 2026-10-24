# ProvenancePath.SupportsEvidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d36e6aaaff1ddfeb99b855cd41fc177d6bb7052c7d796324106113b7378c7a9",
  "kind": "def",
  "lexical_name": "ProvenancePath.SupportsEvidence",
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
  "slug": "provenancepath-supportsevidence--327d9860ef729dacf52c5f98",
  "source": {
    "blob": "43e20b9ffedd5335f30cfee8f497609fdb52b095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variantf6ff70b99e6e592ddff3d41dd0496fc34a664b8094d7b96ec6dcc0e21c662244.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:327d9860ef729dacf52c5f98419790f084054eeec05f790f25bfc1facd2be27f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variantf6ff70b99e6e592ddff3d41dd0496fc34a664b8094d7b96ec6dcc0e21c662244.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d36e6aaaff1ddfeb99b855cd41fc177d6bb7052c7d796324106113b7378c7a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ProvenancePath.SupportsEvidence
    {text : TextCarrier}
    (path : ProvenancePath text)
    (evidence : EvidenceRef text) : Prop :=
  path.evidenceId = evidence.evidenceId ∧
    path.IsSourceLocal ∧
    match evidence.anchor, path.terminal with
    | .sourceSpan expected, .sourceSpan observed =>
        expected.start = observed.start ∧
          expected.stop = observed.stop
    | .externalResource expected,
        .acceptedExternalResource observed _ =>
        expected = observed
    | _, _ =>
        False

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variantf6ff70b99e6e592ddff3d41dd0496fc34a664b8094d7b96ec6dcc0e21c662244.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variantf6ff70b99e6e592ddff3d41dd0496fc34a664b8094d7b96ec6dcc0e21c662244.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43e20b9ffedd5335f30cfee8f497609fdb52b095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
