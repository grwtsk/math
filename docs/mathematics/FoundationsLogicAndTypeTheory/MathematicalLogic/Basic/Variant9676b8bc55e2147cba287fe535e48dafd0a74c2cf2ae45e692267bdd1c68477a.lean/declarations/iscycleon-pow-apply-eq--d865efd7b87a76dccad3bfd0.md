# IsCycleOn.pow_apply_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "872c6e8318bb5cdfd4a7da8912e14238e2077040",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 758,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce0fc76e-0cc4-23db-943a-9228cf4c4728",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b4c042f-1f43-34bf-a21d-64bf0f88403f",
  "kind": "theorem",
  "lexical_name": "IsCycleOn.pow_apply_eq",
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
  "slug": "iscycleon-pow-apply-eq--d865efd7b87a76dccad3bfd0",
  "source": {
    "blob": "872c6e8318bb5cdfd4a7da8912e14238e2077040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 758,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d865efd7b87a76dccad3bfd099ebb6b94acbc1a5ad3d118ea28c265ad9d45c6f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b4c042f-1f43-34bf-a21d-64bf0f88403f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 758–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCycleOn.pow_apply_eq {s : Finset α} (hf : f.IsCycleOn s) (ha : a ∈ s) {n : ℕ} :
    (f ^ n) a = a ↔ #s ∣ n := by
  obtain rfl | hs := Finset.eq_singleton_or_nontrivial ha
  · rw [coe_singleton, isCycleOn_singleton] at hf
    simpa using IsFixedPt.iterate hf n
  classical
    have h (x : s) : ¬f x = x := hf.apply_ne hs x.2
    have := (hf.isCycle_subtypePerm hs).orderOf
    simp only [coe_sort_coe, support_subtypePerm, ne_eq, h, not_false_eq_true, univ_eq_attach,
      mem_attach, imp_self, implies_true, filter_true_of_mem, card_attach] at this
    rw [← this, orderOf_dvd_iff_pow_eq_one,
      (hf.isCycle_subtypePerm hs).pow_eq_one_iff'
        (ne_of_apply_ne ((↑) : s → α) <| hf.apply_ne hs (⟨a, ha⟩ : s).2)]
    simp [-coe_sort_coe]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean#L758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872c6e8318bb5cdfd4a7da8912e14238e2077040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
