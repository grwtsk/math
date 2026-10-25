# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32e6c3860620ff30c6648d4449a96e30a6532cfa5756ba9b7e54b7cc783bf6d4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a9bfaa9a07d4b6281cba192e",
  "source": {
    "blob": "8c211d379089b952142b6adb0cc50c3ef119435b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 641,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variantbe0057cc160acbbdfa0bd6d75eaae950eb00edbfd747b23983d6578d740f6fde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9bfaa9a07d4b6281cba192e024e545327878effabe9c64962b44587caa87b7d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variantbe0057cc160acbbdfa0bd6d75eaae950eb00edbfd747b23983d6578d740f6fde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32e6c3860620ff30c6648d4449a96e30a6532cfa5756ba9b7e54b7cc783bf6d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : NoZeroDivisors EReal where
  eq_zero_or_eq_zero_of_mul_eq_zero := by
    intro a b h
    contrapose! h
    cases a <;> cases b <;> try {· simp_all [← EReal.coe_mul]}
    · rcases lt_or_gt_of_ne h.2 with (h | h)
        <;> simp [EReal.bot_mul_of_neg, EReal.bot_mul_of_pos, h]
    · rcases lt_or_gt_of_ne h.1 with (h | h)
        <;> simp [EReal.mul_bot_of_pos, EReal.mul_bot_of_neg, h]
    · rcases lt_or_gt_of_ne h.1 with (h | h)
        <;> simp [EReal.mul_top_of_neg, EReal.mul_top_of_pos, h]
    · rcases lt_or_gt_of_ne h.2 with (h | h)
        <;> simp [EReal.top_mul_of_pos, EReal.top_mul_of_neg, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variantbe0057cc160acbbdfa0bd6d75eaae950eb00edbfd747b23983d6578d740f6fde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variantbe0057cc160acbbdfa0bd6d75eaae950eb00edbfd747b23983d6578d740f6fde.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c211d379089b952142b6adb0cc50c3ef119435b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
