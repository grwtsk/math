# iterate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4edbdb38-1993-2838-76d6-92dfa843b1a5",
  "kind": "theorem",
  "lexical_name": "iterate",
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
  "slug": "iterate--3c2617ad15baa9bc6ce453eb",
  "source": {
    "blob": "035f978aa871877a4fe58fdd2966c86426f6e01e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 215,
    "path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c2617ad15baa9bc6ce453eb3be9b7bb31f42b7a70bd52d5166ceb10de2fa8d4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4edbdb38-1993-2838-76d6-92dfa843b1a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem iterate (hf : Conservative f μ) (n : ℕ) : Conservative f^[n] μ := by
  -- Discharge the trivial case `n = 0`
  rcases n with - | n
  · exact Conservative.id μ
  refine ⟨hf.1.iterate _, fun s hs hs0 => ?_⟩
  rcases (hf.frequently_ae_mem_and_frequently_image_mem hs.nullMeasurableSet hs0).exists
    with ⟨x, _, hx⟩
  /- We take a point `x ∈ s` such that `f^[k] x ∈ s` for infinitely many values of `k`,
    then we choose two of these values `k < l` such that `k ≡ l [MOD (n + 1)]`.
    Then `f^[k] x ∈ s` and `f^[n + 1]^[(l - k) / (n + 1)] (f^[k] x) = f^[l] x ∈ s`. -/
  rw [Nat.frequently_atTop_iff_infinite] at hx
  rcases Nat.exists_lt_modEq_of_infinite hx n.succ_pos with ⟨k, hk, l, hl, hkl, hn⟩
  set m := (l - k) / (n + 1)
  have : (n + 1) * m = l - k := by
    apply Nat.mul_div_cancel'
    exact (Nat.modEq_iff_dvd' hkl.le).1 hn
  refine ⟨f^[k] x, hk, m, ?_, ?_⟩
  · intro hm
    rw [hm, mul_zero, eq_comm, tsub_eq_zero_iff_le] at this
    exact this.not_gt hkl
  · rwa [← iterate_mul, this, ← iterate_add_apply, tsub_add_cancel_of_le]
    exact hkl.le

end Conservative

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `035f978aa871877a4fe58fdd2966c86426f6e01e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
