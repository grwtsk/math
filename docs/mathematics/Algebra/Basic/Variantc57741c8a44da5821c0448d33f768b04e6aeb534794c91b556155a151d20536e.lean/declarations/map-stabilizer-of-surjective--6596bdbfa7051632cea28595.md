# map_stabilizer_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "623df194ae50aa279004c825509480ec6a87254c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 486,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b457d7c1-df14-6695-3fd5-227c4d15ce6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:650e18ea-4c6a-a69e-7c36-124d9b21f1d7",
  "kind": "theorem",
  "lexical_name": "map_stabilizer_of_surjective",
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
  "slug": "map-stabilizer-of-surjective--6596bdbfa7051632cea28595",
  "source": {
    "blob": "623df194ae50aa279004c825509480ec6a87254c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 486,
    "path": "GRWTSK/Algebra/Basic/Variantc57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6596bdbfa7051632cea285957a706849e3757915de9b95f56881edd926237893",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:650e18ea-4c6a-a69e-7c36-124d9b21f1d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_stabilizer_of_surjective (hf_surj : Function.Surjective f) (hf_ker : H ≤ f.ker)
    (hf : ∀ g x, algebraMap R S (f g • x) = g • algebraMap R S x) :
    (stabilizer G q).map f = stabilizer G' p := by
  replace hf_ker (h : H) : f h = 1 := hf_ker h.2
  have : SMulCommClass H R S := ⟨fun h x y ↦ by simp [Algebra.smul_def, H.smul_def, ← hf, hf_ker]⟩
  apply le_antisymm
  · rintro - ⟨g, hg, rfl⟩
    ext x
    rw [SetLike.mem_coe, mem_stabilizer_iff] at hg
    simp_rw [mem_pointwise_smul_iff_inv_smul_mem, over_def q p, mem_under, ← map_inv, hf,
      ← mem_pointwise_smul_iff_inv_smul_mem, hg]
  · intro g hg
    obtain ⟨g, rfl⟩ := hf_surj g
    have : (g • q).under R = q.under R := by
      ext x
      rw [mem_under, mem_pointwise_smul_iff_inv_smul_mem, ← hf, ← mem_under, ← over_def q p,
        map_inv, ← mem_pointwise_smul_iff_inv_smul_mem, hg]
    obtain ⟨g', hg'⟩ := Algebra.IsInvariant.exists_smul_of_under_eq R S H (g • q) q this
    exact ⟨g' * g, by simpa [mul_smul, eq_comm], by simp [hf_ker]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `623df194ae50aa279004c825509480ec6a87254c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
