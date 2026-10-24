# eventually_isContained_of_card_edgeFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5753d64-3e79-0063-fa64-91bef02a5df4",
  "kind": "theorem",
  "lexical_name": "eventually_isContained_of_card_edgeFinset",
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
  "slug": "eventually-iscontained-of-card-edgefinset--d861e0dffee534c89ddf8946",
  "source": {
    "blob": "b8ae7258174206f1181202316904ebe61c7617ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d861e0dffee534c89ddf8946f642ea0ee8e5f30a34ead5919c866bbc57796644",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5753d64-3e79-0063-fa64-91bef02a5df4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_isContained_of_card_edgeFinset (H : SimpleGraph W) {ε : ℝ} (hε_pos : 0 < ε) :
    ∀ᶠ n in atTop, ∀ {G : SimpleGraph (Fin n)} [DecidableRel G.Adj],
      #G.edgeFinset ≥ (turanDensity H + ε) * n.choose 2 → H ⊑ G := by
  have hπ := (turanDensity_eq_csInf H).ge
  rw [eventually_atTop]
  contrapose! hπ with h
  apply lt_of_lt_of_le <| lt_add_of_pos_right (turanDensity H) hε_pos
  refine le_csInf ?_ (fun x ⟨m, hm, hx⟩ ↦ ?_)
  · rw [← Set.image, Set.image_nonempty]
    exact Set.nonempty_Ici
  rw [← hx]
  have ⟨n, hn, G, _, hcard_edges, h_free⟩ := h m
  replace h_free : H.Free G := not_nonempty_iff.mpr h_free
  trans (extremalNumber n H / n.choose 2)
  · rw [le_div_iff₀ <| mod_cast Nat.choose_pos (hm.trans hn)]
    conv =>
      enter [2, 1, 1]
      rw [← Fintype.card_fin n]
    exact hcard_edges.trans (mod_cast card_edgeFinset_le_extremalNumber h_free)
  · exact antitoneOn_extremalNumber_div_choose_two H hm (hm.trans hn) hn

open scoped Classical in
/-- The edge density of `H`-free simple graphs on `turanDensityConst H ε` vertices
is at most `turanDensity H + ε`.

Contrapositively, `turanDensity H + ε` is the density at which `H` is always contained in simple
graphs on `turanDensityConst H ε` vertices.

Note that this value is only defined for positive `ε` and `turanDensityConst H ε = 0` for non
positive `ε`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8ae7258174206f1181202316904ebe61c7617ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
