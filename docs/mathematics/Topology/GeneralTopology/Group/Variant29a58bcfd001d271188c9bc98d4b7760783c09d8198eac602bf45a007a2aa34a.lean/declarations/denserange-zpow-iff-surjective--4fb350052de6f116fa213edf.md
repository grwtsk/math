# denseRange_zpow_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17488ad4e21c70042f3dde6b54cfb9b9c1fd67fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0842cee2-4c72-9593-ce73-b3d3276fd364",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77ef7628-b2e1-8e4c-69fc-32f1bc7b3167",
  "kind": "theorem",
  "lexical_name": "denseRange_zpow_iff_surjective",
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
  "slug": "denserange-zpow-iff-surjective--4fb350052de6f116fa213edf",
  "source": {
    "blob": "17488ad4e21c70042f3dde6b54cfb9b9c1fd67fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fb350052de6f116fa213edf8e28b71afd5d7b040b623c8c5ac00c5acf99bd69",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77ef7628-b2e1-8e4c-69fc-32f1bc7b3167`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denseRange_zpow_iff_surjective {a : G} :
    DenseRange (a ^ · : ℤ → G) ↔ Surjective (a ^ · : ℤ → G) := by
  refine ⟨fun h ↦ ?_, fun h ↦ h.denseRange⟩
  wlog ha₀ : 1 < a generalizing a
  · simp only [← range_eq_univ, DenseRange] at *
    rcases (not_lt.1 ha₀).eq_or_lt with rfl | hlt
    · simpa only [one_zpow, range_const, dense_iff_closure_eq, closure_singleton] using h
    · have H : range (a⁻¹ ^ · : ℤ → G) = range (a ^ · : ℤ → G) := by
        simpa only [← inv_zpow, zpow_neg, comp_def] using neg_surjective.range_comp (a ^ · : ℤ → G)
      rw [← H]
      apply this <;> simpa only [H, one_lt_inv']
  intro b
  obtain ⟨m, hm, hm'⟩ : ∃ m : ℤ, a ^ m ∈ Ioo b (b * a * a) := by
    have hne : (Ioo b (b * a * a)).Nonempty := ⟨b * a, by simpa⟩
    simpa using h.exists_mem_open isOpen_Ioo hne
  rcases eq_or_ne b (a ^ (m - 1)) with rfl | hne; · simp
  suffices (Ioo (a ^ m) (a ^ (m + 1))).Nonempty by
    rcases h.exists_mem_open isOpen_Ioo this with ⟨l, hl⟩
    have : m < l ∧ l < m + 1 := by simpa [zpow_lt_zpow_iff_right ha₀] using hl
    omega
  rcases hne.lt_or_lt with hlt | hlt
  · refine ⟨b * a * a, hm', ?_⟩
    simpa only [zpow_add, zpow_sub, zpow_one, ← div_eq_mul_inv, lt_div_iff_mul_lt,
      mul_lt_mul_iff_right] using hlt
  · use b * a
    simp only [mem_Ioo, zpow_add, zpow_sub, zpow_one, ← div_eq_mul_inv,
      mul_lt_mul_iff_right] at hlt ⊢
    exact ⟨div_lt_iff_lt_mul.1 hlt, hm⟩

/-- In a nontrivial densely linearly ordered commutative group,
the integer powers of an element can't be dense. -/
@[to_additive "In a nontrivial densely linearly ordered additive group,
the integer multiples of an element can't be dense."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17488ad4e21c70042f3dde6b54cfb9b9c1fd67fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
