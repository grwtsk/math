# zagierSet_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0512d48b-3010-bf29-7520-adeb0f698ca4",
  "kind": "lemma",
  "lexical_name": "zagierSet_lower_bound",
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
  "slug": "zagierset-lower-bound--281a29f2bdce094ae85c25bb",
  "source": {
    "blob": "3392b6cc3b225e1177db085a997035c8bf23e5da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:281a29f2bdce094ae85c25bbf97c25670dde1524c8893bf64f9486037887d363",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0512d48b-3010-bf29-7520-adeb0f698ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zagierSet_lower_bound {x y z : ℕ} (h : (x, y, z) ∈ zagierSet k) : 0 < x ∧ 0 < y ∧ 0 < z := by
  rw [zagierSet, mem_setOf_eq] at h
  refine ⟨?_, ?_, ?_⟩
  all_goals
    by_contra q
    rw [not_lt, nonpos_iff_eq_zero] at q
    simp only [q, mul_zero, zero_mul, zero_add, add_zero] at h
  · apply_fun (· % 4) at h
    simp [mul_assoc, Nat.add_mod] at h
  all_goals
    rcases (Nat.dvd_prime hk.out).1 (dvd_of_mul_left_eq _ h) with e | e
    all_goals
      simp only [e, right_eq_add, ne_eq, add_eq_zero, and_false, not_false_eq_true,
        mul_eq_left₀, reduceCtorEq] at h
      simp only [h, zero_add] at hk
      exact Nat.not_prime_one hk.out

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3392b6cc3b225e1177db085a997035c8bf23e5da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
