# mahlerSeries_apply_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1eea98c66d3488a3dce3b861ea4e06b85fdf325",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e245fe7-20c9-6044-63e3-1188a57e3dc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4960672c-face-4ba0-3247-9fd72abb17ca",
  "kind": "lemma",
  "lexical_name": "mahlerSeries_apply_nat",
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
  "slug": "mahlerseries-apply-nat--b1eb0f88805da2b794eb2ed3",
  "source": {
    "blob": "c1eea98c66d3488a3dce3b861ea4e06b85fdf325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 301,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1eb0f88805da2b794eb2ed3b06c2abbf0e9a809bbd4504d1d31e175c07281b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4960672c-face-4ba0-3247-9fd72abb17ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mahlerSeries_apply_nat (ha : Tendsto a atTop (𝓝 0)) {m n : ℕ} (hmn : m ≤ n) :
    mahlerSeries a (m : ℤ_[p]) = ∑ i ∈ range (n + 1), m.choose i • a i := by
  have h_van (i) : m.choose (i + (n + 1)) = 0 := Nat.choose_eq_zero_of_lt (by lia)
  have aux : Summable fun i ↦ m.choose (i + (n + 1)) • a (i + (n + 1)) := by
    simpa only [h_van, zero_smul] using summable_zero
  simp only [mahlerSeries_apply ha, mahler_natCast_eq, Nat.cast_smul_eq_nsmul, add_zero,
    ← aux.sum_add_tsum_nat_add' (f := fun i ↦ m.choose i • a i), h_van, zero_smul, tsum_zero]

/--
The coefficients of a Mahler series can be recovered from the sum by taking forward differences at
`0`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1eea98c66d3488a3dce3b861ea4e06b85fdf325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
