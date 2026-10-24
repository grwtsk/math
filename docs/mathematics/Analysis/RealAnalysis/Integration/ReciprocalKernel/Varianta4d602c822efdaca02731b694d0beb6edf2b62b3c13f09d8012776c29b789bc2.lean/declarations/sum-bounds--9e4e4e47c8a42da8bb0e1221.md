# sum_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31eb5ead228c3e87f9d46f968aa17b75f447a4e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6489f32-cf00-15c3-9659-68c5f9be3450",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:429a6e91-56f3-adbc-91b7-9b6ae1a0b7bd",
  "kind": "theorem",
  "lexical_name": "sum_bounds",
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
  "slug": "sum-bounds--9e4e4e47c8a42da8bb0e1221",
  "source": {
    "blob": "31eb5ead228c3e87f9d46f968aa17b75f447a4e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 167,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e4e4e47c8a42da8bb0e1221bf67d80e37ec1a73523300bba5c542b73ce1b0aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:429a6e91-56f3-adbc-91b7-9b6ae1a0b7bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_bounds (b : ℝ) :
    0 ≤ (∑' n : ℕ, kernel b (n + 1 / 4)) - Real.log (1 + 16 * b ^ 2) / 2 ∧
    (∑' n : ℕ, kernel b (n + 1 / 4)) - Real.log (1 + 16 * b ^ 2) / 2 ≤ 4 := by
  have h := kernel_sum_bounds b (1 / 4) (by norm_num)
  have he : (1 + b ^ 2 * ((1 / 4 : ℝ)⁻¹) ^ 2) = 1 + 16 * b ^ 2 := by norm_num; ring
  rw [he] at h
  exact ⟨h.1, h.2.trans (kernel_quarter_le b)⟩

/-- Substitution of the source frequency preserves the source's factor four. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31eb5ead228c3e87f9d46f968aa17b75f447a4e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
