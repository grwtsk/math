# Pos.Raw.isValidUTF8_extract_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "243a0bd99068f54a0ff51fb4622c3786461bbfbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 728,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2708d97a-dea7-b216-0691-3d53c44e9d0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14747cee-24b7-e4f7-5fbc-9d31ac2fe0b4",
  "kind": "theorem",
  "lexical_name": "Pos.Raw.isValidUTF8_extract_iff",
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
  "slug": "pos-raw-isvalidutf8-extract-iff--2b445fef08ab18a527c0672b",
  "source": {
    "blob": "243a0bd99068f54a0ff51fb4622c3786461bbfbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 756,
    "line": 728,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b445fef08ab18a527c0672b074eb7251b23b11ad5f47938f13a16932f59d35c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14747cee-24b7-e4f7-5fbc-9d31ac2fe0b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–756.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.Raw.isValidUTF8_extract_iff {s : String} (p₁ p₂ : Pos.Raw) (hle : p₁ ≤ p₂) (hle' : p₂ ≤ s.rawEndPos) :
    (s.toByteArray.extract p₁.byteIdx p₂.byteIdx).IsValidUTF8 ↔ p₁ = p₂ ∨ (p₁.IsValid s ∧ p₂.IsValid s) := by
  have hle'' : p₂.byteIdx ≤ s.toByteArray.size := by simpa [le_iff] using hle'
  refine ⟨fun h => Classical.or_iff_not_imp_left.2 (fun h' => ?_), ?_⟩
  · have hlt : p₁ < p₂ := by
      simp_all [le_iff, lt_iff, Pos.Raw.ext_iff]
      omega
    have h₁ : p₁.IsValid s := by
      rw [isValid_iff_isUTF8FirstByte]
      refine Or.inr ⟨Pos.Raw.lt_of_lt_of_le hlt hle', ?_⟩
      have hlt' : 0 < p₂.byteIdx - p₁.byteIdx := by
        simp [lt_iff] at hlt
        omega
      have := h.isUTF8FirstByte_getElem_zero
      simp only [ByteArray.size_extract, Nat.min_eq_left hle'', hlt', ByteArray.getElem_extract, Nat.add_zero] at this
      simp [getUTF8Byte, this trivial]
    refine ⟨h₁, isValid_iff_isValidUTF8_extract_zero.2 ⟨hle', ?_⟩⟩
    rw [ByteArray.extract_eq_extract_append_extract p₁.byteIdx (by simp) hle]
    exact h₁.isValidUTF8_extract_zero.append h
  · refine fun h => h.elim (by rintro rfl; simp) (fun ⟨h₁, h₂⟩ => ?_)
    let t : String := ⟨_, h₂.isValidUTF8_extract_zero⟩
    have htb : t.toByteArray = s.toByteArray.extract 0 p₂.byteIdx := rfl
    have ht : p₁.IsValid t := by
      refine isValid_iff_isValidUTF8_extract_zero.2 ⟨?_, ?_⟩
      · simpa [le_iff, t, Nat.min_eq_left hle'', ← size_toByteArray]
      · simpa [htb, ByteArray.extract_extract, Nat.min_eq_left (le_iff.1 hle)] using h₁.isValidUTF8_extract_zero
    simpa [htb, ByteArray.extract_extract, Nat.zero_add, Nat.min_eq_left hle'', ← size_toByteArray]
      using ht.isValidUTF8_extract_utf8ByteSize

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243a0bd99068f54a0ff51fb4622c3786461bbfbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
