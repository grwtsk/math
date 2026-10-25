# le_div_iff_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1645a4d168ee2ce0e8e06775a42e13ddf3ec2e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67f894497257111dff81a5b3bab0f849cc53f31a3c62656333366ad62ab63a58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb400305-df6f-7a1e-9c48-a1e1647894bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0db57ea-7a25-a1c4-c0d2-2442148dc285",
  "kind": "theorem",
  "lexical_name": "le_div_iff_mul_le",
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
  "slug": "le-div-iff-mul-le--f25ae6c27ef20799e0397d12",
  "source": {
    "blob": "b1645a4d168ee2ce0e8e06775a42e13ddf3ec2e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant67f894497257111dff81a5b3bab0f849cc53f31a3c62656333366ad62ab63a58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f25ae6c27ef20799e0397d12fbf162d0cc94a96927318b98bc7d0b552b69aa0b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant67f894497257111dff81a5b3bab0f849cc53f31a3c62656333366ad62ab63a58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0db57ea-7a25-a1c4-c0d2-2442148dc285`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_div_iff_mul_le (k0 : 0 < k) : x ≤ y / k ↔ x * k ≤ y := by
  induction y, k using mod.inductionOn generalizing x with
    (rw [div_eq]; simp [h]; cases x with | zero => simp [zero_le] | succ x => ?_)
  | base y k h =>
    simp only [add_one, succ_mul, false_iff, Nat.not_le, Nat.succ_ne_zero]
    refine Nat.lt_of_lt_of_le ?_ (Nat.le_add_left ..)
    exact Nat.not_le.1 fun h' => h ⟨k0, h'⟩
  | ind y k h IH =>
    rw [Nat.add_le_add_iff_right, IH k0, succ_mul,
        ← Nat.add_sub_cancel (x*k) k, Nat.sub_le_sub_iff_right h.2, Nat.add_sub_cancel]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant67f894497257111dff81a5b3bab0f849cc53f31a3c62656333366ad62ab63a58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant67f894497257111dff81a5b3bab0f849cc53f31a3c62656333366ad62ab63a58.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1645a4d168ee2ce0e8e06775a42e13ddf3ec2e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
