# span_mFourier_closure_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71f112d259cba086b7f9d4c66b23e6cce2f91dce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:047d7613-bbec-a861-5d75-ef62f9cd57a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cee1faf-fd66-796b-4c52-14151830a3cc",
  "kind": "theorem",
  "lexical_name": "span_mFourier_closure_eq_top",
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
  "slug": "span-mfourier-closure-eq-top--d9dd8c4933a7cf6b4b2f45a5",
  "source": {
    "blob": "71f112d259cba086b7f9d4c66b23e6cce2f91dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AddCircleMulti/Variantbf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9dd8c4933a7cf6b4b2f45a5967c4f01d60383a41975a2cee331338703161dcf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AddCircleMulti/Variantbf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cee1faf-fd66-796b-4c52-14151830a3cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_mFourier_closure_eq_top :
    (span ℂ (range <| mFourier (d := d))).topologicalClosure = ⊤ := by
  rw [← mFourierSubalgebra_coe]
  exact congr_arg (Subalgebra.toSubmodule <| StarSubalgebra.toSubalgebra ·)
    mFourierSubalgebra_closure_eq_top

end Algebra

section Integral

variable (a : d → ℝ) {ι : Type*} (b : ι → ℝ)

/-- The measurable equivalence between `UnitAddTorus` and a product of `Ioc` intervals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AddCircleMulti/Variantbf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AddCircleMulti/Variantbf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71f112d259cba086b7f9d4c66b23e6cce2f91dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
