# limsup_trim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "870be2b52d320ab78753f914198586a585bf8446",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ae7876b-653c-3324-23bd-67df735232ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31b0500d-05f1-5ec1-5582-bd9822b43b1e",
  "kind": "theorem",
  "lexical_name": "limsup_trim",
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
  "slug": "limsup-trim--6ff7c85c3690497b046bb1c5",
  "source": {
    "blob": "870be2b52d320ab78753f914198586a585bf8446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 29,
    "path": "GRWTSK/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ff7c85c3690497b046bb1c56182c28526710c7d3bd5467df1b328c9994b8029",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31b0500d-05f1-5ec1-5582-bd9822b43b1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limsup_trim (hm : m ≤ m0) {f : α → ℝ≥0∞} (hf : Measurable[m] f) :
    limsup f (ae (μ.trim hm)) = limsup f (ae μ) := by
  simp_rw [limsup_eq]
  suffices h_set_eq : { a : ℝ≥0∞ | ∀ᵐ n ∂μ.trim hm, f n ≤ a } = { a : ℝ≥0∞ | ∀ᵐ n ∂μ, f n ≤ a } by
    rw [h_set_eq]
  ext1 a
  suffices h_meas_eq : μ { x | ¬f x ≤ a } = μ.trim hm { x | ¬f x ≤ a } by
    simp_rw [Set.mem_setOf_eq, ae_iff, h_meas_eq]
  refine (trim_measurableSet_eq hm ?_).symm
  refine @MeasurableSet.compl _ _ m (@measurableSet_le ℝ≥0∞ _ _ _ _ m _ _ _ _ _ hf ?_)
  exact @measurable_const _ _ _ m _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `870be2b52d320ab78753f914198586a585bf8446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
