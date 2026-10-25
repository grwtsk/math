# clog_le_iff_le_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5148fc0-15a2-6e0e-4f03-858268e56fd3",
  "kind": "theorem",
  "lexical_name": "clog_le_iff_le_pow",
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
  "slug": "clog-le-iff-le-pow--a3e512995730f5fb2131c0a4",
  "source": {
    "blob": "bdee3efd314299c4cd57f0c986c643051e25eddc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant1c9c91453ef1b8503336ba21104ee157586d65b8961bb86f5807da0305d67393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3e512995730f5fb2131c0a443479fbfa0bdba7fb53305ab7237cc8ca591d84c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant1c9c91453ef1b8503336ba21104ee157586d65b8961bb86f5807da0305d67393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5148fc0-15a2-6e0e-4f03-858268e56fd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clog_le_iff_le_pow {b : ℕ} (hb : 1 < b) {x y : ℕ} : clog b x ≤ y ↔ x ≤ b ^ y := by
  fun_cases clog with
  | case1 h =>
    rcases clog.go_spec h.2 hb (Nat.lt_pow_self hb) with ⟨-, H₁, H₂⟩
    cases Nat.lt_or_ge (clog.go x b x).2 y with
    | inl hy =>
      rw [← Nat.add_one_le_iff] at hy
      exact iff_of_true hy <| Nat.le_trans H₂ <| Nat.pow_le_pow_right (Nat.zero_lt_of_lt hb) hy
    | inr hy =>
      apply_rules [iff_of_false, Nat.not_le_of_gt, Nat.lt_add_one_of_le]
      exact Nat.lt_of_le_of_lt (Nat.pow_le_pow_right (Nat.zero_lt_of_lt hb) hy) H₁
  | case2 h => grind [Nat.one_le_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant1c9c91453ef1b8503336ba21104ee157586d65b8961bb86f5807da0305d67393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant1c9c91453ef1b8503336ba21104ee157586d65b8961bb86f5807da0305d67393.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdee3efd314299c4cd57f0c986c643051e25eddc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
