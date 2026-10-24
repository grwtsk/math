# memcmpStr_eq_true_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "455b30ac9a30acf1a159a9f4291be0164dd381b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e6796e7-ad66-704e-1a6a-cc13d885f292",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a4e8be4-21ae-b0a1-6942-22ea216fce58",
  "kind": "theorem",
  "lexical_name": "memcmpStr_eq_true_iff",
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
  "slug": "memcmpstr-eq-true-iff--41719589365a020a7ada1c61",
  "source": {
    "blob": "455b30ac9a30acf1a159a9f4291be0164dd381b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variant93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41719589365a020a7ada1c6181b9504ae1f7896a68e09d4811c23b3e190a6925",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variant93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a4e8be4-21ae-b0a1-6942-22ea216fce58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem memcmpStr_eq_true_iff {lhs rhs : String} {lstart rstart len : String.Pos.Raw}
    {h₁ h₂} : memcmpStr lhs rhs lstart rstart len h₁ h₂ = true ↔
      lhs.toByteArray.extract lstart.byteIdx (len.offsetBy lstart).byteIdx =
        rhs.toByteArray.extract rstart.byteIdx (len.offsetBy rstart).byteIdx := by
  suffices ∀ (curr : String.Pos.Raw),
      memcmpStr.go lhs rhs lstart rstart len h₁ h₂ curr = true ↔
      lhs.toByteArray.extract (curr.offsetBy lstart).byteIdx (len.offsetBy lstart).byteIdx =
      rhs.toByteArray.extract (curr.offsetBy rstart).byteIdx (len.offsetBy rstart).byteIdx by
    simp [memcmpStr, this]
  intro curr
  simp [Pos.Raw.le_iff] at h₁ h₂
  by_cases hc : len.byteIdx < curr.byteIdx
  · rw [ByteArray.extract_eq_empty_iff.2, ByteArray.extract_eq_empty_iff.2, memcmpStr.go,
      dif_neg (Std.not_lt.2 (Std.le_of_lt (Pos.Raw.lt_iff.2 hc)))]
    simp only
    all_goals simp; omega
  · simp only [Pos.Raw.byteIdx_offsetBy]
    rw [(by omega : len.byteIdx = curr.byteIdx + (len.byteIdx - curr.byteIdx)),
      ← Nat.add_assoc, ← Nat.add_assoc,
      ByteArray.extract_eq_extract_iff_getElem (by simp; omega) (by simp; omega)]
    fun_induction memcmpStr.go with
    | case1 p h₃ h₄ h₅ h ih =>
      rw [Pos.Raw.lt_iff] at h₃
      rw [ih (by simp; omega)]
      simp only [String.getUTF8Byte, Pos.Raw.byteIdx_offsetBy, beq_iff_eq] at h
      simp only [Pos.Raw.byteIdx_inc, Nat.add_assoc, Nat.add_comm 1]
      refine ⟨fun h k hk => ?_, fun h k hk => h (k + 1) (by omega)⟩
      match k with
      | 0 => simpa
      | k + 1 => exact h k (by omega)
    | case2 p h₃ h₄ h₅ h => simpa using ⟨0, by rw [Pos.Raw.lt_iff] at h₃; omega, by simpa using! h⟩
    | case3 p hp => simp [(by rw [Pos.Raw.lt_iff] at hp; omega : len.byteIdx = p.byteIdx)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variant93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variant93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `455b30ac9a30acf1a159a9f4291be0164dd381b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
