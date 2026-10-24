# lowerSemicontinuousOn_of_forall_isMaxOn_and_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "373a430d5cc7a0d602ecc8ebd25614af509b3b1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a3d8a5c4533f1952a79537a55398e30e918e914cf1def04a9fc3ecb574c71b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea05a8e8-d60e-e832-e6f3-35ac44d72fc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5f9f73e-dadb-d7f6-d728-010901366ca6",
  "kind": "theorem",
  "lexical_name": "lowerSemicontinuousOn_of_forall_isMaxOn_and_mem",
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
  "slug": "lowersemicontinuouson-of-forall-ismaxon-and-mem--04d222ece81e27fc03049c88",
  "source": {
    "blob": "373a430d5cc7a0d602ecc8ebd25614af509b3b1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 203,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3a3d8a5c4533f1952a79537a55398e30e918e914cf1def04a9fc3ecb574c71b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04d222ece81e27fc03049c886490548a050c8778923b5ffdf555a499cc92f5e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3a3d8a5c4533f1952a79537a55398e30e918e914cf1def04a9fc3ecb574c71b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5f9f73e-dadb-d7f6-d728-010901366ca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerSemicontinuousOn_of_forall_isMaxOn_and_mem
    (hfy : ∀ i ∈ I, LowerSemicontinuousOn (f i) s)
    {M : α → ι}
    (M_mem : ∀ x ∈ s, M x ∈ I)
    (M_max : ∀ x ∈ s, IsMaxOn (fun y ↦ f y x) I (M x)) :
    LowerSemicontinuousOn (fun x ↦ f (M x) x) s := by
  intro x hx b hb
  apply Filter.Eventually.mp <| hfy (M x) (M_mem x hx) x hx b hb
  apply eventually_nhdsWithin_of_forall
  intro z hz h
  exact lt_of_lt_of_le h (M_max z hz (M_mem x hx))

/-- Given a family of upper semicontinuous functions `f : ι → α → β` such that
for each `x : α`, there is a choice `m x : ι` such that the minimum value of
evaluation at `x` is achieved by the function `f (m x)`, then the pointwise
maximum of the family `f` is upper semicontinuous.
In the statement we restrict to subsets `I : Set ι` and `s : Set α` for more generality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3a3d8a5c4533f1952a79537a55398e30e918e914cf1def04a9fc3ecb574c71b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3a3d8a5c4533f1952a79537a55398e30e918e914cf1def04a9fc3ecb574c71b3.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373a430d5cc7a0d602ecc8ebd25614af509b3b1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
