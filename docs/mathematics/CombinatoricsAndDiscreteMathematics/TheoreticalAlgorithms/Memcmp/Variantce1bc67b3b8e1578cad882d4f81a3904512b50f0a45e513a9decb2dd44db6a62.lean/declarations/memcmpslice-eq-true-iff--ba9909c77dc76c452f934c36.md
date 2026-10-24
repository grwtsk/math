# memcmpSlice_eq_true_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a353eee5-d9e2-1360-3733-344b987ea24c",
  "kind": "theorem",
  "lexical_name": "memcmpSlice_eq_true_iff",
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
  "slug": "memcmpslice-eq-true-iff--ba9909c77dc76c452f934c36",
  "source": {
    "blob": "c1c25c9b810c18f75129dc29bae4fbdf8605c3d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variantce1bc67b3b8e1578cad882d4f81a3904512b50f0a45e513a9decb2dd44db6a62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba9909c77dc76c452f934c36856cf44a7c0c01f4dfb4870e99f31f489e4f7584",
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

Occurrence: `result:a353eee5-d9e2-1360-3733-344b987ea24c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem memcmpSlice_eq_true_iff {lhs rhs : Slice} {lstart rstart len : String.Pos.Raw} {h₁ h₂} :
    memcmpSlice lhs rhs lstart rstart len h₁ h₂ = true ↔
      lhs.copy.toByteArray.extract lstart.byteIdx (len.offsetBy lstart).byteIdx =
        rhs.copy.toByteArray.extract rstart.byteIdx (len.offsetBy rstart).byteIdx := by
  rw [memcmpSlice, memcmpStr_eq_true_iff, toByteArray_copy, toByteArray_copy,
    ByteArray.extract_extract, ByteArray.extract_extract]
  simp only [Pos.Raw.byteIdx_offsetBy, Nat.add_assoc]
  have h₃ := lhs.startInclusive_le_endExclusive
  have h₄ := rhs.startInclusive_le_endExclusive
  simp only [Pos.Raw.le_iff, Pos.Raw.byteIdx_offsetBy, byteIdx_rawEndPos, utf8ByteSize_eq,
    String.Pos.le_iff] at h₁ h₂ h₃ h₄
  rw [Nat.min_eq_left (by omega), Nat.min_eq_left (by omega)]

end String.Slice.Pattern.Internal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variantce1bc67b3b8e1578cad882d4f81a3904512b50f0a45e513a9decb2dd44db6a62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variantce1bc67b3b8e1578cad882d4f81a3904512b50f0a45e513a9decb2dd44db6a62.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1c25c9b810c18f75129dc29bae4fbdf8605c3d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
