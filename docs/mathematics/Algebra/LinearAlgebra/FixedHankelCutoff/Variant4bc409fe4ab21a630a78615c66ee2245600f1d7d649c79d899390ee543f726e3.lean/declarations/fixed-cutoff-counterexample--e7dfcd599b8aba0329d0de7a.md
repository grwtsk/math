# fixed_cutoff_counterexample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd0dd740-1879-b877-711d-6cea27b01bec",
  "kind": "theorem",
  "lexical_name": "fixed_cutoff_counterexample",
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
  "slug": "fixed-cutoff-counterexample--e7dfcd599b8aba0329d0de7a",
  "source": {
    "blob": "0535c90e0f97e473a4283d89367a1d5a8660c723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7dfcd599b8aba0329d0de7abcad69cca2b9fbabbb4c67396138d1d010d9a9c6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0dd740-1879-b877-711d-6cea27b01bec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_cutoff_counterexample (d : ℕ) :
    ∃ s : ℕ → ℝ,
      (∀ r ≤ d,
        Matrix.PosSemidef (Matrix.of (fun i j : Fin (r + 1) ↦ s (i.val + j.val))) ∧
        Matrix.PosSemidef (Matrix.of (fun i j : Fin (r + 1) ↦ s (i.val + j.val + 1)))) ∧
      ¬ Matrix.PosSemidef (Matrix.of (fun i j : Fin (d + 2) ↦ s (i.val + j.val))) := by
  exact ⟨cutoffSequence d, fun _ hr ↦ both_towers_posSemidef hr,
    next_order_not_posSemidef d⟩

/-- The finite testing predicate does not imply positivity at every order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0535c90e0f97e473a4283d89367a1d5a8660c723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
