# sensitivity_eq_zero_of_gap_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bcff6114b3196646c4f8ae7cd3ea18af0754125",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:865110ca-4158-66e1-2936-d0113f7dde89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6592f82-854f-c9be-c98a-120cf0184ab7",
  "kind": "theorem",
  "lexical_name": "sensitivity_eq_zero_of_gap_eq_zero",
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
  "slug": "sensitivity-eq-zero-of-gap-eq-zero--1880dd4a9219ed4cdb19ec9a",
  "source": {
    "blob": "1bcff6114b3196646c4f8ae7cd3ea18af0754125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1880dd4a9219ed4cdb19ec9a0660d8805c34e12d0ae23661cc394adc6641cf9f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6592f82-854f-c9be-c98a-120cf0184ab7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sensitivity_eq_zero_of_gap_eq_zero
    (R : C.ComparatorMarginRegime Q I) (x : X)
    (hgap : Q.comparatorGap I x = 0) :
    C.interventionSensitivity I x = 0 := by
  have hle :
      R.margin * C.interventionSensitivity I x ≤ 0 := by
    simpa [hgap] using R.lower_bound x
  have hnonneg :
      0 ≤ R.margin * C.interventionSensitivity I x :=
    mul_nonneg (le_of_lt R.margin_pos)
      (C.interventionSensitivity_nonnegative I x)
  have hprod :
      R.margin * C.interventionSensitivity I x = 0 :=
    le_antisymm hle hnonneg
  exact (mul_eq_zero.mp hprod).resolve_left (ne_of_gt R.margin_pos)

/-- Contrapositively, nonzero sensitivity excludes zero comparator gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bcff6114b3196646c4f8ae7cd3ea18af0754125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
