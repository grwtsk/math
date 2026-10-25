# log_lt_iff_lt_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8ee5084-ae94-65c0-b964-17e0f2da04ba",
  "kind": "theorem",
  "lexical_name": "log_lt_iff_lt_pow",
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
  "slug": "log-lt-iff-lt-pow--2fa78529d269e43b25d6f3ef",
  "source": {
    "blob": "bdee3efd314299c4cd57f0c986c643051e25eddc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant1c9c91453ef1b8503336ba21104ee157586d65b8961bb86f5807da0305d67393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fa78529d269e43b25d6f3ef91a254a971d4b8be285e6e1dbd2b95abe401fb79",
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

Occurrence: `result:f8ee5084-ae94-65c0-b964-17e0f2da04ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_lt_iff_lt_pow {b : ℕ} (hb : 1 < b) {x y : ℕ} (hy : y ≠ 0) :
    log b y < x ↔ y < b ^ x := by
  rcases log.go_spec hb hy (Nat.lt_pow_self hb) with ⟨-, H₁, H₂⟩
  rw [log, ite_eq_right (Nat.not_le_of_lt hb)]
  cases Nat.lt_or_ge (log.go y b y).snd x with
  | inl h =>
    exact iff_of_true h <| Nat.lt_of_lt_of_le H₂ <| Nat.pow_le_pow_right (Nat.zero_lt_of_lt hb) h
  | inr h =>
    refine iff_of_false (Nat.not_lt_of_ge h) <| Nat.not_lt_of_ge <| Nat.le_trans ?_ H₁
    exact Nat.pow_le_pow_right (Nat.zero_lt_of_lt hb) h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant1c9c91453ef1b8503336ba21104ee157586d65b8961bb86f5807da0305d67393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant1c9c91453ef1b8503336ba21104ee157586d65b8961bb86f5807da0305d67393.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdee3efd314299c4cd57f0c986c643051e25eddc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
