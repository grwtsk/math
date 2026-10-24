# gcd_eq_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be91e748-0cda-9af9-c73b-a51f6992df13",
  "kind": "theorem",
  "lexical_name": "gcd_eq_of_ne",
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
  "slug": "gcd-eq-of-ne--557a751d9a3b70cd0b87f406",
  "source": {
    "blob": "cb14e51fb90676c914675402e5ea1eefdef2b771",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 53,
    "path": "GRWTSK/Algebra/Field/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:557a751d9a3b70cd0b87f4063906bf56b90e65bf6e0e144c655a5cf89c98ea3f",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be91e748-0cda-9af9-c73b-a51f6992df13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem gcd_eq_of_ne [DecidableEq K] {a : K} (ha : a ≠ 0) (b : K) :
    EuclideanDomain.gcd a b = a := by
  rw [Field.gcd_eq, if_neg ha]

end Field
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb14e51fb90676c914675402e5ea1eefdef2b771` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
