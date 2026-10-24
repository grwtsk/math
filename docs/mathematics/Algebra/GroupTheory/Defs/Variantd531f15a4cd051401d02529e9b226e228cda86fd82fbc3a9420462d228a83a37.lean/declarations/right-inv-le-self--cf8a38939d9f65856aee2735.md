# Right.inv_le_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d551ca8-539a-5623-47bd-6146f6ab0da7",
  "kind": "theorem",
  "lexical_name": "Right.inv_le_self",
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
  "slug": "right-inv-le-self--cf8a38939d9f65856aee2735",
  "source": {
    "blob": "ea18360b914ab983543e53ac3d1ed90a151ad8f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 487,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantd531f15a4cd051401d02529e9b226e228cda86fd82fbc3a9420462d228a83a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf8a38939d9f65856aee2735904ddf3cf5d11e2c78c54e934c7247e4a1cfb855",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantd531f15a4cd051401d02529e9b226e228cda86fd82fbc3a9420462d228a83a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d551ca8-539a-5623-47bd-6146f6ab0da7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Right.inv_le_self (h : 1 ≤ a) : a⁻¹ ≤ a :=
  le_trans (Right.inv_le_one_iff.mpr h) h
#align right.inv_le_self Right.inv_le_self
#align right.neg_le_self Right.neg_le_self

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantd531f15a4cd051401d02529e9b226e228cda86fd82fbc3a9420462d228a83a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantd531f15a4cd051401d02529e9b226e228cda86fd82fbc3a9420462d228a83a37.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea18360b914ab983543e53ac3d1ed90a151ad8f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
