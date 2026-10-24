# Submodule.eq_top_of_nonempty_interior'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5097dd7ae0d4e5c2eb3f8cb96adeb5bb188b83cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5da41af8-72f9-8a8e-957e-806da66a82e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d26f610-9b00-514d-cd19-657c86837b43",
  "kind": "theorem",
  "lexical_name": "Submodule.eq_top_of_nonempty_interior'",
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
  "slug": "submodule-eq-top-of-nonempty-interior--d7b6b68158992604bf7dcdc9",
  "source": {
    "blob": "5097dd7ae0d4e5c2eb3f8cb96adeb5bb188b83cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 64,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7b6b68158992604bf7dcdc9c03b4b8f32b8777f35b2a54c43640791b0b1959c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d26f610-9b00-514d-cd19-657c86837b43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.eq_top_of_nonempty_interior' [NeBot (𝓝[{ x : R | IsUnit x }] 0)]
    (s : Submodule R M) (hs : (interior (s : Set M)).Nonempty) : s = ⊤ := by
  rcases hs with ⟨y, hy⟩
  refine Submodule.eq_top_iff'.2 fun x => ?_
  rw [mem_interior_iff_mem_nhds] at hy
  have : Tendsto (fun c : R ↦ y + c • x) (𝓝[{ x : R | IsUnit x }] 0) (𝓝 (y + 0)) :=
    tendsto_const_nhds.add ((tendsto_nhdsWithin_of_tendsto_nhds tendsto_id).zero_smul_const _)
  rw [add_zero] at this
  obtain ⟨_, hu : y + _ • _ ∈ s, u, rfl⟩ :=
    nonempty_of_mem (inter_mem (Filter.mem_map.1 (this hy)) self_mem_nhdsWithin)
  have hy' : y ∈ ↑s := mem_of_mem_nhds hy
  rwa [s.add_mem_iff_right hy', ← Units.smul_def, s.smul_mem_iff' u] at hu

variable (R M) [IsDomain R]

/-- Let `R` be a topological ring such that zero is not an isolated point (e.g., a nontrivially
normed field, see `NormedField.punctured_nhds_neBot`). Let `M` be a nontrivial module over `R`
such that `c • x = 0` implies `c = 0 ∨ x = 0`. Then `M` has no isolated points. We formulate this
using `NeBot (𝓝[≠] x)`.

This lemma is not an instance because Lean would need to find `[ContinuousSMul ?m_1 M]` with
unknown `?m_1`. We register this as an instance for `R = ℝ` in `Real.punctured_nhds_module_neBot`.
One can also use `haveI := Module.punctured_nhds_neBot R M` in a proof.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5097dd7ae0d4e5c2eb3f8cb96adeb5bb188b83cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
