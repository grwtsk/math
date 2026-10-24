# dense_addSubgroupClosure_pair_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:985daa8d-1b12-5a65-36bf-db61260de5f6",
  "kind": "theorem",
  "lexical_name": "dense_addSubgroupClosure_pair_iff",
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
  "slug": "dense-addsubgroupclosure-pair-iff--e5df0efbad8fbb1c12117925",
  "source": {
    "blob": "c4c22c319a765d66fe1690f0470248ebf07938d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5df0efbad8fbb1c121179256c248e08a482e157e17f0318fe99003bae803570",
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

Occurrence: `result:985daa8d-1b12-5a65-36bf-db61260de5f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dense_addSubgroupClosure_pair_iff {a b : ℝ} :
    Dense (AddSubgroup.closure {a, b} : Set ℝ) ↔ Irrational (a / b) := by
  rcases eq_or_ne b 0 with rfl | hb
  · rw [pair_comm]
    simpa [← AddSubgroup.zmultiples_eq_closure] using not_denseRange_zsmul
  constructor
  · rintro hd ⟨r, hr⟩
    refine not_denseRange_zsmul (a := b / r.den) <| hd.mono ?_
    rw [← AddSubgroup.coe_zmultiples, SetLike.coe_subset_coe, AddSubgroup.closure_le,
      AddSubgroup.coe_zmultiples, pair_subset_iff]
    refine ⟨⟨r.num, ?_⟩, r.den, ?_⟩
    · field_simp [mul_div_left_comm _ b, ← Rat.cast_def, hr]
    · field_simp
  · intro h
    contrapose! h
    rcases (AddSubgroup.dense_or_cyclic _).resolve_left h with ⟨c, hc⟩
    have : {a, b} ⊆ range (· • c : ℤ → ℝ) := by
      rw [← AddSubgroup.coe_zmultiples, AddSubgroup.zmultiples_eq_closure, ← hc]
      apply AddSubgroup.subset_closure
    rcases pair_subset_iff.1 this with ⟨⟨m, rfl⟩, n, rfl⟩
    simp_all [mul_div_mul_right]

namespace AddCircle

/-- The multiples of a number `a` are dense on a circle of length `p` iff `a / p` is irrational. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4c22c319a765d66fe1690f0470248ebf07938d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
