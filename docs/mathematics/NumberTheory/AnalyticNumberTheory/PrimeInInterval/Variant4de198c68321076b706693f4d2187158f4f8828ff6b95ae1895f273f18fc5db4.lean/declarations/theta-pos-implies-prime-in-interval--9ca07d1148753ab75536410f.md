# theta_pos_implies_prime_in_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1e97a91adcba4fe274cbb67c931e9bb414eb650",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39c72a50-f245-95e2-f7c3-2affac9f8d58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38fd2d02-8ca5-3333-febb-6b924a53cdb6",
  "kind": "theorem",
  "lexical_name": "theta_pos_implies_prime_in_interval",
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
  "slug": "theta-pos-implies-prime-in-interval--9ca07d1148753ab75536410f",
  "source": {
    "blob": "d1e97a91adcba4fe274cbb67c931e9bb414eb650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ca07d1148753ab75536410f85ed271c636f758378573ce23a4673a4e16a7686",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38fd2d02-8ca5-3333-febb-6b924a53cdb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_pos_implies_prime_in_interval {x y : ℝ} (_hxy : y < x) (h : θ x - θ y > 0) :
    HasPrimeInInterval y (x - y) := by
  have h_diff : θ x - θ y =
      ∑ p ∈ filter Prime (Icc 1 (floor x)), Real.log p -
      ∑ p ∈ filter Prime (Icc 1 (floor y)), Real.log p := by rfl
  obtain ⟨p, hp₁, hp₂, hp₃⟩ : ∃ p ∈ Icc 1 (floor x), p.Prime ∧ p > floor y := by
    contrapose! h
    exact h_diff.symm ▸ sub_nonpos_of_le (sum_le_sum_of_subset_of_nonneg
      (fun p hp ↦ by grind) fun _ _ _ ↦ log_nonneg <| one_le_cast.mpr <| Prime.pos <| by grind)
  have hx_nn : 0 ≤ x := by linarith [floor_pos.mp (hp₂.one_lt.le.trans (mem_Icc.mp hp₁).2)]
  have hp_le_x : (p : ℝ) ≤ x :=
    floor_le (by positivity) |> le_trans (mod_cast mem_Icc.mp hp₁ |>.2)
  exact ⟨p, hp₂, lt_of_floor_lt hp₃, by grind⟩

@[blueprint
  "theta-inc"
  (title := "Increase in theta iff prime in short interval")
  (statement := /--
  There is a prime in $(x, x+h]$ iff $\theta(x+h) > \theta(x)$.
  -/)
  (proof := /-- Both are equivalent to $\sum_{x < p \leq x+h} \log p > 0$.-/)
  (latexEnv := "lemma")
  (discussion := 905)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e97a91adcba4fe274cbb67c931e9bb414eb650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
