# partialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8e1a84baeae5845e9527f7fa0b685fec36994aee36dffb1bf634ebe4968b02c",
  "kind": "instance",
  "lexical_name": "partialOrder",
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
  "slug": "partialorder--2ce0ea76324fb6c0ce796560",
  "source": {
    "blob": "3f5de911ff81bf5a8a6dc2e3dbfe8a4a7beec8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 313,
    "path": "GRWTSK/Algebra/Basic/Variantb10f715c299e6c3f468e916cad97620e921dc432e31269217954d94191fc7829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ce0ea76324fb6c0ce7965608e0215a2c8235e2eba7c1886112e13bfbf3f3521",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantb10f715c299e6c3f468e916cad97620e921dc432e31269217954d94191fc7829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8e1a84baeae5845e9527f7fa0b685fec36994aee36dffb1bf634ebe4968b02c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance partialOrder : PartialOrder ℝ where
  lt_iff_le_not_ge a b := by
    induction a using Real.ind_mk
    induction b using Real.ind_mk
    simpa using lt_iff_le_not_ge
  le_refl a := by
    induction a using Real.ind_mk
    rw [mk_le]
  le_trans a b c := by
    induction a using Real.ind_mk
    induction b using Real.ind_mk
    induction c using Real.ind_mk
    simpa using le_trans
  le_antisymm a b := by
    induction a using Real.ind_mk
    induction b using Real.ind_mk
    simpa [mk_eq] using CauSeq.le_antisymm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantb10f715c299e6c3f468e916cad97620e921dc432e31269217954d94191fc7829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb10f715c299e6c3f468e916cad97620e921dc432e31269217954d94191fc7829.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f5de911ff81bf5a8a6dc2e3dbfe8a4a7beec8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
