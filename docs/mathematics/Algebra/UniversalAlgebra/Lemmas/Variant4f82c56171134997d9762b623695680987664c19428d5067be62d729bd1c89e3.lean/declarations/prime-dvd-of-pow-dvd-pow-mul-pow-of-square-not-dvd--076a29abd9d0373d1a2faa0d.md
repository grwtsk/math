# Prime.dvd_of_pow_dvd_pow_mul_pow_of_square_not_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a50285949df1af9a0ff4f500862fd8cb20f1442",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a2bb167-9d2c-79bb-665d-4f1909909aa7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7748e2b5-eadc-46b5-6364-e854935e4920",
  "kind": "theorem",
  "lexical_name": "Prime.dvd_of_pow_dvd_pow_mul_pow_of_square_not_dvd",
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
  "slug": "prime-dvd-of-pow-dvd-pow-mul-pow-of-square-not-dvd--076a29abd9d0373d1a2faa0d",
  "source": {
    "blob": "6a50285949df1af9a0ff4f500862fd8cb20f1442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 88,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:076a29abd9d0373d1a2faa0d7528bd0e09fbb6f1366d7e3503dde771e4a029eb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7748e2b5-eadc-46b5-6364-e854935e4920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prime.dvd_of_pow_dvd_pow_mul_pow_of_square_not_dvd [CancelCommMonoidWithZero M] {p a b : M}
    {n : ℕ} (hp : Prime p) (hpow : p ^ n.succ ∣ a ^ n.succ * b ^ n) (hb : ¬p ^ 2 ∣ b) : p ∣ a := by
  -- Suppose `p ∣ b`, write `b = p * x` and `hy : a ^ n.succ * b ^ n = p ^ n.succ * y`.
  rcases hp.dvd_or_dvd ((dvd_pow_self p (Nat.succ_ne_zero n)).trans hpow) with H | hbdiv
  · exact hp.dvd_of_dvd_pow H
  obtain ⟨x, rfl⟩ := hp.dvd_of_dvd_pow hbdiv
  obtain ⟨y, hy⟩ := hpow
  -- Then we can divide out a common factor of `p ^ n` from the equation `hy`.
  have : a ^ n.succ * x ^ n = p * y := by
    refine mul_left_cancel₀ (pow_ne_zero n hp.ne_zero) ?_
    rw [← mul_assoc _ p, ← pow_succ, ← hy, mul_pow, ← mul_assoc (a ^ n.succ), mul_comm _ (p ^ n),
      mul_assoc]
  -- So `p ∣ a` (and we're done) or `p ∣ x`, which can't be the case since it implies `p^2 ∣ b`.
  refine hp.dvd_of_dvd_pow ((hp.dvd_or_dvd ⟨_, this⟩).resolve_right fun hdvdx => hb ?_)
  obtain ⟨z, rfl⟩ := hp.dvd_of_dvd_pow hdvdx
  rw [pow_two, ← mul_assoc]
  exact dvd_mul_right _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a50285949df1af9a0ff4f500862fd8cb20f1442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
