# isMulLeftInvariant_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87ac43c27d3a3bcfe5d1b1933c6eb2a6c7aac88d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37172a95-9696-8ef5-0433-6918370d68be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:386b1805-6171-415d-6203-dc1b44a44307",
  "kind": "theorem",
  "lexical_name": "isMulLeftInvariant_map",
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
  "slug": "ismulleftinvariant-map--bfb6892a4b47949334d07068",
  "source": {
    "blob": "87ac43c27d3a3bcfe5d1b1933c6eb2a6c7aac88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 144,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfb6892a4b47949334d070681ef11fb9aa368850465fa9606d665d203c50bb4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:386b1805-6171-415d-6203-dc1b44a44307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMulLeftInvariant_map {H : Type*} [MeasurableSpace H] [Mul H] [MeasurableMul H]
    [IsMulLeftInvariant μ] (f : G →ₙ* H) (hf : Measurable f) (h_surj : Surjective f) :
    IsMulLeftInvariant (Measure.map f μ) := by
  refine ⟨fun h => ?_⟩
  rw [map_map (measurable_const_mul _) hf]
  obtain ⟨g, rfl⟩ := h_surj h
  conv_rhs => rw [← map_mul_left_eq_self μ g]
  rw [map_map hf (measurable_const_mul _)]
  congr 2
  ext y
  simp only [comp_apply, map_mul]

end MeasurableMul

end Mul

section Semigroup

variable [Semigroup G] [MeasurableMul G] {μ : Measure G}

/-- The image of a left invariant measure under a left action is left invariant, assuming that
the action preserves multiplication. -/
@[to_additive "The image of a left invariant measure under a left additive action is left invariant,
assuming that the action preserves addition."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ac43c27d3a3bcfe5d1b1933c6eb2a6c7aac88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
