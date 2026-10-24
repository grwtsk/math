# coe_subgroupOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a448d7ba-e625-5882-6d8a-b1839d243590",
  "kind": "theorem",
  "lexical_name": "coe_subgroupOf",
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
  "slug": "coe-subgroupof--3c2c3f4e80987caf39f24111",
  "source": {
    "blob": "6ee0278c5ca1f5d03c70dcec7e6f5beab2f83702",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 305,
    "path": "GRWTSK/Algebra/GroupTheory/Map/Variantb72184a7125c56c0d15b743948a9343b2d70f71637287cfb66cd81755942c067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c2c3f4e80987caf39f241115ce5ea58f7120c656212e31dc92571a633664692",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Map/Variantb72184a7125c56c0d15b743948a9343b2d70f71637287cfb66cd81755942c067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a448d7ba-e625-5882-6d8a-b1839d243590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_subgroupOf (H K : Subgroup G) : (H.subgroupOf K : Set K) = K.subtype ⁻¹' H :=
  rfl

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Map/Variantb72184a7125c56c0d15b743948a9343b2d70f71637287cfb66cd81755942c067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Map/Variantb72184a7125c56c0d15b743948a9343b2d70f71637287cfb66cd81755942c067.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee0278c5ca1f5d03c70dcec7e6f5beab2f83702` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
