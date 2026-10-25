# lt_or_equiv_or_gt_or_fuzzy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a087492-fee5-ba31-4081-afad9eb7168b",
  "kind": "theorem",
  "lexical_name": "lt_or_equiv_or_gt_or_fuzzy",
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
  "slug": "lt-or-equiv-or-gt-or-fuzzy--5102b1e4562af1d10f0fccf1",
  "source": {
    "blob": "d42f9ef2c98893c853896bc87f608cbb790df2c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 643,
    "line": 628,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5102b1e4562af1d10f0fccf106ae3f175ea9c1748ac88060044217b0309900fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a087492-fee5-ba31-4081-afad9eb7168b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–643.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_or_equiv_or_gt_or_fuzzy (x y : PGame) : x < y ∨ (x ≈ y) ∨ y < x ∨ x ‖ y := by
  rcases le_or_gf x y with h₁ | h₁ <;> rcases le_or_gf y x with h₂ | h₂
  · right
    left
    exact ⟨h₁, h₂⟩
  · left
    exact ⟨h₁, h₂⟩
  · right
    right
    left
    exact ⟨h₂, h₁⟩
  · right
    right
    right
    exact ⟨h₂, h₁⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d42f9ef2c98893c853896bc87f608cbb790df2c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
