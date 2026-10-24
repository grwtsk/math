# geom_sum_alternating_of_lt_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1ecce56-1d41-3dc7-e0aa-837dfd863bfa",
  "kind": "lemma",
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
  "slug": "geom-sum-alternating-of-lt-neg-one--9a854545c6f43c554df32b34",
  "source": {
    "blob": "f64047eb49d430ced65e732d5bc9bc6052509f78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 84,
    "path": "GRWTSK/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a854545c6f43c554df32b34b301f18e53c21e334618a9ad7d67821f6b9d8563",
  "verification": {
    "reference": "docs/verification/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1ecce56-1d41-3dc7-e0aa-837dfd863bfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma geom_sum_alternating_of_lt_neg_one (hx : x + 1 < 0) (hn : 1 < n) :
    if Even n then ∑ i ∈ range n, x ^ i < 0 else 1 < ∑ i ∈ range n, x ^ i := by
  have hx0 : x < 0 := (le_add_of_nonneg_right zero_le_one).trans_lt hx
  refine Nat.le_induction ?_ ?_ n (show 2 ≤ n from hn)
  · simp only [geom_sum_two, lt_add_iff_pos_left, ite_true, hx, even_two]
  clear hn
  intro n _ ihn
  simp only [Nat.even_add_one, geom_sum_succ]
  split_ifs at ihn ⊢ with hn'
  · rw [lt_add_iff_pos_left]
    exact mul_pos_of_neg_of_neg hx0 ihn
  · grw [← hx.le]
    gcongr
    simpa only [mul_one] using mul_lt_mul_of_neg_left ihn hx0

end IsStrictOrderedRing
end PartialOrder

section LinearOrder
variable [LinearOrder R] [IsStrictOrderedRing R] {n : ℕ} {x : R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f64047eb49d430ced65e732d5bc9bc6052509f78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
