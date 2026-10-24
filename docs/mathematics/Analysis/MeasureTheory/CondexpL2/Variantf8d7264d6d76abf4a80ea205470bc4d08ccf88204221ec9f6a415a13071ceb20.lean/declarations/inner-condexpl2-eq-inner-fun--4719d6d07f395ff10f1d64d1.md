# inner_condExpL2_eq_inner_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "172a21b38af0ebb005aae58d3b00347b42bb5117",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d55f4085-b824-675a-f9d4-277ef91b5b6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c7cf42b-bc34-ec09-ee48-ef72918d115c",
  "kind": "theorem",
  "lexical_name": "inner_condExpL2_eq_inner_fun",
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
  "slug": "inner-condexpl2-eq-inner-fun--4719d6d07f395ff10f1d64d1",
  "source": {
    "blob": "172a21b38af0ebb005aae58d3b00347b42bb5117",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 149,
    "path": "GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4719d6d07f395ff10f1d64d196ec605b07f0e150bab0d3c9e97d4eba806e0179",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c7cf42b-bc34-ec09-ee48-ef72918d115c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_condExpL2_eq_inner_fun (hm : m ≤ m0) (f g : α →₂[μ] E)
    (hg : AEStronglyMeasurable[m] g μ) :
    ⟪(condExpL2 E 𝕜 hm f : α →₂[μ] E), g⟫ = ⟪f, g⟫ := by
  symm
  rw [← sub_eq_zero, ← inner_sub_left, condExpL2]
  simp only [mem_lpMeas_iff_aestronglyMeasurable.mpr hg,
    Submodule.orthogonalProjection_inner_eq_zero f g]

@[deprecated (since := "2025-01-21")]
alias inner_condexpL2_eq_inner_fun := inner_condExpL2_eq_inner_fun

section Real

variable {hm : m ≤ m0}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `172a21b38af0ebb005aae58d3b00347b42bb5117` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
