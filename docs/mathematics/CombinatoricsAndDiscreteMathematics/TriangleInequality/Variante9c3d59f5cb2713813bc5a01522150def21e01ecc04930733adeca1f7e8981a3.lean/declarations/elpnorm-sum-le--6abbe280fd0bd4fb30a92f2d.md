# eLpNorm'_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b672689ebd0122c5197cbb9bf9afb84d8dccf3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:162d87d9-6104-c20c-a860-75b7c74ed6c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:276a19bc-9f9d-1fe7-0bac-4630d19ce852",
  "kind": "theorem",
  "lexical_name": "eLpNorm'_sum_le",
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
  "slug": "elpnorm-sum-le--6abbe280fd0bd4fb30a92f2d",
  "source": {
    "blob": "2b672689ebd0122c5197cbb9bf9afb84d8dccf3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 135,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6abbe280fd0bd4fb30a92f2da6b006db45b1fe8e9309e03686db84716aefa490",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:276a19bc-9f9d-1fe7-0bac-4630d19ce852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm'_sum_le [ContinuousAdd ε'] {ι} {f : ι → α → ε'} {s : Finset ι}
    (hfs : ∀ i, i ∈ s → AEStronglyMeasurable (f i) μ) (hq1 : 1 ≤ q) :
    eLpNorm' (∑ i ∈ s, f i) q μ ≤ ∑ i ∈ s, eLpNorm' (f i) q μ :=
  Finset.le_sum_of_subadditive_on_pred (fun f : α → ε' => eLpNorm' f q μ)
    (fun f => AEStronglyMeasurable f μ) (eLpNorm'_zero (zero_lt_one.trans_le hq1))
    (fun _f _g hf hg => eLpNorm'_add_le hf hg hq1) (fun _f _g hf hg => hf.add hg) _ hfs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TriangleInequality/Variante9c3d59f5cb2713813bc5a01522150def21e01ecc04930733adeca1f7e8981a3.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b672689ebd0122c5197cbb9bf9afb84d8dccf3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
