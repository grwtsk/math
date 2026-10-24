# pow_eq_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba6f143b-0581-7513-a4fc-91e8b4390b46",
  "kind": "lemma",
  "lexical_name": "pow_eq_empty",
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
  "slug": "pow-eq-empty--57acbdf36bf8ee29e4565e53",
  "source": {
    "blob": "8ff2071ae900cafe64499ebe808cab08d8a31fd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 847,
    "line": 834,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant03c5232a3ec897d3467d51e0fe67403169330a2634a72ac3612265cee426602f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57acbdf36bf8ee29e4565e530ce7d5379da6cde419c7f94c37a46db5f7177e55",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant03c5232a3ec897d3467d51e0fe67403169330a2634a72ac3612265cee426602f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba6f143b-0581-7513-a4fc-91e8b4390b46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 834–847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive (attr := simp)] lemma pow_eq_empty : s ^ n = ∅ ↔ s = ∅ ∧ n ≠ 0 := by
  constructor
  · contrapose!
    rintro (hs | rfl)
    -- TODO: The `nonempty_iff_ne_empty` would be unnecessary if `push_neg` knew how to simplify
    -- `s ≠ ∅` to `s.Nonempty` when `s : Finset α`.
    -- See https://leanprover.zulipchat.com/#narrow/channel/287929-mathlib4/topic/push_neg.20extensibility
    · exact nonempty_iff_ne_empty.1 (nonempty_iff_ne_empty.2 hs).pow
    · rw [← nonempty_iff_ne_empty]
      simp
  · rintro ⟨rfl, hn⟩
    exact empty_pow hn

@[to_additive (attr := simp) nsmul_singleton]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant03c5232a3ec897d3467d51e0fe67403169330a2634a72ac3612265cee426602f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant03c5232a3ec897d3467d51e0fe67403169330a2634a72ac3612265cee426602f.lean#L834).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ff2071ae900cafe64499ebe808cab08d8a31fd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
