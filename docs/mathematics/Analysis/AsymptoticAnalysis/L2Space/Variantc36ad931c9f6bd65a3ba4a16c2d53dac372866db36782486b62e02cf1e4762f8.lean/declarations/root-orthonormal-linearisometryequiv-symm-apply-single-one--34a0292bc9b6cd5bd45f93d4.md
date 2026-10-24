# _root_.Orthonormal.linearIsometryEquiv_symm_apply_single_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd3c2190d4244b48b8beb6401f4c61dee8c741d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 547,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2209a1a3-696c-d833-9c8a-f681c7fda99f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87df43d2-77a4-fe80-4b66-2ae6e8179764",
  "kind": "theorem",
  "lexical_name": "_root_.Orthonormal.linearIsometryEquiv_symm_apply_single_one",
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
  "slug": "root-orthonormal-linearisometryequiv-symm-apply-single-one--34a0292bc9b6cd5bd45f93d4",
  "source": {
    "blob": "dd3c2190d4244b48b8beb6401f4c61dee8c741d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 547,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34a0292bc9b6cd5bd45f93d4b125e3c543edcf73e27571ed172a28272fda91d7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87df43d2-77a4-fe80-4b66-2ae6e8179764`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Orthonormal.linearIsometryEquiv_symm_apply_single_one (h i) :
    (hv.isHilbertSum h).linearIsometryEquiv.symm (lp.single 2 i 1) = v i := by
  rw [IsHilbertSum.linearIsometryEquiv_symm_apply_single, LinearIsometry.toSpanSingleton_apply,
    one_smul]
#align orthonormal.linear_isometry_equiv_symm_apply_single_one Orthonormal.linearIsometryEquiv_symm_apply_single_one

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd3c2190d4244b48b8beb6401f4c61dee8c741d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
