# Params.initial.div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8f625e3-c254-a83d-a98c-e2ef51bcd3bd",
  "kind": "lemma",
  "lexical_name": "Params.initial.div_le",
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
  "slug": "params-initial-div-le--4071c04dec1210182c7a0dc5",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 998,
    "line": 977,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4071c04dec1210182c7a0dc5b3a27a3c3a085fcf8c58160b1b471ae7835c0175",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8f625e3-c254-a83d-a98c-e2ef51bcd3bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 977–998.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial.div_le (P : Params) (m : ℕ) (hm : m ∈ P.initial.a) :
    (P.n : ℝ) / m ≤ (1 - 1 / (P.M : ℝ))⁻¹ := by
  have ⟨hlo, hhi⟩ := mem_range P m hm
  have hM_pos : (0 : ℝ) < P.M := Nat.cast_pos.mpr (Nat.zero_lt_of_lt P.hM)
  have h_denom_pos : 0 < 1 - 1 / (P.M : ℝ) := by
    rw [sub_pos, div_lt_one hM_pos]; exact Nat.one_lt_cast.mpr P.hM
  have hn_pos : (0 : ℝ) < P.n :=
    Nat.cast_pos.mpr (Nat.lt_of_lt_of_le (P.initial.hpos m hm) hhi.le)
  have hlo' : (P.n : ℝ) - P.n / P.M ≤ m := by
    calc (P.n : ℝ) - P.n / P.M ≤ P.n - (P.n / P.M : ℕ) := by gcongr; exact Nat.cast_div_le
      _ = ((P.n - P.n / P.M : ℕ) : ℝ) := by rw [Nat.cast_sub (Nat.div_le_self ..)]
      _ ≤ m := by exact_mod_cast hlo
  calc (P.n : ℝ) / m ≤ P.n / (P.n - P.n / P.M) := by
        gcongr; rw [sub_pos]; exact div_lt_self hn_pos <| one_lt_cast.mpr P.hM
    _ = P.n / (P.n * (1 - 1 / (P.M : ℝ))) := by rw [mul_sub, mul_one, mul_one_div]
    _ = (1 - 1 / (P.M : ℝ))⁻¹ := by rw [div_mul_eq_div_div, div_self hn_pos.ne', one_div]

@[blueprint
  "initial-factorization-waste"
  (statement := /-- The total waste in this initial factorization is at most
  $n \log \frac{1}{1-1/M}$. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L977).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
