# Filter.tendsto_cocompact_cocompact_of_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:740060c1-0375-233a-350b-355cd6aef2c9",
  "kind": "theorem",
  "lexical_name": "Filter.tendsto_cocompact_cocompact_of_norm",
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
  "slug": "filter-tendsto-cocompact-cocompact-of-norm--2172fc20a70815bd79f5bf20",
  "source": {
    "blob": "219d33226c3e10e3098912fa8ff902921a8ab5a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/CocompactMap/Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2172fc20a70815bd79f5bf20fb5fe291e9d6d315126e631cc9366d7f4ebafaa7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CocompactMap/Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:740060c1-0375-233a-350b-355cd6aef2c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.tendsto_cocompact_cocompact_of_norm [ProperSpace E] {f : E → F}
    (h : ∀ ε : ℝ, ∃ r : ℝ, ∀ x : E, r < ‖x‖ → ε < ‖f x‖) :
    Tendsto f (cocompact E) (cocompact F) := by
  rw [tendsto_def]
  intro s hs
  rcases closedBall_compl_subset_of_mem_cocompact hs 0 with ⟨ε, hε⟩
  rcases h ε with ⟨r, hr⟩
  apply mem_cocompact_of_closedBall_compl_subset 0
  use r
  intro x hx
  simp only [Set.mem_compl_iff, Metric.mem_closedBall, dist_zero_right, not_le] at hx
  apply hε
  simp [hr x hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CocompactMap/Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CocompactMap/Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `219d33226c3e10e3098912fa8ff902921a8ab5a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
