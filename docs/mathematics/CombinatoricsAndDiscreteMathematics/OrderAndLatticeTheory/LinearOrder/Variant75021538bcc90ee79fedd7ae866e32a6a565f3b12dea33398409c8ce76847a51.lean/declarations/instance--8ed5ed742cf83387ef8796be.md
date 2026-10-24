# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fc422a45364a11448072f8aa3dde2093c2e76cd180da1a45285e686bd8a86da",
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
  "slug": "instance--8ed5ed742cf83387ef8796be",
  "source": {
    "blob": "95707dcc256f3fbb928195a4f753859fdf10db6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 255,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant75021538bcc90ee79fedd7ae866e32a6a565f3b12dea33398409c8ce76847a51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ed5ed742cf83387ef8796beaa31e99171dd07529da1413e7a891dd82a9552a0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant75021538bcc90ee79fedd7ae866e32a6a565f3b12dea33398409c8ce76847a51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fc422a45364a11448072f8aa3dde2093c2e76cd180da1a45285e686bd8a86da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Std.LawfulBCmp (compare (α := α)) where
  eq_swap {a b} := by
    cases _ : compare b a <;>
      simp_all [Ordering.swap, compare_eq_iff_eq, compare_lt_iff_lt, compare_gt_iff_gt]
  isLE_trans h₁ h₂ := by
    simp only [← Ordering.ne_gt_iff_isLE, compare_le_iff_le] at *
    exact le_trans h₁ h₂
  compare_eq_iff_beq := by simp [compare_eq_iff_eq]
  eq_lt_iff_lt := by simp [compare_lt_iff_lt]
  isLE_iff_le := by simp [← Ordering.ne_gt_iff_isLE, compare_le_iff_le]

end Ord

/-- The category of linear orders.

This will get reused to define `OrderType`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant75021538bcc90ee79fedd7ae866e32a6a565f3b12dea33398409c8ce76847a51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant75021538bcc90ee79fedd7ae866e32a6a565f3b12dea33398409c8ce76847a51.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95707dcc256f3fbb928195a4f753859fdf10db6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
