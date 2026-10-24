# addOrderOf_coe_eq_zero_iff_forall_rat_ne_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6815a942dabfaf83f799770f87e460d55821c012",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 458,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80b68d69-ba64-f8ef-fb40-c38e9a43649b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8f7f173-d6f3-c7b4-6187-91aa0cfd3512",
  "kind": "theorem",
  "lexical_name": "addOrderOf_coe_eq_zero_iff_forall_rat_ne_div",
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
  "slug": "addorderof-coe-eq-zero-iff-forall-rat-ne-div--adb8394289e8eada08bda160",
  "source": {
    "blob": "6815a942dabfaf83f799770f87e460d55821c012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 458,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adb8394289e8eada08bda16004e480cf93041d35d09346d37fc7450d1772d261",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8f7f173-d6f3-c7b4-6187-91aa0cfd3512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addOrderOf_coe_eq_zero_iff_forall_rat_ne_div {a : 𝕜} :
    addOrderOf (a : AddCircle p) = 0 ↔ ∀ q : ℚ, (q : 𝕜) ≠ a / p := by
  simp only [ne_eq, eq_div_iff (Fact.out : 0 < p).ne']
  constructor
  · rintro h q rfl
    rw [addOrderOf_coe_rat] at h
    exact q.den_ne_zero h
  · rw [addOrderOf_eq_zero_iff']
    intro h n hn han
    simp only [← coe_nsmul, coe_eq_zero_iff, nsmul_eq_mul, zsmul_eq_mul] at han
    rcases han with ⟨m, hm⟩
    apply h (m / n)
    field_simp [hm]

variable (p)

/-- The natural bijection between points of order `n` and natural numbers less than and coprime to
`n`. The inverse of the map sends `m ↦ (m/n * p : AddCircle p)` where `m` is coprime to `n` and
satisfies `0 ≤ m < n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6815a942dabfaf83f799770f87e460d55821c012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
