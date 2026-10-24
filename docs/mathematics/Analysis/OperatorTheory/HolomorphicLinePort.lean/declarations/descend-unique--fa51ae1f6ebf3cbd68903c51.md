# descend_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82ebbad5093612f7505b5f07c99668c7ae5b5db1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/Analysis/Operator/HolomorphicLinePort.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f2c9b9f-efe7-de57-b08e-7ef599bc4265",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d65e53e-748a-fe25-12b3-c55e825fa546",
  "kind": "theorem",
  "lexical_name": "descend_unique",
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
  "slug": "descend-unique--fa51ae1f6ebf3cbd68903c51",
  "source": {
    "blob": "82ebbad5093612f7505b5f07c99668c7ae5b5db1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 51,
    "path": "GRWTSK/Analysis/Operator/HolomorphicLinePort.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa51ae1f6ebf3cbd68903c51528a35736d0b9781127ff8ec169bc8464e7418dc",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicLinePort.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d65e53e-748a-fe25-12b3-c55e825fa546`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descend_unique (A : CompatibleOperators C) (hOpen : D.IsOpenCover)
    (T : ∀ x, (C.vectorBundleCore hOpen).Fiber x →L[ℂ] (C.vectorBundleCore hOpen).Fiber x)
    (hT : ∀ i (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier)
      (a : (C.vectorBundleCore hOpen).Fiber x),
      ((C.vectorBundleCore hOpen).localTriv i ⟨x, T x a⟩).2 =
        A.localOp i ⟨x.1, hi⟩ (((C.vectorBundleCore hOpen).localTriv i ⟨x, a⟩).2)) :
    T = A.descend hOpen := by
  funext x
  apply ContinuousLinearMap.ext
  intro a
  have h := hT (D.select x) x (D.select_mem x) a
  change C.scalar (D.select x) (D.select x) x * T x a =
    A.localOp (D.select x) ⟨x.1, D.select_mem x⟩
      (C.scalar (D.select x) (D.select x) x * a) at h
  simpa only [C.scalar_self (D.select x) x (D.select_mem x), one_mul] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicLinePort.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicLinePort.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82ebbad5093612f7505b5f07c99668c7ae5b5db1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
