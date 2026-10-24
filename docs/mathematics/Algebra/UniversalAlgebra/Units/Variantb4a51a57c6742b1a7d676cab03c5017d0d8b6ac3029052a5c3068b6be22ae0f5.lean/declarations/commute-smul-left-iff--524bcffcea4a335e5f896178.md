# Commute.smul_left_iff₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a03ae7b95e9cb1f7c643637fdecca27604322765",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a2044b2-f822-ac43-4e0b-a444e4cad94d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f05cf525-1f03-6dff-0bcd-80d3850c31da",
  "kind": "lemma",
  "lexical_name": "Commute.smul_left_iff₀",
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
  "slug": "commute-smul-left-iff--524bcffcea4a335e5f896178",
  "source": {
    "blob": "a03ae7b95e9cb1f7c643637fdecca27604322765",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 59,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:524bcffcea4a335e5f89617880f6358c8ee856ad59297828a180d919d2ff9419",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f05cf525-1f03-6dff-0bcd-80d3850c31da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Commute.smul_left_iff₀ [Mul β] [SMulCommClass α β β] [IsScalarTower α β β] {x y : β}
    (ha : a ≠ 0) : Commute (a • x) y ↔ Commute x y := Commute.smul_left_iff (g := Units.mk0 a ha)

/-- Right scalar multiplication as an order isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a03ae7b95e9cb1f7c643637fdecca27604322765` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
