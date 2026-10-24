# li2_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c8c7ddac15d7311b95099aabacb77cb8d9c8795",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33b7f9e6-33c9-36ef-85aa-25293ca67ab9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79f06f34-9035-e240-809c-9775ea6f3064",
  "kind": "theorem",
  "lexical_name": "li2_pos",
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
  "slug": "li2-pos--4fb5bae9da6f69d6dd9131a3",
  "source": {
    "blob": "6c8c7ddac15d7311b95099aabacb77cb8d9c8795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 223,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fb5bae9da6f69d6dd9131a30d7cb90c819c27fd7c78df07520d81782f11492e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79f06f34-9035-e240-809c-9775ea6f3064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li2_pos : 0 < li2 := by
  have hInt := g_intervalIntegrable_full
  have hpos : ∀ t ∈ Set.Ioo (0:ℝ) 1, 0 < g t := by
    intro t ht
    exact g_pos t ht.1 ht.2
  have hlt : (0:ℝ) < 1 := by norm_num
  have h :=
    intervalIntegral.intervalIntegral_pos_of_pos_on (f:=g) (a:=0) (b:=1) hInt hpos hlt
  simpa [li2] using h

/-! ### Certified Bounds

The following bounds are proven via interval arithmetic in Li2Verified.lean.
They are stated here with `sorry` to allow downstream projects to use them
without incurring the ~20 minute compilation cost of numerical verification.

The actual verification uses:
- Partition of [0, 1] into 7 subintervals
- Taylor model integration with 3000 partitions on [1/1000, 999/1000]
- Analytic bounds on tail intervals near 0 and 1

Sum of verified lower bounds: 1.03951 > 1.039
Sum of verified upper bounds: 1.0524 < 1.06
-/

/-- Certified lower bound: li(2) ≥ 1.039.
    Proven via interval arithmetic in Li2Verified.lean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c8c7ddac15d7311b95099aabacb77cb8d9c8795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
