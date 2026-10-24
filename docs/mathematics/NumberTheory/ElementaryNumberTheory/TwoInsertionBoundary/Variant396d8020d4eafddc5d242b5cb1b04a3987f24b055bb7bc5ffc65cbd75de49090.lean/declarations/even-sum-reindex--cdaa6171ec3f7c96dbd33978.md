# even_sum_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1e3dcc8-272f-49d1-e5c5-862341916992",
  "kind": "theorem",
  "lexical_name": "even_sum_reindex",
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
  "slug": "even-sum-reindex--cdaa6171ec3f7c96dbd33978",
  "source": {
    "blob": "228aa727efa6ffe81c871f224bdc803155c9aaae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 143,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdaa6171ec3f7c96dbd339788022482aaa7498bafd31edc1a1bd5644428ee677",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1e3dcc8-272f-49d1-e5c5-862341916992`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_sum_reindex (N : ℕ) (F : ℕ → ℝ) :
    (∑ d ∈ (Icc 1 N).filter (fun d ↦ ¬Nat.Coprime d 2),
      (ArithmeticFunction.moebius d : ℝ) * F d) =
      ∑ k ∈ Icc 1 (N / 2), (ArithmeticFunction.moebius (2 * k) : ℝ) * F (2 * k) := by
  refine sum_bij' (fun d _ ↦ d / 2) (fun k _ ↦ 2 * k) ?_ ?_ ?_ ?_ ?_
  · intro d hd
    obtain ⟨hdI, hdc⟩ := mem_filter.mp hd
    have hi := mem_Icc.mp hdI
    have he := Nat.mul_div_cancel' (two_dvd_of_not_coprime d hdc)
    apply mem_Icc.mpr
    omega
  · intro k hk
    have hi := mem_Icc.mp hk
    refine mem_filter.mpr ⟨mem_Icc.mpr (by omega), ?_⟩
    intro h
    exact (Nat.prime_two.coprime_iff_not_dvd.mp h.symm) (dvd_mul_right 2 k)
  · intro d hd
    exact Nat.mul_div_cancel' (two_dvd_of_not_coprime d (mem_filter.mp hd).2)
  · intro k _
    omega
  · intro d hd
    rw [Nat.mul_div_cancel' (two_dvd_of_not_coprime d (mem_filter.mp hd).2)]

/-- The original signed linear family has two different finite odd cutoffs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228aa727efa6ffe81c871f224bdc803155c9aaae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
