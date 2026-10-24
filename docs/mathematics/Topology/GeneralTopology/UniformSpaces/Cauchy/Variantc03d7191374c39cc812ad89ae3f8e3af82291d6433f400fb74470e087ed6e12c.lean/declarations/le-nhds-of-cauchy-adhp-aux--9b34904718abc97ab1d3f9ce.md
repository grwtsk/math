# le_nhds_of_cauchy_adhp_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05ce0370-fe31-8a4e-efe6-5d38bb9f38e0",
  "kind": "theorem",
  "lexical_name": "le_nhds_of_cauchy_adhp_aux",
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
  "slug": "le-nhds-of-cauchy-adhp-aux--9b34904718abc97ab1d3f9ce",
  "source": {
    "blob": "181876c1986baad484a4ba0ea2ca2018b7821b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b34904718abc97ab1d3f9cee7f21565a81972ba648ec4b42a02046506602a78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05ce0370-fe31-8a4e-efe6-5d38bb9f38e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_nhds_of_cauchy_adhp_aux {f : Filter α} {x : α}
    (adhs : ∀ s ∈ 𝓤 α, ∃ t ∈ f, t ×ˢ t ⊆ s ∧ ∃ y, (x, y) ∈ s ∧ y ∈ t) : f ≤ 𝓝 x := by
  -- Consider a neighborhood `s` of `x`
  intro s hs
  -- Take an entourage twice smaller than `s`
  rcases comp_mem_uniformity_sets (mem_nhds_uniformity_iff_right.1 hs) with ⟨U, U_mem, hU⟩
  -- Take a set `t ∈ f`, `t × t ⊆ U`, and a point `y ∈ t` such that `(x, y) ∈ U`
  rcases adhs U U_mem with ⟨t, t_mem, ht, y, hxy, hy⟩
  apply mem_of_superset t_mem
  -- Given a point `z ∈ t`, we have `(x, y) ∈ U` and `(y, z) ∈ t × t ⊆ U`, hence `z ∈ s`
  exact fun z hz => hU (SetRel.prodMk_mem_comp hxy (ht <| mk_mem_prod hy hz)) rfl

/-- If `x` is an adherent (cluster) point for a Cauchy filter `f`, then it is a limit point
for `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `181876c1986baad484a4ba0ea2ca2018b7821b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
