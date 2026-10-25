# UpwardEnumerable.le_iff_lt_or_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28811f81-d3ac-35f0-2cef-001db2206e3b",
  "kind": "theorem",
  "lexical_name": "UpwardEnumerable.le_iff_lt_or_eq",
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
  "slug": "upwardenumerable-le-iff-lt-or-eq--c1f3c057c53c97e21127e32f",
  "source": {
    "blob": "36147f909a29d4e63a906871eacd52e0cfa7d6ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 469,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpwardEnumerable/Variant15f1a95eef44c68795082bead6314f3eb2f4293e1a74095d5eda5ac6c9545085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1f3c057c53c97e21127e32f2829d575c2a2cef49bcb0de6d6f6159635210a11",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpwardEnumerable/Variant15f1a95eef44c68795082bead6314f3eb2f4293e1a74095d5eda5ac6c9545085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28811f81-d3ac-35f0-2cef-001db2206e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem UpwardEnumerable.le_iff_lt_or_eq {α : Type u} [UpwardEnumerable α]
    [LawfulUpwardEnumerable α] {a b : α} :
    UpwardEnumerable.LE a b ↔ UpwardEnumerable.LT a b ∨ a = b := by
  apply Iff.intro
  · rintro ⟨n, hn⟩
    match n with
    | 0 => exact Or.inr (by simpa [UpwardEnumerable.succMany?_zero] using hn)
    | n + 1 => exact Or.inl ⟨_, hn⟩
  · intro h
    open Classical in
    match heq : decide (a = b) with
    | true =>
      simp only [decide_eq_true_eq] at heq
      exact heq ▸ UpwardEnumerable.le_refl _
    | false =>
      simp only [decide_eq_false_iff_not] at heq
      simp only [heq, or_false] at h
      exact UpwardEnumerable.le_of_lt h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpwardEnumerable/Variant15f1a95eef44c68795082bead6314f3eb2f4293e1a74095d5eda5ac6c9545085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpwardEnumerable/Variant15f1a95eef44c68795082bead6314f3eb2f4293e1a74095d5eda5ac6c9545085.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36147f909a29d4e63a906871eacd52e0cfa7d6ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
