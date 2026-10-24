# beattySeq_symmDiff_beattySeq'_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cf4ddfb-1a0d-225c-bd5d-f4ab9b9ab6b8",
  "kind": "theorem",
  "lexical_name": "beattySeq_symmDiff_beattySeq'_pos",
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
  "slug": "beattyseq-symmdiff-beattyseq-pos--11fb4464f698d5e765de33f4",
  "source": {
    "blob": "392883f9f031f74fead3857af0e8c9c219536ea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11fb4464f698d5e765de33f4ed5b7d8004984a13589cfe12a21480d24d62d051",
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

Occurrence: `result:8cf4ddfb-1a0d-225c-bd5d-f4ab9b9ab6b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem beattySeq_symmDiff_beattySeq'_pos {r s : ℝ} (hrs : r.HolderConjugate s) :
    {beattySeq r k | k > 0} ∆ {beattySeq' s k | k > 0} = {n | 0 < n} := by
  apply Set.eq_of_subset_of_subset
  · rintro j (⟨⟨k, hk, hjk⟩, -⟩ | ⟨⟨k, hk, hjk⟩, -⟩)
    · rw [Set.mem_ofPred_eq, ← hjk, beattySeq, Int.floor_pos]
      exact one_le_mul_of_one_le_of_one_le (by norm_cast) hrs.lt.le
    · rw [Set.mem_ofPred_eq, ← hjk, beattySeq', sub_pos, Int.lt_ceil, Int.cast_one]
      exact one_lt_mul_of_le_of_lt (by norm_cast) hrs.symm.lt
  intro j (hj : 0 < j)
  have hb₁ : ∀ s ≥ 0, j ∈ {beattySeq s k | k > 0} ↔ j ∈ {beattySeq s k | k} := by
    intro _ hs
    refine ⟨fun ⟨k, _, hk⟩ ↦ ⟨k, hk⟩, fun ⟨k, hk⟩ ↦ ⟨k, ?_, hk⟩⟩
    rw [← hk, beattySeq, Int.floor_pos] at hj
    exact_mod_cast pos_of_mul_pos_left (zero_lt_one.trans_le hj) hs
  have hb₂ : ∀ s ≥ 0, j ∈ {beattySeq' s k | k > 0} ↔ j ∈ {beattySeq' s k | k} := by
    intro _ hs
    refine ⟨fun ⟨k, _, hk⟩ ↦ ⟨k, hk⟩, fun ⟨k, hk⟩ ↦ ⟨k, ?_, hk⟩⟩
    rw [← hk, beattySeq', sub_pos, Int.lt_ceil, Int.cast_one] at hj
    exact_mod_cast pos_of_mul_pos_left (zero_lt_one.trans hj) hs
  rw [Set.mem_symmDiff, hb₁ _ hrs.nonneg, hb₂ _ hrs.symm.nonneg, ← compl_beattySeq hrs,
    Set.notMem_compl_iff, Set.mem_compl_iff, and_self, and_self]
  exact or_not

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `392883f9f031f74fead3857af0e8c9c219536ea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
