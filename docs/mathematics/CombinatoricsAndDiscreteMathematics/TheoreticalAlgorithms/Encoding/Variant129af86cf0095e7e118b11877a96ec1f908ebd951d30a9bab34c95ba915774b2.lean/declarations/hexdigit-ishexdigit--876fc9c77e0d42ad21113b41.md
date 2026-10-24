# hexDigit_isHexDigit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d25e3b6ae2845f9fce78a3c3e4d1d858400786f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/129af86cf0095e7e118b11877a96ec1f908ebd951d30a9bab34c95ba915774b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18625070-2b51-1fab-473a-a3ef861ea4f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:998a6f08-731f-7657-da2a-998da6e11448",
  "kind": "theorem",
  "lexical_name": "hexDigit_isHexDigit",
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
  "slug": "hexdigit-ishexdigit--876fc9c77e0d42ad21113b41",
  "source": {
    "blob": "d25e3b6ae2845f9fce78a3c3e4d1d858400786f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 140,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variant129af86cf0095e7e118b11877a96ec1f908ebd951d30a9bab34c95ba915774b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:876fc9c77e0d42ad21113b41faa8c456b22858753dea1b53c608ed16aeebe7f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variant129af86cf0095e7e118b11877a96ec1f908ebd951d30a9bab34c95ba915774b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:998a6f08-731f-7657-da2a-998da6e11448`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem hexDigit_isHexDigit (h₀ : x < 16) : isHexDigitByte (hexDigit x) := by
  unfold hexDigit isHexDigitByte
  have h₁ : x.toNat < 16 := h₀
  split <;> simp

  next p =>
    have h₂ : x.toNat < 10 := p
    have h₂ : 48 ≤ x.toNat + 48 := by omega
    have h₃ : x.toNat + 48 ≤ 57 := by omega
    have h₄ : x.toNat + 48 < 256 := by omega

    refine Or.inl (Or.inl ⟨?_, ?_⟩)
    · exact (UInt8.ofNat_le_iff_le (by decide) h₄ |>.mpr h₂)
    · exact (UInt8.ofNat_le_iff_le h₄ (by decide) |>.mpr h₃)

  next p =>
    have h₂ : ¬(x.toNat < 10) := p
    have h₃ : 65 ≤ x.toNat - 10 + 65 := by omega
    have h₅ : x.toNat - 10 + 65 ≤ 70 := by omega
    have h₄ : x.toNat - 10 + 65 < 256 := by omega

    refine Or.inr ⟨?_, ?_⟩
    · simpa [UInt8.ofNat_sub (by omega : 10 ≤ x.toNat)] using!
        UInt8.ofNat_le_iff_le (by decide : 65 < 256) h₄ |>.mpr h₃
    · simpa [UInt8.ofNat_add, UInt8.ofNat_sub (by omega : 10 ≤ x.toNat)] using!
        UInt8.ofNat_le_iff_le h₄ (by decide : 70 < 256) |>.mpr h₅

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variant129af86cf0095e7e118b11877a96ec1f908ebd951d30a9bab34c95ba915774b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variant129af86cf0095e7e118b11877a96ec1f908ebd951d30a9bab34c95ba915774b2.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d25e3b6ae2845f9fce78a3c3e4d1d858400786f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
