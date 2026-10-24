# ker_closedComplemented_of_finiteDimensional_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d5e7f2cb0077c9f263b78e4adc5dc6215610cae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:804da4c4-912e-0a89-c8fc-fc9da166779c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5bf6e084-f48c-273f-ae4c-33401e2fb791",
  "kind": "theorem",
  "lexical_name": "ker_closedComplemented_of_finiteDimensional_range",
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
  "slug": "ker-closedcomplemented-of-finitedimensional-range--5f2229ade3ce7e58f3b4a2e3",
  "source": {
    "blob": "8d5e7f2cb0077c9f263b78e4adc5dc6215610cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f2229ade3ce7e58f3b4a2e31cfc199ddabee28d92829dc7b782f4ced9f0f3be",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bf6e084-f48c-273f-ae4c-33401e2fb791`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_closedComplemented_of_finiteDimensional_range (f : E →L[𝕜] F)
    [FiniteDimensional 𝕜 (range f)] : (ker f).ClosedComplemented := by
  set f' : E →L[𝕜] range f := f.codRestrict _ (LinearMap.mem_range_self (f : E →ₗ[𝕜] F))
  rcases f'.exists_right_inverse_of_surjective (f : E →ₗ[𝕜] F).range_rangeRestrict with ⟨g, hg⟩
  simpa only [f', ker_codRestrict]
    using f'.closedComplemented_ker_of_rightInverse g (ContinuousLinearMap.ext_iff.1 hg)

end

variable [CompleteSpace E] [CompleteSpace (F × G)]

/-- If `f : E →L[R] F` and `g : E →L[R] G` are two surjective linear maps and
their kernels are complement of each other, then `x ↦ (f x, g x)` defines
a linear equivalence `E ≃L[R] F × G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d5e7f2cb0077c9f263b78e4adc5dc6215610cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
