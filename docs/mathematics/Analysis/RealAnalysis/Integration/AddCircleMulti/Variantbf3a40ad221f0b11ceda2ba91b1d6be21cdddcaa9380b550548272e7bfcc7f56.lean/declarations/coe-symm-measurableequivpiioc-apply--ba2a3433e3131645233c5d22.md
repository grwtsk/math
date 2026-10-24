# coe_symm_measurableEquivPiIoc_apply

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
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1ab55e4-8fcb-85db-7625-d5536bac6cb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbb0e102-3108-e078-2926-ab292051de08",
  "kind": "theorem",
  "lexical_name": "coe_symm_measurableEquivPiIoc_apply",
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
  "slug": "coe-symm-measurableequivpiioc-apply--ba2a3433e3131645233c5d22",
  "source": {
    "blob": "71f112d259cba086b7f9d4c66b23e6cce2f91dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AddCircleMulti/Variantbf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba2a3433e3131645233c5d220941b816912a77b9e28ec533522d8d0e18922a1c",
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

Occurrence: `result:dbb0e102-3108-e078-2926-ab292051de08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_symm_measurableEquivPiIoc_apply (y : {x : ι → ℝ // ∀ i, x i ∈ Ioc (b i) (b i + 1)}) :
    (measurableEquivPiIoc b).symm y = fun i => (y.1 i : UnitAddCircle) := rfl

/-- The equivalence `measurableEquivPiIoc` is measure preserving. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AddCircleMulti/Variantbf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AddCircleMulti/Variantbf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71f112d259cba086b7f9d4c66b23e6cce2f91dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
