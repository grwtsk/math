# findIdx?_eq_some_iff_getElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe13c8a7-8da6-b3a2-8039-db943cb19dab",
  "kind": "theorem",
  "lexical_name": "findIdx?_eq_some_iff_getElem",
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
  "slug": "findidx-eq-some-iff-getelem--4be8e3af11f57d74e2dd066d",
  "source": {
    "blob": "7ceeb09718ee7d849c1834e40ca786aa32e47c75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 853,
    "line": 822,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4be8e3af11f57d74e2dd066d7c45d17ab6b6863ccb7dd49193aad687d4d0fb86",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe13c8a7-8da6-b3a2-8039-db943cb19dab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 822–853.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem findIdx?_eq_some_iff_getElem {xs : List α} {p : α → Bool} {i : Nat} :
    xs.findIdx? p = some i ↔
      ∃ h : i < xs.length, p xs[i] ∧ ∀ j (hji : j < i), ¬p (xs[j]'(Nat.lt_trans hji h)) := by
  induction xs generalizing i with
  | nil => simp
  | cons x xs ih =>
    simp only [findIdx?_cons]
    split
    · simp only [Option.some.injEq, Bool.not_eq_true, length_cons]
      cases i with
      | zero => simp_all
      | succ i =>
        simp only [zero_ne_add_one, getElem_cons_succ, false_iff, not_exists,
          not_and, Classical.not_forall, Bool.not_eq_false]
        intros
        refine ⟨0, zero_lt_succ i, ‹_›⟩
    · simp only [Option.map_eq_some_iff, ih, Bool.not_eq_true, length_cons]
      constructor
      · rintro ⟨a, ⟨⟨h, h₁, h₂⟩, rfl⟩⟩
        refine ⟨Nat.succ_lt_succ_iff.mpr h, by simpa, fun j hj => ?_⟩
        cases j with
        | zero => simp_all
        | succ j =>
          apply h₂
          simp_all [Nat.succ_lt_succ_iff]
      · rintro ⟨h, h₁, h₂⟩
        cases i with
        | zero => simp_all
        | succ i =>
          refine ⟨i, ⟨Nat.succ_lt_succ_iff.mp h, by simpa, fun j hj => ?_⟩, rfl⟩
          simpa using h₂ (j + 1) (Nat.succ_lt_succ_iff.mpr hj)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variantbcde120a0abffbbdbea7fa98fc345a18ed30e848fe36a2d0b544c748fe847043.lean#L822).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ceeb09718ee7d849c1834e40ca786aa32e47c75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
