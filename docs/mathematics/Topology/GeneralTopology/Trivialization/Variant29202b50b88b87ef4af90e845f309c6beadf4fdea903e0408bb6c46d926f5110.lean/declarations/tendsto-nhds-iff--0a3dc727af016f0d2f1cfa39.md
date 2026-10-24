# tendsto_nhds_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b657f4e-6dc6-4f78-8ec5-9f3dea28938e",
  "kind": "theorem",
  "lexical_name": "tendsto_nhds_iff",
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
  "slug": "tendsto-nhds-iff--0a3dc727af016f0d2f1cfa39",
  "source": {
    "blob": "78eeb100467d6ff99ce8ccbfcaa26c54e8da9748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 403,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variant29202b50b88b87ef4af90e845f309c6beadf4fdea903e0408bb6c46d926f5110.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a3dc727af016f0d2f1cfa39e6ebc635501e1d679a7c9b5511457fd3984d46fe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Variant29202b50b88b87ef4af90e845f309c6beadf4fdea903e0408bb6c46d926f5110.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b657f4e-6dc6-4f78-8ec5-9f3dea28938e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhds_iff {α : Type*} {l : Filter α} {f : α → Z} {z : Z} (hz : z ∈ e.source) :
    Tendsto f l (𝓝 z) ↔
      Tendsto (proj ∘ f) l (𝓝 (proj z)) ∧ Tendsto (fun x ↦ (e (f x)).2) l (𝓝 (e z).2) := by
  rw [e.nhds_eq_comap_inf_principal hz, tendsto_inf, tendsto_comap_iff, Prod.tendsto_iff, coe_coe,
    tendsto_principal, coe_fst _ hz]
  by_cases hl : ∀ᶠ x in l, f x ∈ e.source
  · simp only [hl, and_true]
    refine (tendsto_congr' ?_).and Iff.rfl
    exact hl.mono fun x ↦ e.coe_fst
  · simp only [hl, and_false, false_iff, not_and]
    rw [e.source_eq] at hl hz
    exact fun h _ ↦ hl <| h <| e.open_baseSet.mem_nhds hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Variant29202b50b88b87ef4af90e845f309c6beadf4fdea903e0408bb6c46d926f5110.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Variant29202b50b88b87ef4af90e845f309c6beadf4fdea903e0408bb6c46d926f5110.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78eeb100467d6ff99ce8ccbfcaa26c54e8da9748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
