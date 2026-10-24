# ConvexOn.exists_lipschitzOnWith_of_isBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dab1c00e-f369-5749-59a9-27a3b5ae2057",
  "kind": "lemma",
  "lexical_name": "ConvexOn.exists_lipschitzOnWith_of_isBounded",
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
  "slug": "convexon-exists-lipschitzonwith-of-isbounded--03321cda1800eca3cefa8a1a",
  "source": {
    "blob": "86efd5d907f44d4a79d747f51fd3d31168ff181a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03321cda1800eca3cefa8a1a3b834154fde0beaa8dc29b48b3653fc04dad4ae3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dab1c00e-f369-5749-59a9-27a3b5ae2057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConvexOn.exists_lipschitzOnWith_of_isBounded (hf : ConvexOn ℝ (ball x₀ r) f) (hr : r' < r)
    (hf' : IsBounded (f '' ball x₀ r)) : ∃ K, LipschitzOnWith K f (ball x₀ r') := by
  rw [isBounded_iff_subset_ball 0] at hf'
  simp only [Set.subset_def, mem_image, mem_ball, dist_zero_right, Real.norm_eq_abs,
    forall_exists_index, and_imp, forall_apply_eq_imp_iff₂] at hf'
  obtain ⟨M, hM⟩ := hf'
  rw [← sub_sub_cancel r r']
  exact ⟨_, hf.lipschitzOnWith_of_abs_le (sub_pos.2 hr) fun a ha ↦ (hM a ha).le⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86efd5d907f44d4a79d747f51fd3d31168ff181a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
