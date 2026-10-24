# divisorStorage_succ_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2cd789a3cb6213126aef5caa6afaa244189722b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99b6225d-706e-b0f4-107f-ece20dbb2a8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:509dd5f8-5157-7ff1-d832-6aff7a809d79",
  "kind": "theorem",
  "lexical_name": "divisorStorage_succ_sub",
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
  "slug": "divisorstorage-succ-sub--ca046ab921c64637cde964aa",
  "source": {
    "blob": "f2cd789a3cb6213126aef5caa6afaa244189722b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca046ab921c64637cde964aaef7cc27b21319f82644c2a11ebd8be548d6a6347",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:509dd5f8-5157-7ff1-d832-6aff7a809d79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorStorage_succ_sub (d k : ℕ) (hd : 0 < d) :
    divisorStorage d (k + 1) - divisorStorage d k = divisorOscillation d k := by
  by_cases hd1 : d = 1
  · subst d
    simp [divisorStorage, divisorOscillation]
  have h1d : 1 < d := by omega
  have hd0 : (d : ℝ) ≠ 0 := by exact_mod_cast hd.ne'
  have hnext : (k + 1) % d = (k % d + 1) % d := by
    rw [Nat.add_mod, Nat.mod_eq_of_lt h1d]
  by_cases hwrap : k % d + 1 = d
  · have hz : (k + 1) % d = 0 := by rw [hnext, hwrap, Nat.mod_self]
    have hc : ((k % d : ℕ) : ℝ) + 1 = (d : ℝ) := by exact_mod_cast hwrap
    have hc' : ((k % d : ℕ) : ℝ) = (d : ℝ) - 1 := by linarith
    unfold divisorStorage divisorOscillation
    rw [hz]
    simp only [Nat.cast_zero, zero_mul, zero_div, zero_sub]
    rw [hc']
    field_simp [hd0]
    ring
  · have hlt : k % d + 1 < d := by have := Nat.mod_lt k hd; omega
    have hs : (k + 1) % d = k % d + 1 := by rw [hnext, Nat.mod_eq_of_lt hlt]
    unfold divisorStorage divisorOscillation
    rw [hs, Nat.cast_add, Nat.cast_one]
    field_simp [hd0]
    ring

/-- The actual anchored discrepancy retains its mean and primitive difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2cd789a3cb6213126aef5caa6afaa244189722b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
