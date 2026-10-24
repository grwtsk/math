# zeta_reflect_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e279fcf45f11c687d78384dbea40a6ffa3f21ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f46d8bd3-9e34-0e4a-b258-485ff2e7e16e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:729e5014-d6b6-3bb7-58f5-c47d62b087a9",
  "kind": "theorem",
  "lexical_name": "zeta_reflect_zero",
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
  "slug": "zeta-reflect-zero--8d3cb9564e9565f8ad667b1e",
  "source": {
    "blob": "5e279fcf45f11c687d78384dbea40a6ffa3f21ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 278,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d3cb9564e9565f8ad667b1eecc970676709e22063ccfe518929a7bb566016d3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:729e5014-d6b6-3bb7-58f5-c47d62b087a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_reflect_zero : ∀ ρ, IsNontrivialZero ρ → IsNontrivialZero (reflect ρ) := by
  rintro ρ ⟨hzero, h0, h1⟩
  have hρne : ∀ n : ℕ, ρ ≠ -n := by
    intro n h
    rw [h] at h0
    simp only [Complex.neg_re, Complex.natCast_re] at h0
    exact (not_lt.mpr (neg_nonpos.mpr (Nat.cast_nonneg n))) h0
  have hρne1 : ρ ≠ 1 := by
    intro h
    rw [h] at h1
    simp at h1
  have h1subne : (1 : ℂ) - ρ ≠ 1 := by
    intro h
    have : ρ = 0 := by
      have := congrArg (fun z => (1 : ℂ) - z) h
      simpa using this
    rw [this] at h0
    simp at h0
  have hrefl_eq : reflect ρ = conj (1 - ρ) := by
    unfold reflect
    rw [map_sub, map_one]
  constructor
  · -- ζ(reflect ρ) = 0
    rw [hrefl_eq, riemannZeta_conj h1subne, riemannZeta_one_sub hρne hρne1, hzero]
    simp
  constructor
  · -- 0 < re
    unfold reflect
    simp only [Complex.sub_re, Complex.one_re, Complex.conj_re]
    linarith
  · -- re < 1
    unfold reflect
    simp only [Complex.sub_re, Complex.one_re, Complex.conj_re]
    linarith

/-- H-symm (multiplicity): m_{1−ρ̄} = m_ρ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e279fcf45f11c687d78384dbea40a6ffa3f21ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
