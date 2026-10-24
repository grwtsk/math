# hexDigit_isHexDigit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b4aa21a-84c9-10e8-3893-2694d99296bc",
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
  "slug": "hexdigit-ishexdigit--660a61d7a624ea94f54728bf",
  "source": {
    "blob": "f447d5a01f929152d8ec9d0ae965e12c1aefa78f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 148,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:660a61d7a624ea94f54728bf483a4cc939f1d2bf1cefe0885ca76c0217b9365a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b4aa21a-84c9-10e8-3893-2694d99296bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–174.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f447d5a01f929152d8ec9d0ae965e12c1aefa78f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
