# hit_or_miss'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0323e410-153a-8a99-ee49-1d74d820f8d9",
  "kind": "theorem",
  "lexical_name": "hit_or_miss'",
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
  "slug": "hit-or-miss--22b376c30be452b6fadfc483",
  "source": {
    "blob": "392883f9f031f74fead3857af0e8c9c219536ea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 113,
    "path": "GRWTSK/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22b376c30be452b6fadfc48330788c507016ee3379e79deadb328f8406d47750",
  "verification": {
    "reference": "docs/verification/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0323e410-153a-8a99-ee49-1d74d820f8d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem hit_or_miss' (h : r > 0) :
    j ∈ {beattySeq' r k | k} ∨ ∃ k : ℤ, k ≤ j / r ∧ (j + 1) / r < k + 1 := by
  -- for both cases, the candidate is `k = ⌊(j + 1) / r⌋`
  cases le_or_gt (⌊(j + 1) / r⌋ * r) j
  · exact Or.inr ⟨⌊(j + 1) / r⌋, (le_div_iff₀ h).2 ‹_›, Int.lt_floor_add_one _⟩
  · refine Or.inl ⟨⌊(j + 1) / r⌋, ?_⟩
    rw [beattySeq', sub_eq_iff_eq_add, Int.ceil_eq_iff, Int.cast_add, Int.cast_one]
    constructor
    · rwa [add_sub_cancel_right]
    exact sub_nonneg.1 (Int.sub_floor_div_mul_nonneg (j + 1 : ℝ) h)

end Beatty

/-- Generalization of Rayleigh's theorem on Beatty sequences. Let `r` be a real number greater
than 1, and `1/r + 1/s = 1`. Then the complement of `B_r` is `B'_s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `392883f9f031f74fead3857af0e8c9c219536ea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
