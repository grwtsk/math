# HasCompactMulSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f155b08676be6b78cb3868e136d5dc67df11e545066d3cc74802a0259a3e9f7e",
  "kind": "def",
  "lexical_name": "HasCompactMulSupport",
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
  "slug": "hascompactmulsupport--c43c4fc7c1d115d025bc4269",
  "source": {
    "blob": "da02e37a4f7990f23c54c42fcac72a5a2b61cdbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 224,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c43c4fc7c1d115d025bc4269de7baeece04cc0e8eb457fc7829dac37c6aa0cef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f155b08676be6b78cb3868e136d5dc67df11e545066d3cc74802a0259a3e9f7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasCompactMulSupport (f : α → β) : Prop :=
  IsCompact (mulTSupport f)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da02e37a4f7990f23c54c42fcac72a5a2b61cdbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
