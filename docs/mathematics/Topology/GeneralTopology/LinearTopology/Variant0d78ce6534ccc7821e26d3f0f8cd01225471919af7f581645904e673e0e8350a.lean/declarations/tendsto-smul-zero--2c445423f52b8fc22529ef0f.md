# tendsto_smul_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e23ab2997781262817d165315ca05ab7786ca4f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e57c339-20b1-00fe-5766-00780e2e8f86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfbfd425-7fd2-99a6-0c5d-e01b70b88c5a",
  "kind": "theorem",
  "lexical_name": "tendsto_smul_zero",
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
  "slug": "tendsto-smul-zero--2c445423f52b8fc22529ef0f",
  "source": {
    "blob": "e23ab2997781262817d165315ca05ab7786ca4f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 248,
    "path": "GRWTSK/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c445423f52b8fc22529ef0fa1d5d13a6c354b92b2fc5a6962db48115b99bf59",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfbfd425-7fd2-99a6-0c5d-e01b70b88c5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_smul_zero [IsLinearTopology R M] {ι : Type*} {f : Filter ι}
    (a : ι → R) (m : ι → M) (ha : Tendsto m f (𝓝 0)) :
    Tendsto (a • m) f (𝓝 0) := by
  rw [hasBasis_submodule R |>.tendsto_right_iff] at ha ⊢
  intro I hI
  filter_upwards [ha I hI] with i ai_mem
  exact I.smul_mem _ ai_mem

variable (R) in
/-- If the left and right actions of `R` on `M` coincide, then a topology is `Rᵐᵒᵖ`-linear
if and only if it is `R`-linear. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23ab2997781262817d165315ca05ab7786ca4f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
