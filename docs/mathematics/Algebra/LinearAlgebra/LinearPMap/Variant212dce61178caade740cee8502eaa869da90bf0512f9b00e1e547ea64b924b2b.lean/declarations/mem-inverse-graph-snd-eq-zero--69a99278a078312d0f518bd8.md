# mem_inverse_graph_snd_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbab4c31-2132-54c8-2264-acb23aabaadc",
  "kind": "theorem",
  "lexical_name": "mem_inverse_graph_snd_eq_zero",
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
  "slug": "mem-inverse-graph-snd-eq-zero--69a99278a078312d0f518bd8",
  "source": {
    "blob": "62280ddd0ffc9cc68fd3d730c4b8cb77493dfa9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1115,
    "line": 1103,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variant212dce61178caade740cee8502eaa869da90bf0512f9b00e1e547ea64b924b2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69a99278a078312d0f518bd8bfd56e63319b062eb69381a050d8149795016ad1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Variant212dce61178caade740cee8502eaa869da90bf0512f9b00e1e547ea64b924b2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbab4c31-2132-54c8-2264-acb23aabaadc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1103–1115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_inverse_graph_snd_eq_zero (x : F × E)
    (hv : x ∈ (graph f).map (LinearEquiv.prodComm R E F))
    (hv' : x.fst = 0) : x.snd = 0 := by
  simp only [Submodule.mem_map, mem_graph_iff, Subtype.exists, exists_and_left, exists_eq_left,
    LinearEquiv.prodComm_apply, Prod.exists, Prod.swap_prod_mk] at hv
  rcases hv with ⟨a, b, ⟨ha, h1⟩, ⟨h2, h3⟩⟩
  simp only at hv' ⊢
  rw [hv'] at h1
  rw [LinearMap.ker_eq_bot'] at hf
  specialize hf ⟨a, ha⟩ h1
  simp only [Submodule.mk_eq_zero] at hf
  exact hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Variant212dce61178caade740cee8502eaa869da90bf0512f9b00e1e547ea64b924b2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variant212dce61178caade740cee8502eaa869da90bf0512f9b00e1e547ea64b924b2b.lean#L1103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62280ddd0ffc9cc68fd3d730c4b8cb77493dfa9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
