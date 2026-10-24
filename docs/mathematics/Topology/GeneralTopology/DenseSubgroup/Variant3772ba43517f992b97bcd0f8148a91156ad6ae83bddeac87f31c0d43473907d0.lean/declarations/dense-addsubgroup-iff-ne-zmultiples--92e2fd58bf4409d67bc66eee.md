# dense_addSubgroup_iff_ne_zmultiples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ba9e2c8-efd6-60ec-3484-773cad83b338",
  "kind": "theorem",
  "lexical_name": "dense_addSubgroup_iff_ne_zmultiples",
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
  "slug": "dense-addsubgroup-iff-ne-zmultiples--92e2fd58bf4409d67bc66eee",
  "source": {
    "blob": "c4c22c319a765d66fe1690f0470248ebf07938d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92e2fd58bf4409d67bc66eee792b0a5e444474f83d10a4c93e7eb3bea06b0e80",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ba9e2c8-efd6-60ec-3484-773cad83b338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dense_addSubgroup_iff_ne_zmultiples {p : ℝ} [Fact (0 < p)] {s : AddSubgroup (AddCircle p)} :
    Dense (s : Set (AddCircle p)) ↔ ∀ a, addOrderOf a ≠ 0 → s ≠ .zmultiples a := by
  constructor
  · rintro hd a ha rfl
    rw [AddSubgroup.coe_zmultiples, ← DenseRange, denseRange_zsmul_iff] at hd
    exact ha hd
  · intro h
    contrapose! h
    obtain ⟨a, rfl⟩ : ∃ a, s = .zmultiples a := by
      rw [← QuotientAddGroup.dense_preimage_mk, ← QuotientAddGroup.coe_mk',
        ← AddSubgroup.coe_comap, xor_iff_not_iff'.1 (AddSubgroup.dense_xor'_cyclic _)] at h
      rcases h with ⟨a, ha⟩
      use a
      rw [← QuotientAddGroup.coe_mk', ← AddMonoidHom.map_zmultiples, ← ha,
        AddSubgroup.map_comap_eq_self_of_surjective]
      exact Quot.mk_surjective
    exact ⟨a, denseRange_zsmul_iff.not.mp h, rfl⟩

end AddCircle
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4c22c319a765d66fe1690f0470248ebf07938d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
