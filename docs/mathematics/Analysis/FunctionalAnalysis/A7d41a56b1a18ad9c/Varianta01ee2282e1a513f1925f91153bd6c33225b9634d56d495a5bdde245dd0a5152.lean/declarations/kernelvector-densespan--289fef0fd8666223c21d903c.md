# kernelVector_denseSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe659fca8d4b7a522c463e9c633a12d861d67f05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a01ee2282e1a513f1925f91153bd6c33225b9634d56d495a5bdde245dd0a5152.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1cf3c43-5e36-e3ee-b385-cc74f5e7add2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3567c746-df04-88ca-1179-52fdf8205d21",
  "kind": "theorem",
  "lexical_name": "kernelVector_denseSpan",
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
  "slug": "kernelvector-densespan--289fef0fd8666223c21d903c",
  "source": {
    "blob": "fe659fca8d4b7a522c463e9c633a12d861d67f05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 21,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/A7d41a56b1a18ad9c/Varianta01ee2282e1a513f1925f91153bd6c33225b9634d56d495a5bdde245dd0a5152.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:289fef0fd8666223c21d903c50096e74deec9b1f12cd53530f10a41f3bef7f07",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/A7d41a56b1a18ad9c/Varianta01ee2282e1a513f1925f91153bd6c33225b9634d56d495a5bdde245dd0a5152.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3567c746-df04-88ca-1179-52fdf8205d21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernelVector_denseSpan :
    (kernelSpan kernel).topologicalClosure = ⊤ := by
  apply Submodule.dense_iff_topologicalClosure_eq_top.mp
  apply (completePreKernel_denseRange kernel).mono
  rintro point ⟨prePoint, rfl⟩
  obtain ⟨rawPoint, rfl⟩ :=
    Submodule.Quotient.mk_surjective
      (kernelNullSubmodule kernel) prePoint
  exact rawToKernelSpace_mem_span kernel rawPoint


end Mathematics.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/A7d41a56b1a18ad9c/Varianta01ee2282e1a513f1925f91153bd6c33225b9634d56d495a5bdde245dd0a5152.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/A7d41a56b1a18ad9c/Varianta01ee2282e1a513f1925f91153bd6c33225b9634d56d495a5bdde245dd0a5152.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe659fca8d4b7a522c463e9c633a12d861d67f05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
