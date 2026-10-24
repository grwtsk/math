# coe_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2d404e8-bb24-1e20-57c4-048cff32c64a",
  "kind": "theorem",
  "lexical_name": "coe_polynomial",
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
  "slug": "coe-polynomial--2a99f3c5a1c204d62441e8cb",
  "source": {
    "blob": "d133278eee149a3e11dc32da0899f32d6f1aa6ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 163,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a99f3c5a1c204d62441e8cbe519f45d9a6d06cde489d4e2c172cd6728389666",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2d404e8-bb24-1e20-57c4-048cff32c64a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_polynomial (g : P →+*[M] Q) : (g.polynomial : P[X] → Q[X]) = map g := rfl
#align mul_semiring_action_hom.coe_polynomial MulSemiringActionHom.coe_polynomial

end MulSemiringActionHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d133278eee149a3e11dc32da0899f32d6f1aa6ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
