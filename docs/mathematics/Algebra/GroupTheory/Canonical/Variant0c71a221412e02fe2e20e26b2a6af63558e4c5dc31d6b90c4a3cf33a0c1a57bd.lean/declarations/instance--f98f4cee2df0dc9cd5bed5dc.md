# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2b0e182491db31125c8e8c659ccf3b4205009820ea09de86867a86de37d94af",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f98f4cee2df0dc9cd5bed5dc",
  "source": {
    "blob": "710225fd8aa1765132f25802340186b1aea369b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 231,
    "path": "GRWTSK/Algebra/GroupTheory/Canonical/Variant0c71a221412e02fe2e20e26b2a6af63558e4c5dc31d6b90c4a3cf33a0c1a57bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f98f4cee2df0dc9cd5bed5dcccf4c802e367e3d01fe845ba7c8440483511aeb9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Canonical/Variant0c71a221412e02fe2e20e26b2a6af63558e4c5dc31d6b90c4a3cf33a0c1a57bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2b0e182491db31125c8e8c659ccf3b4205009820ea09de86867a86de37d94af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsBotZeroClass (WithZero α) where
  isBot_zero _ := bot_le

@[deprecated _root_.zero_le (since := "2026-05-06")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Canonical/Variant0c71a221412e02fe2e20e26b2a6af63558e4c5dc31d6b90c4a3cf33a0c1a57bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Canonical/Variant0c71a221412e02fe2e20e26b2a6af63558e4c5dc31d6b90c4a3cf33a0c1a57bd.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `710225fd8aa1765132f25802340186b1aea369b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
