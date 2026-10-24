# tendsto_nhds_iff_seq_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a90891ea-da1f-bb14-f193-969699b478f4",
  "kind": "theorem",
  "lexical_name": "tendsto_nhds_iff_seq_tendsto",
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
  "slug": "tendsto-nhds-iff-seq-tendsto--f617c610126f709ef055f7b7",
  "source": {
    "blob": "ae9139a6671e75e5e8d2f7fa20c66b31e9a6e1e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f617c610126f709ef055f7b7e1799e72caf50ef85a3a492a2b3ac07b3f90dd3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a90891ea-da1f-bb14-f193-969699b478f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhds_iff_seq_tendsto [FrechetUrysohnSpace X] {f : X → Y} {a : X} {b : Y} :
    Tendsto f (𝓝 a) (𝓝 b) ↔ ∀ u : ℕ → X, Tendsto u atTop (𝓝 a) → Tendsto (f ∘ u) atTop (𝓝 b) := by
  refine
    ⟨fun hf u hu => hf.comp hu, fun h =>
      ((nhds_basis_closeds _).tendsto_iff (nhds_basis_closeds _)).2 ?_⟩
  rintro s ⟨hbs, hsc⟩
  refine ⟨closure (f ⁻¹' s), ⟨mt ?_ hbs, isClosed_closure⟩, fun x => mt fun hx => subset_closure hx⟩
  rw [← seqClosure_eq_closure]
  rintro ⟨u, hus, hu⟩
  exact hsc.mem_of_tendsto (h u hu) (Eventually.of_forall hus)

/-- An alternative construction for `FrechetUrysohnSpace`: if sequential convergence implies
convergence, then the space is a Fréchet-Urysohn space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae9139a6671e75e5e8d2f7fa20c66b31e9a6e1e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
