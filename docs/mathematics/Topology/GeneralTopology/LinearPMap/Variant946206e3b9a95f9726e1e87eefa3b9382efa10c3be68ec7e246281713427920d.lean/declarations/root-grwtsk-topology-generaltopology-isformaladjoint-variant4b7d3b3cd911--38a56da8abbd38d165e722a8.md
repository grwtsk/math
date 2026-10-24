# _root_.GRWTSK.Topology.GeneralTopology.IsFormalAdjoint.Variant4b7d3b3cd9118740bf6495a48ef0386c05d93a7996cfdf035420f71c3a11b80e.LinearPMap.adjoint_graph_eq_graph_adjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0579f1c8-8495-896f-05b9-046ab0db69c0",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsFormalAdjoint.Variant4b7d3b3cd9118740bf6495a48ef0386c05d93a7996cfdf035420f71c3a11b80e.LinearPMap.adjoint_graph_eq_graph_adjoint",
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
  "slug": "root-grwtsk-topology-generaltopology-isformaladjoint-variant4b7d3b3cd911--38a56da8abbd38d165e722a8",
  "source": {
    "blob": "50f779fc52ac4d50d98dec46ec3cbd4bdd3108d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 301,
    "path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38a56da8abbd38d165e722a88587f17c34632518c9c9a60b1f626beaec1291ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0579f1c8-8495-896f-05b9-046ab0db69c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsFormalAdjoint.Variant4b7d3b3cd9118740bf6495a48ef0386c05d93a7996cfdf035420f71c3a11b80e.LinearPMap.adjoint_graph_eq_graph_adjoint (hT : Dense (T.domain : Set E)) :
    T†.graph = T.graph.adjoint := by
  ext x
  simp only [mem_graph_iff, Subtype.exists, exists_and_left, exists_eq_left, mem_adjoint_iff,
    forall_exists_index, forall_apply_eq_imp_iff]
  constructor
  · rintro ⟨hx, h⟩ a ha
    rw [← h, (adjoint_isFormalAdjoint hT).symm ⟨a, ha⟩ ⟨x.fst, hx⟩, sub_self]
  · intro h
    simp_rw [sub_eq_zero] at h
    have hx : x.fst ∈ T†.domain := by
      apply mem_adjoint_domain_of_exists
      use x.snd
      rintro ⟨a, ha⟩
      rw [← inner_conj_symm, ← h a ha, inner_conj_symm]
    use hx
    apply hT.eq_of_inner_right 𝕜
    rintro a ha
    rw [← h a ha, (adjoint_isFormalAdjoint hT).symm ⟨a, ha⟩ ⟨x.fst, hx⟩]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f779fc52ac4d50d98dec46ec3cbd4bdd3108d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
