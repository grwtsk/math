# IsLittleO.isEquivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a84bf61-160a-167e-593a-dde0bffbd0df",
  "kind": "theorem",
  "lexical_name": "IsLittleO.isEquivalent",
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
  "slug": "islittleo-isequivalent--2c04b852639adbb8653255ac",
  "source": {
    "blob": "7af063f85ac5a0b7702308d63f30763c5ad4feed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 168,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant23e0e85932766593b2fcad3b16f6725c79376550746db7c4bf7e4256b16ce5a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c04b852639adbb8653255ac0ed62535aaf7e1ea927906c4cad92afa750c3341",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant23e0e85932766593b2fcad3b16f6725c79376550746db7c4bf7e4256b16ce5a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a84bf61-160a-167e-593a-dde0bffbd0df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLittleO.isEquivalent (huv : (u - v) =o[l] v) : u ~[l] v := huv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant23e0e85932766593b2fcad3b16f6725c79376550746db7c4bf7e4256b16ce5a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant23e0e85932766593b2fcad3b16f6725c79376550746db7c4bf7e4256b16ce5a0.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7af063f85ac5a0b7702308d63f30763c5ad4feed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
