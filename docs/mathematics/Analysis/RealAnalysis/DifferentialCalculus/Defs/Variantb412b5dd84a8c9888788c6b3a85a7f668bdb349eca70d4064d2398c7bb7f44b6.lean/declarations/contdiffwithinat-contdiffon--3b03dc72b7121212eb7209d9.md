# ContDiffWithinAt.contDiffOn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46ea73bc-2ddd-755b-7a9f-dfea4a27a26b",
  "kind": "theorem",
  "lexical_name": "ContDiffWithinAt.contDiffOn'",
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
  "slug": "contdiffwithinat-contdiffon--3b03dc72b7121212eb7209d9",
  "source": {
    "blob": "e834e7aeb42bb0ef05723187db05ca420093bb70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 487,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb412b5dd84a8c9888788c6b3a85a7f668bdb349eca70d4064d2398c7bb7f44b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b03dc72b7121212eb7209d9a6c0bb7c12d8ca61b03f24715574460a1cf9ba13",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb412b5dd84a8c9888788c6b3a85a7f668bdb349eca70d4064d2398c7bb7f44b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46ea73bc-2ddd-755b-7a9f-dfea4a27a26b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffWithinAt.contDiffOn' (hm : m ≤ n) (h' : m = ∞ → n = ω)
    (h : ContDiffWithinAt 𝕜 n f s x) :
    ∃ u, IsOpen u ∧ x ∈ u ∧ ContDiffOn 𝕜 m f (insert x s ∩ u) := by
  rcases eq_or_ne n ω with rfl | hn
  · obtain ⟨t, ht, p, hp, h'p⟩ := h
    rcases mem_nhdsWithin.1 ht with ⟨u, huo, hxu, hut⟩
    rw [inter_comm] at hut
    refine ⟨u, huo, hxu, ?_⟩
    suffices ContDiffOn 𝕜 ω f (insert x s ∩ u) from this.of_le le_top
    intro y hy
    refine ⟨insert x s ∩ u, ?_, p, hp.mono hut, fun i ↦ (h'p i).mono hut⟩
    simp only [insert_eq_of_mem, hy, self_mem_nhdsWithin]
  · match m with
    | ω => simp [hn] at hm
    | ∞ => exact (hn (h' rfl)).elim
    | (m : ℕ) =>
      rcases contDiffWithinAt_nat.1 (h.of_le hm) with ⟨t, ht, p, hp⟩
      rcases mem_nhdsWithin.1 ht with ⟨u, huo, hxu, hut⟩
      rw [inter_comm] at hut
      exact ⟨u, huo, hxu, (hp.mono hut).contDiffOn⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb412b5dd84a8c9888788c6b3a85a7f668bdb349eca70d4064d2398c7bb7f44b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb412b5dd84a8c9888788c6b3a85a7f668bdb349eca70d4064d2398c7bb7f44b6.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e834e7aeb42bb0ef05723187db05ca420093bb70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
