# meromorphicAt_comp_add_const_iff_meromorphicAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1768e734ef55d19155055013f599a97655ad6287",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 477,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c13d17b57a5783b66b418dc3f2eed217f27a0fec6d906ca29c1ec31661f4e9a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0dd05b5d-6551-ff17-b075-aa89f3493191",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbee5c30-5153-f7ac-f3bb-b24ad699a672",
  "kind": "theorem",
  "lexical_name": "meromorphicAt_comp_add_const_iff_meromorphicAt",
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
  "slug": "meromorphicat-comp-add-const-iff-meromorphicat--c3a34726588e612a36c6c803",
  "source": {
    "blob": "1768e734ef55d19155055013f599a97655ad6287",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 477,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variantc13d17b57a5783b66b418dc3f2eed217f27a0fec6d906ca29c1ec31661f4e9a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3a34726588e612a36c6c80363c4dc79d6d297383b4cd71b5483366c4728d4a1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Basic/Variantc13d17b57a5783b66b418dc3f2eed217f27a0fec6d906ca29c1ec31661f4e9a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbee5c30-5153-f7ac-f3bb-b24ad699a672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicAt_comp_add_const_iff_meromorphicAt {c : 𝕜} {f : 𝕜 → E} :
    MeromorphicAt (f ∘ (· + c)) x ↔ MeromorphicAt f (x + c) := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · rw [show f = ((f ∘ fun x ↦ x + c) ∘ fun z ↦ z - c) by aesop]
    rw [show x = (x + c) - c by ring] at h
    exact h.comp_analyticAt (g := fun z ↦ z - c) (by fun_prop)
  · exact h.comp_analyticAt (g := fun z ↦ z + c) (by fun_prop)

/-- `MeromorphicAt` is invariant under translation. -/
@[to_fun meromorphicAt_fun_comp_sub_const_iff_meromorphicAt]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Basic/Variantc13d17b57a5783b66b418dc3f2eed217f27a0fec6d906ca29c1ec31661f4e9a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Basic/Variantc13d17b57a5783b66b418dc3f2eed217f27a0fec6d906ca29c1ec31661f4e9a7.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1768e734ef55d19155055013f599a97655ad6287` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
