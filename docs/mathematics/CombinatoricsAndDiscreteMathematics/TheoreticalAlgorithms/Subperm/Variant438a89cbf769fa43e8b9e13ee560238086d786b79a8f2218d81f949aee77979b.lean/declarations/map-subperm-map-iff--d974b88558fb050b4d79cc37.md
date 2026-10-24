# map_subperm_map_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e39688ba-b4bf-8c69-be12-b58219b3e10d",
  "kind": "theorem",
  "lexical_name": "map_subperm_map_iff",
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
  "slug": "map-subperm-map-iff--d974b88558fb050b4d79cc37",
  "source": {
    "blob": "595c0b3e2c81628584d48ff3f2f044d07f335e95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d974b88558fb050b4d79cc37bf5e6e2bd3e3e86853e20d6face8a9792bd3dbfb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e39688ba-b4bf-8c69-be12-b58219b3e10d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_subperm_map_iff {α β} {l₁ l₂ : List α} {f : α → β} (hf : Function.Injective f) :
    (l₁.map f) <+~ (l₂.map f) ↔ l₁ <+~ l₂ where
  mpr a := by
    obtain ⟨l, hl_perm, hl_sub⟩ := a
    exact ⟨l.map f, hl_perm.map f, hl_sub.map f⟩
  mp a := by
    obtain ⟨w, ⟨perm, sublist⟩⟩ := a
    obtain ⟨x, ⟨sublistₓ, mapₓ⟩⟩ := sublist_map_iff.mp sublist
    use x
    constructor
    · rw [mapₓ] at perm
      exact (map_perm_map_iff hf).mp perm
    · exact sublistₓ

alias ⟨_, Subperm.map⟩ := map_subperm_map_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `595c0b3e2c81628584d48ff3f2f044d07f335e95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
