# toAddMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcf4a56a63c35ea682d8316b736d7bddc2ab1d5a140992487219ff92b0fddf6f",
  "kind": "abbrev",
  "lexical_name": "toAddMonoidHom",
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
  "slug": "toaddmonoidhom--df9ae43cbfd7a7e6ce526be5",
  "source": {
    "blob": "2cf3c58948d107604d455664adfafc69788a3b05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 786,
    "line": 783,
    "path": "GRWTSK/Algebra/Equiv/Variantdfded57ebfbf1f5248f53d855d886068328720afd5ee87e9ade48d7508bc5e14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df9ae43cbfd7a7e6ce526be5e9fd92f7b6a5f6ec449590884330ac87ad51dafa",
  "verification": {
    "reference": "docs/verification/Algebra/Equiv/Variantdfded57ebfbf1f5248f53d855d886068328720afd5ee87e9ade48d7508bc5e14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcf4a56a63c35ea682d8316b736d7bddc2ab1d5a140992487219ff92b0fddf6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 783–786.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev toAddMonoidHom (e : R ≃+* S) : R →+ S :=
  e.toRingHom.toAddMonoidHom

/-- The two paths coercion can take to an `AddMonoidHom` are equivalent -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Equiv/Variantdfded57ebfbf1f5248f53d855d886068328720afd5ee87e9ade48d7508bc5e14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Equiv/Variantdfded57ebfbf1f5248f53d855d886068328720afd5ee87e9ade48d7508bc5e14.lean#L783).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf3c58948d107604d455664adfafc69788a3b05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
