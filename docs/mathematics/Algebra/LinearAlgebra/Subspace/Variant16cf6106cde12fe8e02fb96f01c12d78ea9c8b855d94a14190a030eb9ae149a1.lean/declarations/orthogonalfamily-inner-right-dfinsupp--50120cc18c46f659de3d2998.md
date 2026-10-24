# OrthogonalFamily.inner_right_dfinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "216050abc9302261c8061d223460ff9667babfe5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3b32eb1-2251-ebb9-c1cb-c7f55567e5b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f9269a1-df5e-9d8b-1669-53db63216c3b",
  "kind": "theorem",
  "lexical_name": "OrthogonalFamily.inner_right_dfinsupp",
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
  "slug": "orthogonalfamily-inner-right-dfinsupp--50120cc18c46f659de3d2998",
  "source": {
    "blob": "216050abc9302261c8061d223460ff9667babfe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50120cc18c46f659de3d29981de22d3c1ca760e239ab6834e0d506df990115bd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f9269a1-df5e-9d8b-1669-53db63216c3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrthogonalFamily.inner_right_dfinsupp
    [∀ (i) (x : G i), Decidable (x ≠ 0)] [DecidableEq ι] (l : ⨁ i, G i) (i : ι) (v : G i) :
    ⟪V i v, l.sum fun j => V j⟫ = ⟪v, l i⟫ :=
  calc
    ⟪V i v, l.sum fun j => V j⟫ = l.sum fun j => fun w => ⟪V i v, V j w⟫ :=
      DFinsupp.inner_sum (fun j => V j) l (V i v)
    _ = l.sum fun j => fun w => ite (i = j) ⟪V i v, V j w⟫ 0 :=
      (congr_arg l.sum <| funext fun _ => funext <| hV.eq_ite v)
    _ = ⟪v, l i⟫ := by
      simp only [DFinsupp.sum, Finset.sum_ite_eq,
        DFinsupp.mem_support_toFun]
      split_ifs with h
      · simp only [LinearIsometry.inner_map_map]
      · simp only [of_not_not h, inner_zero_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `216050abc9302261c8061d223460ff9667babfe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
