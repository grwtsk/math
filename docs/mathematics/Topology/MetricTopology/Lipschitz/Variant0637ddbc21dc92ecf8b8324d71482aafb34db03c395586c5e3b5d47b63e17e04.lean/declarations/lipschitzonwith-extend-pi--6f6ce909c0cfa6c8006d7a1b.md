# LipschitzOnWith.extend_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9c886fe-f3c6-d59f-f79e-3bb66a0ea1ce",
  "kind": "theorem",
  "lexical_name": "LipschitzOnWith.extend_pi",
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
  "slug": "lipschitzonwith-extend-pi--6f6ce909c0cfa6c8006d7a1b",
  "source": {
    "blob": "1068dde9909b6c61147ae0cef8c7cb96c4ce2327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 353,
    "path": "GRWTSK/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f6ce909c0cfa6c8006d7a1bdb7ac936677b4381e711e08eac9eada644d2e090",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9c886fe-f3c6-d59f-f79e-3bb66a0ea1ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LipschitzOnWith.extend_pi [Fintype ι] {f : α → ι → ℝ} {s : Set α}
    {K : ℝ≥0} (hf : LipschitzOnWith K f s) : ∃ g : α → ι → ℝ, LipschitzWith K g ∧ EqOn f g s := by
  have : ∀ i, ∃ g : α → ℝ, LipschitzWith K g ∧ EqOn (fun x => f x i) g s := fun i => by
    have : LipschitzOnWith K (fun x : α => f x i) s :=
      LipschitzOnWith.of_dist_le_mul fun x hx y hy =>
        (dist_le_pi_dist _ _ i).trans (hf.dist_le_mul x hx y hy)
    exact this.extend_real
  choose g hg using this
  refine ⟨fun x i => g i x, LipschitzWith.of_dist_le_mul fun x y => ?_, fun x hx ↦ ?_⟩
  · exact (dist_pi_le_iff (mul_nonneg K.2 dist_nonneg)).2 fun i => (hg i).1.dist_le_mul x y
  · ext1 i
    exact (hg i).2 hx
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1068dde9909b6c61147ae0cef8c7cb96c4ce2327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
