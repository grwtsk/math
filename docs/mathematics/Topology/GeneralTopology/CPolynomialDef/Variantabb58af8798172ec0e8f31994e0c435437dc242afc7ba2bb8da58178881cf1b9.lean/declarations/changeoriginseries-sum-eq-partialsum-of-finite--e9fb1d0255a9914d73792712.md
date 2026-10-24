# changeOriginSeries_sum_eq_partialSum_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c3e142d2e567652b9e04f535b76892a0f2fa7c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 364,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eda18b47-c9aa-e45b-ec64-916172e8a871",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:658b4141-8a6e-bd7c-09de-1255bc812bd3",
  "kind": "lemma",
  "lexical_name": "changeOriginSeries_sum_eq_partialSum_of_finite",
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
  "slug": "changeoriginseries-sum-eq-partialsum-of-finite--e9fb1d0255a9914d73792712",
  "source": {
    "blob": "3c3e142d2e567652b9e04f535b76892a0f2fa7c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 364,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9fb1d0255a9914d73792712e14283dd96258627d2e59f1d7df8ef601283cb36",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:658b4141-8a6e-bd7c-09de-1255bc812bd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma changeOriginSeries_sum_eq_partialSum_of_finite (p : FormalMultilinearSeries 𝕜 E F) {n : ℕ}
    (hn : ∀ (m : ℕ), n ≤ m → p m = 0) (k : ℕ) :
    (p.changeOriginSeries k).sum = (p.changeOriginSeries k).partialSum (n - k) := by
  ext x
  rw [partialSum, FormalMultilinearSeries.sum,
    tsum_eq_sum (f := fun m => p.changeOriginSeries k m (fun _ => x)) (s := Finset.range (n - k))]
  intro m hm
  rw [Finset.mem_range, not_lt] at hm
  rw [p.changeOriginSeries_finite_of_finite hn k (by rw [add_comm]; exact Nat.le_add_of_sub_le hm),
    ContinuousMultilinearMap.zero_apply]

/-- If `p` is a formal multilinear series such that `p m = 0` for `n ≤ m`, then
`p.changeOrigin x k = 0` for `n ≤ k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c3e142d2e567652b9e04f535b76892a0f2fa7c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
