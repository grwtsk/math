# finite_floor_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b9b1f105ede2de6b1f4f405586b36c52ec9b3bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5bb61fea-7a76-707b-7d86-8eb489740e20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6154b997-311e-84fb-ed63-db47b3b4a3c1",
  "kind": "theorem",
  "lexical_name": "finite_floor_prefix",
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
  "slug": "finite-floor-prefix--91f5ee518af7ac0de8ca995b",
  "source": {
    "blob": "2b9b1f105ede2de6b1f4f405586b36c52ec9b3bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 27,
    "path": "GRWTSK/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91f5ee518af7ac0de8ca995b119f3328193a5c242b9ae624aa482dcdd8b956be",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6154b997-311e-84fb-ed63-db47b3b4a3c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_floor_prefix (X : ℕ) (x : ℝ) (a : ℕ → ℝ) :
    (∑ d ∈ Icc 1 X, a d * (⌊x / (d : ℝ)⌋₊ : ℝ)) =
      ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ d ∈ n.divisors.filter (fun d => d ≤ X), a d := by
  have hf (n : ℕ) (hn : n ∈ Icc 1 ⌊x⌋₊) :
      (Icc 1 X).filter (fun d => d ∣ n) = n.divisors.filter (fun d => d ≤ X) := by
    have hn0 : n ≠ 0 := by have := (mem_Icc.mp hn).1; omega
    ext d
    simp only [mem_filter, mem_Icc, Nat.mem_divisors]
    constructor
    · rintro ⟨hd, hdn⟩
      exact ⟨⟨hdn, hn0⟩, hd.2⟩
    · rintro ⟨⟨hdn, _⟩, hdX⟩
      have hd0 : 0 < d := Nat.pos_of_dvd_of_pos hdn (by omega)
      exact ⟨⟨hd0, hdX⟩, hdn⟩
  calc
    _ = ∑ d ∈ Icc 1 X, ∑ n ∈ Icc 1 ⌊x⌋₊, if d ∣ n then a d else 0 := by
      apply sum_congr rfl
      intro d hd
      rw [Nat.floor_div_natCast, ← sum_filter]
      simp only [sum_const, nsmul_eq_mul, CoprimeCount.positive_multiples_card]
      ring
    _ = ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ d ∈ Icc 1 X, if d ∣ n then a d else 0 := sum_comm
    _ = _ := by
      apply sum_congr rfl
      intro n hn
      rw [← sum_filter, hf n hn]

/-- The actual corrected coefficient floors retain the complete post-cutoff divisor prefix
and its endpoint compensation, at every real argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b9b1f105ede2de6b1f4f405586b36c52ec9b3bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
