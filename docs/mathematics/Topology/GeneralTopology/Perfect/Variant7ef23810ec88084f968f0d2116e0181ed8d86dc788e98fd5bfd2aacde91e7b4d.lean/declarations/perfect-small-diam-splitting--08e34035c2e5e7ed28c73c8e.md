# Perfect.small_diam_splitting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67981a28-65b5-4760-723b-0a22905a690b",
  "kind": "theorem",
  "lexical_name": "Perfect.small_diam_splitting",
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
  "slug": "perfect-small-diam-splitting--08e34035c2e5e7ed28c73c8e",
  "source": {
    "blob": "f1351ebd74f06d465d1f865aaa588a6f47ae4bd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 252,
    "path": "GRWTSK/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08e34035c2e5e7ed28c73c8ecb79a1a4a352126580cf98386921b2cfcbbde96e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67981a28-65b5-4760-723b-0a22905a690b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Perfect.small_diam_splitting (ε_pos : 0 < ε) :
    ∃ C₀ C₁ : Set α, (Perfect C₀ ∧ C₀.Nonempty ∧ C₀ ⊆ C ∧ EMetric.diam C₀ ≤ ε) ∧
    (Perfect C₁ ∧ C₁.Nonempty ∧ C₁ ⊆ C ∧ EMetric.diam C₁ ≤ ε) ∧ Disjoint C₀ C₁ := by
  rcases hC.splitting hnonempty with ⟨D₀, D₁, ⟨perf0, non0, sub0⟩, ⟨perf1, non1, sub1⟩, hdisj⟩
  cases' non0 with x₀ hx₀
  cases' non1 with x₁ hx₁
  rcases perf0.small_diam_aux ε_pos hx₀ with ⟨perf0', non0', sub0', diam0⟩
  rcases perf1.small_diam_aux ε_pos hx₁ with ⟨perf1', non1', sub1', diam1⟩
  refine'
    ⟨closure (EMetric.ball x₀ (ε / 2) ∩ D₀), closure (EMetric.ball x₁ (ε / 2) ∩ D₁),
      ⟨perf0', non0', sub0'.trans sub0, diam0⟩, ⟨perf1', non1', sub1'.trans sub1, diam1⟩, _⟩
  apply Disjoint.mono _ _ hdisj <;> assumption
#align perfect.small_diam_splitting Perfect.small_diam_splitting

open CantorScheme

/-- Any nonempty perfect set in a complete metric space admits a continuous injection
from the Cantor space, `ℕ → Bool`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1351ebd74f06d465d1f865aaa588a6f47ae4bd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
