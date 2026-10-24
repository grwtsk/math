# equiv_kerFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87010768956625462a038736bed01361f0e66b9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69b85c01-7f56-6176-1298-6036bc5b0ae9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c269a60c-2420-114d-3d1e-d63ec8ee4ab0",
  "kind": "theorem",
  "lexical_name": "equiv_kerFun",
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
  "slug": "equiv-kerfun--fce85c8be0f45e1678916ca4",
  "source": {
    "blob": "87010768956625462a038736bed01361f0e66b9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 425,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fce85c8be0f45e1678916ca4f8735c75f2710a74e2241062b83a7de68bb656c5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c269a60c-2420-114d-3d1e-d63ec8ee4ab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_kerFun (h : kernel H = kernel H') (x : X) (v : V) :
    equiv h (kerFun H x v) = kerFun H' x v := by
  apply (OfKernel.equivAux h).symm.injective
  simp only [equiv, LinearIsometryEquiv.trans_apply, LinearIsometryEquiv.symm_apply_apply]
  rw [← toH'_apply_single h, ← toH'_apply_single rfl, ← equivAux_apply_coe, ← equivAux_apply_coe]
  simp

/-- If the two RKHS have the same kernel, then the functions in the RKHSs agree as functions on
`X → V`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87010768956625462a038736bed01361f0e66b9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
