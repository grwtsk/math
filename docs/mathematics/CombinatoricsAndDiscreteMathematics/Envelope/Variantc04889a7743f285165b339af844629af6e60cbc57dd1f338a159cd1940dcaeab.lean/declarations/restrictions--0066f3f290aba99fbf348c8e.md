# Restrictions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bd7456e8ab3aa463e1b1da00505fa7bcb86ce8656e14c2e4d0a158d303291b9",
  "kind": "structure",
  "lexical_name": "Restrictions",
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
  "slug": "restrictions--0066f3f290aba99fbf348c8e",
  "source": {
    "blob": "830c82c8547b2738882d2e631f02b4073e344e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variantc04889a7743f285165b339af844629af6e60cbc57dd1f338a159cd1940dcaeab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0066f3f290aba99fbf348c8e43f8083be885d422bafdbed5862c29c02ac0f40d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Envelope/Variantc04889a7743f285165b339af844629af6e60cbc57dd1f338a159cd1940dcaeab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bd7456e8ab3aa463e1b1da00505fa7bcb86ce8656e14c2e4d0a158d303291b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Restrictions where
  /-- Identifier of the policy used to interpret label propagation. -/
  policy : String
  /-- Labels declared on this record before containment propagation. -/
  own : Finset String
  /-- Declared propagated labels, checked against the least containment closure. -/
  effective : Finset String
  deriving DecidableEq

/-- Decoded common record metadata, including occurrence identity, provenance and
restrictions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Envelope/Variantc04889a7743f285165b339af844629af6e60cbc57dd1f338a159cd1940dcaeab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variantc04889a7743f285165b339af844629af6e60cbc57dd1f338a159cd1940dcaeab.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830c82c8547b2738882d2e631f02b4073e344e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
