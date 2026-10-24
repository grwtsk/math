# finite_potential_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82d3e4bf-d94c-42b6-9cc2-eddf1b42c2dc",
  "kind": "theorem",
  "lexical_name": "finite_potential_certificate",
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
  "slug": "finite-potential-certificate--d5a84709423804f733cd8cd5",
  "source": {
    "blob": "f087e18f7d99ddaebe25f08ea63ecd8f03a30bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 44,
    "path": "GRWTSK/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5a84709423804f733cd8cd5eedf8874f905fb0454ce55e0a2995744e98abdd7",
  "verification": {
    "reference": "docs/verification/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82d3e4bf-d94c-42b6-9cc2-eddf1b42c2dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_potential_certificate (work storage error : ℕ → ℝ) (n : ℕ)
    (hstep : ∀ j ∈ Finset.range n,
      work j ≤ storage j - storage (j + 1) + error j)
    (hterminal : 0 ≤ storage n) :
    (∑ j ∈ Finset.range n, work j) ≤ storage 0 + ∑ j ∈ Finset.range n, error j := by
  calc
    _ ≤ ∑ j ∈ Finset.range n, (storage j - storage (j + 1) + error j) :=
      Finset.sum_le_sum hstep
    _ = storage 0 - storage n + ∑ j ∈ Finset.range n, error j := by
      rw [Finset.sum_add_distrib, potential_telescope]
    _ ≤ _ := by linarith

end Reconstruction

section Abel

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

/-- Complete schedulePrefixes in one fixed legal ordering. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f087e18f7d99ddaebe25f08ea63ecd8f03a30bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
