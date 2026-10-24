# exists_lt_add_of_lt_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a44c649d-2f46-5f82-c518-37e1255f25ff",
  "kind": "theorem",
  "lexical_name": "exists_lt_add_of_lt_add",
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
  "slug": "exists-lt-add-of-lt-add--323250f09e46b390abadecfe",
  "source": {
    "blob": "fc556a2f6999b6b174e20b623d4cd1bc49508f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 715,
    "line": 698,
    "path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:323250f09e46b390abadecfeffba16c3d8e3fe0a0394931a23c082b38c43d0af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a44c649d-2f46-5f82-c518-37e1255f25ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 698–715.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_add_of_lt_add {x y z : ℝ≥0∞} (h : x < y + z) (hy : y ≠ 0) (hz : z ≠ 0) :
    ∃ y' z', y' < y ∧ z' < z ∧ x < y' + z' := by
  have : NeZero y := ⟨hy⟩
  have : NeZero z := ⟨hz⟩
  have A : Tendsto (fun p : ℝ≥0∞ × ℝ≥0∞ => p.1 + p.2) (𝓝[<] y ×ˢ 𝓝[<] z) (𝓝 (y + z)) := by
    apply Tendsto.mono_left _ (Filter.prod_mono nhdsWithin_le_nhds nhdsWithin_le_nhds)
    rw [← nhds_prod_eq]
    exact tendsto_add
  rcases ((A.eventually (lt_mem_nhds h)).and
      (Filter.prod_mem_prod self_mem_nhdsWithin self_mem_nhdsWithin)).exists with
    ⟨⟨y', z'⟩, hx, hy', hz'⟩
  exact ⟨y', z', hy', hz', hx⟩
#align ennreal.exists_lt_add_of_lt_add ENNReal.exists_lt_add_of_lt_add

end TopologicalSpace

section Liminf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean#L698).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc556a2f6999b6b174e20b623d4cd1bc49508f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
