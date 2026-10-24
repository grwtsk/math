# extend_Z_bilin_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39626630-a7da-9423-c879-8dbf77a31ac1",
  "kind": "theorem",
  "lexical_name": "extend_Z_bilin_aux",
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
  "slug": "extend-z-bilin-aux--74604e7a55f215b05291dd1a",
  "source": {
    "blob": "b8c559016475cc6c7c1fb9abd49068dc6528497f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 310,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74604e7a55f215b05291dd1a324044b8a3d520585f2583f20b439d820984f601",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39626630-a7da-9423-c879-8dbf77a31ac1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem extend_Z_bilin_aux (x₀ : α) (y₁ : δ) : ∃ U₂ ∈ comap e (𝓝 x₀), ∀ x ∈ U₂, ∀ x' ∈ U₂,
    (fun p : β × δ => φ p.1 p.2) (x' - x, y₁) ∈ W' := by
  let Nx := 𝓝 x₀
  let ee := fun u : β × β => (e u.1, e u.2)
  have lim1 : Tendsto (fun a : β × β => (a.2 - a.1, y₁))
      (comap e Nx ×ˢ comap e Nx) (𝓝 (0, y₁)) := by
    have := Tendsto.prodMk (tendsto_sub_comap_self de x₀)
      (tendsto_const_nhds : Tendsto (fun _ : β × β => y₁) (comap ee <| 𝓝 (x₀, x₀)) (𝓝 y₁))
    rw [nhds_prod_eq, prod_comap_comap_eq, ← nhds_prod_eq]
    exact (this :)
  have lim2 : Tendsto (fun p : β × δ => φ p.1 p.2) (𝓝 (0, y₁)) (𝓝 0) := by
    simpa using hφ.tendsto (0, y₁)
  have lim := lim2.comp lim1
  rw [tendsto_prod_self_iff] at lim
  simp_rw [forall_mem_comm]
  exact lim W' W'_nhds

variable [IsUniformAddGroup G]

include df W'_nhds in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8c559016475cc6c7c1fb9abd49068dc6528497f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
