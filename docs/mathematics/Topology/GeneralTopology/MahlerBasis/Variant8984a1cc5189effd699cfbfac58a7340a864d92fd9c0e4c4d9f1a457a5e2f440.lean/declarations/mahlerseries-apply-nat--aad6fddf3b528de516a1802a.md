# mahlerSeries_apply_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa6b45413ae802ac029fc6305a27412c5819ec9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35eaaf50-5200-e1a4-52ea-33aa27c0978c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81797302-5865-26ad-b6c9-a20cd73ee603",
  "kind": "lemma",
  "lexical_name": "mahlerSeries_apply_nat",
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
  "slug": "mahlerseries-apply-nat--aad6fddf3b528de516a1802a",
  "source": {
    "blob": "aa6b45413ae802ac029fc6305a27412c5819ec9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 294,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aad6fddf3b528de516a1802adfe6925493f06af994a8b9837113ef08718cfd04",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81797302-5865-26ad-b6c9-a20cd73ee603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mahlerSeries_apply_nat (ha : Tendsto a atTop (𝓝 0)) {m n : ℕ} (hmn : m ≤ n) :
    mahlerSeries a (m : ℤ_[p]) = ∑ i ∈ range (n + 1), m.choose i • a i := by
  have h_van (i) : m.choose (i + (n + 1)) = 0 := Nat.choose_eq_zero_of_lt (by omega)
  have aux : Summable fun i ↦ m.choose (i + (n + 1)) • a (i + (n + 1)) := by
    simpa only [h_van, zero_smul] using summable_zero
  simp only [mahlerSeries_apply ha, mahler_natCast_eq, Nat.cast_smul_eq_nsmul, add_zero,
    ← aux.sum_add_tsum_nat_add' (f := fun i ↦ m.choose i • a i), h_van, zero_smul, tsum_zero]

/--
The coefficients of a Mahler series can be recovered from the sum by taking forward differences at
`0`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa6b45413ae802ac029fc6305a27412c5819ec9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
