# isPreconnected_closed_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d1489e2-1d37-906f-78dd-ae0e57e34442",
  "kind": "theorem",
  "lexical_name": "isPreconnected_closed_iff",
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
  "slug": "ispreconnected-closed-iff--ba5ea8d91933674b7621a281",
  "source": {
    "blob": "b8acb47e4588e836c15e517cee37cb8a60018219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 349,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba5ea8d91933674b7621a281097a1f732bf54969ea07d29b3b6590fe9037feb6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d1489e2-1d37-906f-78dd-ae0e57e34442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreconnected_closed_iff {s : Set α} :
    IsPreconnected s ↔ ∀ t t', IsClosed t → IsClosed t' →
      s ⊆ t ∪ t' → (s ∩ t).Nonempty → (s ∩ t').Nonempty → (s ∩ (t ∩ t')).Nonempty :=
  ⟨by
      rintro h t t' ht ht' htt' ⟨x, xs, xt⟩ ⟨y, ys, yt'⟩
      rw [← not_disjoint_iff_nonempty_inter, ← subset_compl_iff_disjoint_right, compl_inter]
      intro h'
      have xt' : x ∉ t' := (h' xs).resolve_left (absurd xt)
      have yt : y ∉ t := (h' ys).resolve_right (absurd yt')
      have := h _ _ ht.isOpen_compl ht'.isOpen_compl h' ⟨y, ys, yt⟩ ⟨x, xs, xt'⟩
      rw [← compl_union] at this
      exact this.ne_empty htt'.disjoint_compl_right.inter_eq,
    by
      rintro h u v hu hv huv ⟨x, xs, xu⟩ ⟨y, ys, yv⟩
      rw [← not_disjoint_iff_nonempty_inter, ← subset_compl_iff_disjoint_right, compl_inter]
      intro h'
      have xv : x ∉ v := (h' xs).elim (absurd xu) id
      have yu : y ∉ u := (h' ys).elim id (absurd yv)
      have := h _ _ hu.isClosed_compl hv.isClosed_compl h' ⟨y, ys, yu⟩ ⟨x, xs, xv⟩
      rw [← compl_union] at this
      exact this.ne_empty huv.disjoint_compl_right.inter_eq⟩
#align is_preconnected_closed_iff isPreconnected_closed_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8acb47e4588e836c15e517cee37cb8a60018219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
