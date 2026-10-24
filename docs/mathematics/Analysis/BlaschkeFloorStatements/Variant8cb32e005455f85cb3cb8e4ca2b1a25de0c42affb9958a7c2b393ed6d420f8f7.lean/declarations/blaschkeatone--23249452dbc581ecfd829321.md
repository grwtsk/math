# blaschkeAtOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88121456b106f715de10ba51b46cd6063d9bcc165deab4cbe6b5185924fc9223",
  "kind": "def",
  "lexical_name": "blaschkeAtOne",
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
  "slug": "blaschkeatone--23249452dbc581ecfd829321",
  "source": {
    "blob": "2bfc405341c9f0a396e58197bbf291042fa0ae23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 11,
    "line": 9,
    "path": "GRWTSK/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23249452dbc581ecfd829321959bc517416a5f203bfd0bc05af5f6f3181d8db7",
  "verification": {
    "reference": "docs/verification/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88121456b106f715de10ba51b46cd6063d9bcc165deab4cbe6b5185924fc9223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–11.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blaschkeAtOne (z : ℂ) : ℂ := (1 - z) / (1 + starRingEnd ℂ z)

/-- The reference denominator cannot vanish for a zero in the open right half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bfc405341c9f0a396e58197bbf291042fa0ae23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
