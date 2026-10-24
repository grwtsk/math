# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33bfdf14e4710d54fd475510fd498b428a33f1524e6f5e2a5dce1746bbcf9ddc",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--31cb3cbecabc724b881a5599",
  "source": {
    "blob": "174bec8e0ce88826c0d21979b4b70f3e2b9dde9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 218,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant2ca56a296e4e4a910fa77d7f86c43b7f6980fdea4f79bbab1e735aef51d64270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31cb3cbecabc724b881a559937ebadc4b2bbf6a567160d9c0fd440ca06d7dcb7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant2ca56a296e4e4a910fa77d7f86c43b7f6980fdea4f79bbab1e735aef51d64270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33bfdf14e4710d54fd475510fd498b428a33f1524e6f5e2a5dce1746bbcf9ddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) [SequentialSpace X] : UCompactlyGeneratedSpace.{u} X := by
  refine uCompactlyGeneratedSpace_of_isClosed fun s h ↦
    SequentialSpace.isClosed_of_seq _ fun u p hu hup ↦ ?_
  let g : ULift.{u} (OnePoint ℕ) → X := (continuousMapMkNat u p hup) ∘ ULift.down
  change ULift.up ∞ ∈ g ⁻¹' s
  have : Filter.Tendsto (@OnePoint.some ℕ) Filter.atTop (𝓝 ∞) := by
    rw [← Nat.cofinite_eq_atTop, ← cocompact_eq_cofinite, ← coclosedCompact_eq_cocompact]
    exact tendsto_coe_infty
  apply IsClosed.mem_of_tendsto _ ((continuous_uliftUp.tendsto ∞).comp this)
  · simp only [Function.comp_apply, mem_preimage, eventually_atTop]
    exact ⟨0, fun b _ ↦ hu b⟩
  · exact h ↧(ULift.{u} (OnePoint ℕ)) ⟨g, by fun_prop⟩

end UCompactlyGeneratedSpace

section CompactlyGeneratedSpace

variable {X : Type u} {Y : Type v} [TopologicalSpace X] [TopologicalSpace Y]

/--
A topological space `X` is compactly generated if its topology is finer than (and thus equal to)
the compactly generated topology, i.e. it is coinduced by the continuous maps from compact
Hausdorff spaces to `X`.

In this version, intended for topological purposes, the compact spaces are taken
in the same universe as `X`. See `UCompactlyGeneratedSpace` for a version with an explicit
universe parameter, intended for categorical purposes.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant2ca56a296e4e4a910fa77d7f86c43b7f6980fdea4f79bbab1e735aef51d64270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant2ca56a296e4e4a910fa77d7f86c43b7f6980fdea4f79bbab1e735aef51d64270.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `174bec8e0ce88826c0d21979b4b70f3e2b9dde9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
