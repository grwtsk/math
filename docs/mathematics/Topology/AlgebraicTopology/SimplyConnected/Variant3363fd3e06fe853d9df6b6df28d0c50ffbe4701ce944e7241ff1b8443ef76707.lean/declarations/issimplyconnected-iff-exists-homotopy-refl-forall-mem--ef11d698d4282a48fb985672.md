# isSimplyConnected_iff_exists_homotopy_refl_forall_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6184a09d-e398-bc27-da71-6fa992bc0f41",
  "kind": "theorem",
  "lexical_name": "isSimplyConnected_iff_exists_homotopy_refl_forall_mem",
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
  "slug": "issimplyconnected-iff-exists-homotopy-refl-forall-mem--ef11d698d4282a48fb985672",
  "source": {
    "blob": "cf529573655ca9f189d9119c8546cc5b2cc96119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 172,
    "path": "GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef11d698d4282a48fb985672acab961d76c39b229e46f40713fa6f813acc3e4f",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6184a09d-e398-bc27-da71-6fa992bc0f41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSimplyConnected_iff_exists_homotopy_refl_forall_mem {s : Set X} :
    IsSimplyConnected s ↔ IsPathConnected s ∧ ∀ x, ∀ p : Path x x, (∀ t, p t ∈ s) →
      ∃ F : p.Homotopy (.refl x), ∀ t, F t ∈ s := by
  rw [IsSimplyConnected, simply_connected_iff_loops_nullhomotopic,
    ← isPathConnected_iff_pathConnectedSpace]
  refine .and .rfl ⟨fun h x p hp ↦ ?_, fun h x p ↦ ?_⟩
  · lift x to s using by simpa using hp 0
    rcases h x {
      toFun := fun t ↦ ⟨p t, hp t⟩
      source' := by simp
      target' := by simp
    } with ⟨F⟩
    exact ⟨F.map (.restrict s (.id _)), fun t ↦ (F t).2⟩
  · rcases h x (p.map continuous_subtype_val) (fun t ↦ (p t).2) with ⟨F, hF⟩
    exact ⟨{
      toFun t := ⟨F t, hF t⟩
      map_zero_left := by simp
      map_one_left := by simp
      prop' := by simp
    }⟩

open scoped Pointwise

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf529573655ca9f189d9119c8546cc5b2cc96119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
