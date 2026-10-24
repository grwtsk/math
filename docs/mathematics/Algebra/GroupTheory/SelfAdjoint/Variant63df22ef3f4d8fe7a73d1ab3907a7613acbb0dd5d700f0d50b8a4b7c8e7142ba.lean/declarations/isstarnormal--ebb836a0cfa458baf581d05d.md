# isStarNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e50365eeb148f2c5535d459e4aca12009dd2b94383dd1b91fa9021c2feac02eb",
  "kind": "instance",
  "lexical_name": "isStarNormal",
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
  "slug": "isstarnormal--ebb836a0cfa458baf581d05d",
  "source": {
    "blob": "b2e450b9a8721f9879b088d8e80f6150d5500827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 427,
    "path": "GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebb836a0cfa458baf581d05d855cd8c2350a89b073430c7ab0a80f3c35ec8333",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e50365eeb148f2c5535d459e4aca12009dd2b94383dd1b91fa9021c2feac02eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isStarNormal [NonUnitalRing R] [StarRing R] (x : selfAdjoint R) :
    IsStarNormal (x : R) :=
  x.prop.isStarNormal

section Ring

variable [Ring R] [StarRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2e450b9a8721f9879b088d8e80f6150d5500827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
