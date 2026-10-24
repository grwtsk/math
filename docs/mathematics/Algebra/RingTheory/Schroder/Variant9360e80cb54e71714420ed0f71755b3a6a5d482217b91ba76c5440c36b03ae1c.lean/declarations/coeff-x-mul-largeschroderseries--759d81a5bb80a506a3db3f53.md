# coeff_X_mul_largeSchroderSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a178fd9-384d-b629-42a6-87b062dead45",
  "kind": "lemma",
  "lexical_name": "coeff_X_mul_largeSchroderSeries",
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
  "slug": "coeff-x-mul-largeschroderseries--759d81a5bb80a506a3db3f53",
  "source": {
    "blob": "9b9bdee3f049bdabaffca113ead0d155febaf060",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 59,
    "path": "GRWTSK/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:759d81a5bb80a506a3db3f53679bbfa94db1891234288217dcf429d386fcdab9",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a178fd9-384d-b629-42a6-87b062dead45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_X_mul_largeSchroderSeries (n : ℕ) (hn : 0 < n) :
    coeff n (X * largeSchroderSeries) = largeSchroder (n - 1) := by
  simp only [coeff_mul, coeff_largeSchroderSeries,
    Nat.sum_antidiagonal_eq_sum_range_succ (coeff · X * largeSchroder ·),
    succ_eq_add_one]
  simp only [coeff_X, ite_mul, one_mul, zero_mul, sum_ite_eq', mem_range, lt_add_iff_pos_left,
    ite_eq_left_iff, not_lt, nonpos_iff_eq_zero]
  rintro rfl
  simp_all only [lt_self_iff_false]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9bdee3f049bdabaffca113ead0d155febaf060` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
