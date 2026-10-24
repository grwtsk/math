# laurent_rankOne_triangular_bar_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cb7a0c8-21ad-2ba1-9ce8-f04580e6073c",
  "kind": "theorem",
  "lexical_name": "laurent_rankOne_triangular_bar_unique",
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
  "slug": "laurent-rankone-triangular-bar-unique--d57fb2d3b2ec6f2615f2f790",
  "source": {
    "blob": "6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 33,
    "path": "GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d57fb2d3b2ec6f2615f2f7908204303a6324ba5f3ebd9196feff225d9b47c439",
  "verification": {
    "reference": "docs/verification/Algebra/Hecke/LaurentRankOneTriangular.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cb7a0c8-21ad-2ba1-9ce8-f04580e6073c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laurent_rankOne_triangular_bar_unique (a : LaurentPolynomial ℤ)
    (hneg : StrictlyNegativeLaurent a)
    (hbar : laurentRankOneBar (a, T (-1)) = (a, T (-1))) : a = T (-1) := by
  have hfirst := congrArg Prod.fst hbar
  change LaurentPolynomial.invert a + (T (-2) - 1) *
    LaurentPolynomial.invert (T (-1)) = a at hfirst
  simp only [invert_T, neg_neg] at hfirst
  have hp : (T (-2) : LaurentPolynomial ℤ) * T 1 = T (-1) := by rw [← T_add]; norm_num
  rw [sub_mul, hp, one_mul] at hfirst
  have hfixed : LaurentPolynomial.invert (a - T (-1)) = a - T (-1) := by
    rw [map_sub, invert_T]
    norm_num
    linear_combination hfirst
  have hnegative : StrictlyNegativeLaurent (a - T (-1)) := by
    intro n hn
    change a.coeff n - (T (-1) : LaurentPolynomial ℤ).coeff n = 0
    rw [hneg n hn, inverse_parameter_strictly_negative n hn]
    ring
  exact sub_eq_zero.mp (negative_laurent_invert_fixed_zero _ hnegative hfixed)

/-- Unique existence of the triangular, normalized, bar-fixed rank-one element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hecke/LaurentRankOneTriangular.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
