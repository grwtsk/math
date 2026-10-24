# memcmpStr_eq_true_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3480e4c-b30a-f944-3821-30aa66647c73",
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
  "slug": "memcmpstr-eq-true-iff--875d1e5560f90dac3f2cc0db",
  "source": {
    "blob": "c1c25c9b810c18f75129dc29bae4fbdf8605c3d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variantce1bc67b3b8e1578cad882d4f81a3904512b50f0a45e513a9decb2dd44db6a62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:875d1e5560f90dac3f2cc0dbf324da56816b357911040f0ed75557d2a7279815",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variantce1bc67b3b8e1578cad882d4f81a3904512b50f0a45e513a9decb2dd44db6a62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3480e4c-b30a-f944-3821-30aa66647c73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–59.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variantce1bc67b3b8e1578cad882d4f81a3904512b50f0a45e513a9decb2dd44db6a62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variantce1bc67b3b8e1578cad882d4f81a3904512b50f0a45e513a9decb2dd44db6a62.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1c25c9b810c18f75129dc29bae4fbdf8605c3d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
