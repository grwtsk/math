# geom_sum_alternating_of_lt_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30ac441e-72be-4c48-12ba-d0c915ba2c3a",
  "kind": "theorem",
  "lexical_name": "geom_sum_alternating_of_lt_neg_one",
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
  "slug": "geom-sum-alternating-of-lt-neg-one--3e572fbdfd8e2ba3d5d15b9c",
  "source": {
    "blob": "471efde1ac4ff6e7ed2cf2f678feb9a33e24eac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 510,
    "path": "GRWTSK/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e572fbdfd8e2ba3d5d15b9cfaa8601fdd344ee4e8422596506fb53aa84f5fc4",
  "verification": {
    "reference": "docs/verification/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30ac441e-72be-4c48-12ba-d0c915ba2c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geom_sum_alternating_of_lt_neg_one [Ring R] [PartialOrder R] [IsStrictOrderedRing R]
    (hx : x + 1 < 0) (hn : 1 < n) :
    if Even n then (∑ i ∈ range n, x ^ i) < 0 else 1 < ∑ i ∈ range n, x ^ i := by
  have hx0 : x < 0 := (le_add_of_nonneg_right zero_le_one).trans_lt hx
  refine Nat.le_induction ?_ ?_ n (show 2 ≤ n from hn)
  · simp only [geom_sum_two, lt_add_iff_pos_left, ite_true, gt_iff_lt, hx, even_two]
  clear hn
  intro n _ ihn
  simp only [Nat.even_add_one, geom_sum_succ]
  by_cases hn' : Even n
  · rw [if_pos hn'] at ihn
    rw [if_neg, lt_add_iff_pos_left]
    · exact mul_pos_of_neg_of_neg hx0 ihn
    · exact not_not_intro hn'
  · rw [if_neg hn'] at ihn
    rw [if_pos]
    swap
    · exact hn'
    have := add_lt_add_right (mul_lt_mul_of_neg_left ihn hx0) 1
    rw [mul_one] at this
    exact this.trans hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `471efde1ac4ff6e7ed2cf2f678feb9a33e24eac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
