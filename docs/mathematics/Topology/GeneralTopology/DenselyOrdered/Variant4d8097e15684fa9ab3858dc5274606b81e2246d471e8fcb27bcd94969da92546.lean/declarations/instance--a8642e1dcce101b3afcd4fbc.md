# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d09ea0f9ef3acc5fea2436b9c0de9ac2d14c063feb7c74d37dbd940a38f4614",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a8642e1dcce101b3afcd4fbc",
  "source": {
    "blob": "38c3e22d1ac41c38fa67e148255859fe54a5c0d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 354,
    "path": "GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8642e1dcce101b3afcd4fbc65e59fb67e15b41ab38524a4827d20dce7aae837",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d09ea0f9ef3acc5fea2436b9c0de9ac2d14c063feb7c74d37dbd940a38f4614`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (x : α) [Nontrivial α] : NeBot (𝓝[≠] x) := by
  refine forall_mem_nonempty_iff_neBot.1 fun s hs => ?_
  obtain ⟨u, u_open, xu, us⟩ : ∃ u : Set α, IsOpen u ∧ x ∈ u ∧ u ∩ {x}ᶜ ⊆ s := mem_nhdsWithin.1 hs
  obtain ⟨a, b, a_lt_b, hab⟩ : ∃ a b : α, a < b ∧ Ioo a b ⊆ u := u_open.exists_Ioo_subset ⟨x, xu⟩
  obtain ⟨y, hy⟩ : ∃ y, a < y ∧ y < b := exists_between a_lt_b
  rcases ne_or_eq x y with (xy | rfl)
  · exact ⟨y, us ⟨hab hy, xy.symm⟩⟩
  obtain ⟨z, hz⟩ : ∃ z, a < z ∧ z < x := exists_between hy.1
  exact ⟨z, us ⟨hab ⟨hz.1, hz.2.trans hy.2⟩, hz.2.ne⟩⟩

/-- Let `s` be a dense set in a nontrivial dense linear order `α`. If `s` is a
separable space (e.g., if `α` has a second countable topology), then there exists a countable
dense subset `t ⊆ s` such that `t` does not contain bottom/top elements of `α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38c3e22d1ac41c38fa67e148255859fe54a5c0d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
