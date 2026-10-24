# signed_output_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e210b5c3-64e2-f772-15cb-78063519cd98",
  "kind": "theorem",
  "lexical_name": "signed_output_error_bound",
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
  "slug": "signed-output-error-bound--36bd3baf37f74fd6a2854eca",
  "source": {
    "blob": "d31527241075e29dffc6ccc6ce20d0ae27bafe4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 42,
    "path": "GRWTSK/Analysis/ErrorBounds/GlyphPatchReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36bd3baf37f74fd6a2854eca253b44ffca0bf679f8b2377402e40d39576b5e88",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/GlyphPatchReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e210b5c3-64e2-f772-15cb-78063519cd98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_output_error_bound
    {Patch Contact : Type*}
    (patches : Finset Patch) (contacts : Finset Contact)
    (actual reconstructed sourceError truncationError : ℝ)
    (patchError : Patch → ℝ) (contactError : Contact → ℝ)
    (budget : Budget Patch Contact)
    (decomposition :
      actual - reconstructed =
        sourceError + (∑ patch ∈ patches, patchError patch) +
          (∑ contact ∈ contacts, contactError contact) + truncationError)
    (sourceBound : |sourceError| ≤ budget.source)
    (patchBound : ∀ patch ∈ patches, |patchError patch| ≤ budget.patch patch)
    (contactBound : ∀ contact ∈ contacts,
      |contactError contact| ≤ budget.contact contact)
    (truncationBound : |truncationError| ≤ budget.truncation) :
    |actual - reconstructed| ≤ budget.total patches contacts := by
  have patchTotal :
      |∑ patch ∈ patches, patchError patch| ≤
        ∑ patch ∈ patches, budget.patch patch := by
    calc
      |∑ patch ∈ patches, patchError patch| ≤
          ∑ patch ∈ patches, |patchError patch| :=
        Finset.abs_sum_le_sum_abs patchError patches
      _ ≤ ∑ patch ∈ patches, budget.patch patch :=
        Finset.sum_le_sum patchBound
  have contactTotal :
      |∑ contact ∈ contacts, contactError contact| ≤
        ∑ contact ∈ contacts, budget.contact contact := by
    calc
      |∑ contact ∈ contacts, contactError contact| ≤
          ∑ contact ∈ contacts, |contactError contact| :=
        Finset.abs_sum_le_sum_abs contactError contacts
      _ ≤ ∑ contact ∈ contacts, budget.contact contact :=
        Finset.sum_le_sum contactBound
  rw [decomposition]
  unfold Budget.total
  calc
    |sourceError + (∑ patch ∈ patches, patchError patch) +
        (∑ contact ∈ contacts, contactError contact) + truncationError|
        ≤ |sourceError + (∑ patch ∈ patches, patchError patch) +
              (∑ contact ∈ contacts, contactError contact)| +
            |truncationError| :=
      abs_add_le _ _
    _ ≤ (|sourceError + (∑ patch ∈ patches, patchError patch)| +
            |∑ contact ∈ contacts, contactError contact|) +
          |truncationError| := by
      gcongr
      exact abs_add_le _ _
    _ ≤ ((|sourceError| + |∑ patch ∈ patches, patchError patch|) +
            |∑ contact ∈ contacts, contactError contact|) +
          |truncationError| := by
      gcongr
      exact abs_add_le _ _
    _ ≤ budget.source + (∑ patch ∈ patches, budget.patch patch) +
          (∑ contact ∈ contacts, budget.contact contact) + budget.truncation := by
      exact add_le_add
        (add_le_add (add_le_add sourceBound patchTotal) contactTotal)
        truncationBound

end GRWTSK.Analysis.ErrorBounds.GlyphPatchReconstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/GlyphPatchReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/GlyphPatchReconstruction.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d31527241075e29dffc6ccc6ce20d0ae27bafe4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
