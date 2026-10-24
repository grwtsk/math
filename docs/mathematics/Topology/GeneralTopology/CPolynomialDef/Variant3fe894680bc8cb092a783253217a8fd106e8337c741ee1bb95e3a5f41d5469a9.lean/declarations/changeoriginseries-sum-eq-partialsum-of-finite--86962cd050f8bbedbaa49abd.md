# changeOriginSeries_sum_eq_partialSum_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d01c2cbbbb1603fb244f1e2f3c0b6d2455b1946d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 364,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:111e4709-5601-2d02-8363-86238ac4dd70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:256b6f4b-db06-d78a-afa8-7a5adfe1830d",
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
  "slug": "changeoriginseries-sum-eq-partialsum-of-finite--86962cd050f8bbedbaa49abd",
  "source": {
    "blob": "d01c2cbbbb1603fb244f1e2f3c0b6d2455b1946d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 364,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86962cd050f8bbedbaa49abdd84672f4813a579c3b63845599c39ef67ce0c9ae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:256b6f4b-db06-d78a-afa8-7a5adfe1830d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–376.

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
    _root_.zero_apply]

/-- If `p` is a formal multilinear series such that `p m = 0` for `n ≤ m`, then
`p.changeOrigin x k = 0` for `n ≤ k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d01c2cbbbb1603fb244f1e2f3c0b6d2455b1946d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
