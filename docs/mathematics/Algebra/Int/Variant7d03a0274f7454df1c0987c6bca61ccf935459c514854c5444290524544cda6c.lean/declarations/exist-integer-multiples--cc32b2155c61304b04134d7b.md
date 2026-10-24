# exist_integer_multiples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93cd49e2fd800e3dd0cc2b4f72568d00f8c8f76e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a67fcb7-2342-2569-8e5b-a25cdfe2d509",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5d14e4d-3b37-719b-6948-857d608aec7c",
  "kind": "theorem",
  "lexical_name": "exist_integer_multiples",
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
  "slug": "exist-integer-multiples--cc32b2155c61304b04134d7b",
  "source": {
    "blob": "93cd49e2fd800e3dd0cc2b4f72568d00f8c8f76e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 60,
    "path": "GRWTSK/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc32b2155c61304b04134d7b58d2475c610839f2ba672df752647fc13206921e",
  "verification": {
    "reference": "docs/verification/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5d14e4d-3b37-719b-6948-857d608aec7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exist_integer_multiples {ι : Type*} (s : Finset ι) (g : ι → M') :
    ∃ b : S, ∀ i ∈ s, IsInteger f (b.val • g i) := by
  classical
  choose sec hsec using (fun i ↦ IsLocalizedModule.surj S f (g i))
  refine ⟨∏ i ∈ s, (sec i).2, fun i hi => ⟨?_, ?_⟩⟩
  · exact (∏ j ∈ s.erase i, (sec j).2) • (sec i).1
  · simp only [LinearMap.map_smul_of_tower, Submonoid.coe_finsetProd]
    rw [← hsec, ← mul_smul, Submonoid.smul_def]
    congr
    simp only [Submonoid.coe_mul, Submonoid.coe_finsetProd, mul_comm]
    rw [← Finset.prod_insert (f := fun i ↦ ((sec i).snd).val) (s.notMem_erase i),
      Finset.insert_erase hi]

/-- We can clear the denominators of a finite indexed family of fractions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93cd49e2fd800e3dd0cc2b4f72568d00f8c8f76e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
