# sum_active_truncation_indicator_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7b1ebaecf537ca14ee69303cd6a7d01b064a878",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba299309-700e-afcf-c59a-7f0f9bdfe2c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3ce2eee-4115-6476-b009-c9f39b3cd420",
  "kind": "theorem",
  "lexical_name": "sum_active_truncation_indicator_le",
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
  "slug": "sum-active-truncation-indicator-le--d9864f13dfb6d7f977bd72c0",
  "source": {
    "blob": "d7b1ebaecf537ca14ee69303cd6a7d01b064a878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 244,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9864f13dfb6d7f977bd72c0674f7b83ffc6ec749f7892f8d91a5c5b53a939f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3ce2eee-4115-6476-b009-c9f39b3cd420`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_active_truncation_indicator_le
    (V b : ℕ) :
    (∑ d ∈ Finset.Ioc 0 b, if d ≤ V then (1 : ℝ) else 0) ≤ V := by
  rw [← Finset.sum_filter]
  have hfilter : (Finset.Ioc 0 b).filter (fun d ↦ d ≤ V) =
      Finset.Ioc 0 (min b V) := by
    ext d
    simp only [Finset.mem_filter, Finset.mem_Ioc]
    omega
  rw [hfilter]
  simp

/-- Uniform interval cancellation for the Vaughan right coefficient. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b1ebaecf537ca14ee69303cd6a7d01b064a878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
