# lfpApprox_le_of_mem_fixedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62b789af-581b-fe51-18f7-4dee9916a799",
  "kind": "theorem",
  "lexical_name": "lfpApprox_le_of_mem_fixedPoints",
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
  "slug": "lfpapprox-le-of-mem-fixedpoints--5b3e2d6b6f79af618b2c50ac",
  "source": {
    "blob": "e55448352e84647d33d972e5de14c74794f8e3a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b3e2d6b6f79af618b2c50ac40771b11c295381d281f3cd90d5ea84afd5b27d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62b789af-581b-fe51-18f7-4dee9916a799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lfpApprox_le_of_mem_fixedPoints {a : α}
    (h_a : a ∈ fixedPoints f) (h_le_init : x ≤ a) (i : Ordinal) : lfpApprox f x i ≤ a := by
  induction i using Ordinal.induction with
  | h i IH =>
    rw [lfpApprox]
    apply sSup_le
    simp only [exists_prop]
    intro y h_y
    simp only [Set.mem_union, Set.mem_setOf_eq, Set.mem_singleton_iff] at h_y
    cases h_y with
    | inl h_y =>
      let ⟨j, h_j_lt, h_j⟩ := h_y
      rw [← h_j, ← h_a]
      exact f.monotone' (IH j h_j_lt)
    | inr h_y =>
      rw [h_y]
      exact h_le_init

/-- The approximation sequence converges at the successor of the domain's cardinality
to the least fixed point if starting from `⊥` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e55448352e84647d33d972e5de14c74794f8e3a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
