# bound_of_shell_of_norm_map_coord_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1aec35bffddaf94f76bbd74293bc89515d4b7b3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0901fdb2-cfd2-6719-609d-54799e4e9ea1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70ccc015-2272-00b9-57d5-794cdc629104",
  "kind": "theorem",
  "lexical_name": "bound_of_shell_of_norm_map_coord_zero",
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
  "slug": "bound-of-shell-of-norm-map-coord-zero--ae59b6bcd8bef709cb71fd18",
  "source": {
    "blob": "1aec35bffddaf94f76bbd74293bc89515d4b7b3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 152,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae59b6bcd8bef709cb71fd18cb78ed1ee42274663471195f0d204e6e113d16d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70ccc015-2272-00b9-57d5-794cdc629104`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bound_of_shell_of_norm_map_coord_zero (f : MultilinearMap 𝕜 E G)
    (hf₀ : ∀ {m i}, ‖m i‖ = 0 → ‖f m‖ = 0)
    {ε : ι → ℝ} {C : ℝ} (hε : ∀ i, 0 < ε i) {c : ι → 𝕜} (hc : ∀ i, 1 < ‖c i‖)
    (hf : ∀ m : ∀ i, E i, (∀ i, ε i / ‖c i‖ ≤ ‖m i‖) → (∀ i, ‖m i‖ < ε i) → ‖f m‖ ≤ C * ∏ i, ‖m i‖)
    (m : ∀ i, E i) : ‖f m‖ ≤ C * ∏ i, ‖m i‖ := by
  rcases em (∃ i, ‖m i‖ = 0) with (⟨i, hi⟩ | hm)
  · rw [hf₀ hi, prod_eq_zero (mem_univ i) hi, mul_zero]
  push_neg at hm
  choose δ hδ0 hδm_lt hle_δm _ using fun i => rescale_to_shell_semi_normed (hc i) (hε i) (hm i)
  have hδ0 : 0 < ∏ i, ‖δ i‖ := prod_pos fun i _ => norm_pos_iff.2 (hδ0 i)
  simpa [map_smul_univ, norm_smul, prod_mul_distrib, mul_left_comm C, mul_le_mul_left hδ0] using
    hf (fun i => δ i • m i) hle_δm hδm_lt

/-- If a continuous multilinear map in finitely many variables on normed spaces satisfies
the inequality `‖f m‖ ≤ C * ∏ i, ‖m i‖` on a shell `ε i / ‖c i‖ < ‖m i‖ < ε i` for some positive
numbers `ε i` and elements `c i : 𝕜`, `1 < ‖c i‖`, then it satisfies this inequality for all `m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aec35bffddaf94f76bbd74293bc89515d4b7b3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
