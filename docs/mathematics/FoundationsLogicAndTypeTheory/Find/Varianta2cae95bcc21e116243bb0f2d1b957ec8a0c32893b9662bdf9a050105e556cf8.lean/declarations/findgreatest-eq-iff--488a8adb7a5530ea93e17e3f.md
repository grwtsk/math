# findGreatest_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86ccad6b-c21c-d10d-7640-1794361f2b90",
  "kind": "lemma",
  "lexical_name": "findGreatest_eq_iff",
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
  "slug": "findgreatest-eq-iff--488a8adb7a5530ea93e17e3f",
  "source": {
    "blob": "a72e04e46fb3a9d5e475c40f7bfd46fd86aa96b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:488a8adb7a5530ea93e17e3fdaccacc9874c6512de8a23919bb7c0a8fa90b039",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86ccad6b-c21c-d10d-7640-1794361f2b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma findGreatest_eq_iff :
    Nat.findGreatest P k = m ↔ m ≤ k ∧ (m ≠ 0 → P m) ∧ ∀ ⦃n⦄, m < n → n ≤ k → ¬P n := by
  induction k generalizing m with
  | zero =>
    rw [eq_comm, Iff.comm]
    simp only [zero_eq, Nat.le_zero, ne_eq, findGreatest_zero, and_iff_left_iff_imp]
    rintro rfl
    exact ⟨fun h ↦ (h rfl).elim, fun n hlt heq ↦ by omega⟩
  | succ k ihk =>
    by_cases hk : P (k + 1)
    · rw [findGreatest_eq hk]
      constructor
      · rintro rfl
        exact ⟨le_refl _, fun _ ↦ hk, fun n hlt hle ↦ by omega⟩
      · rintro ⟨hle, h0, hm⟩
        rcases Decidable.eq_or_lt_of_le hle with (rfl | hlt)
        exacts [rfl, (hm hlt (le_refl _) hk).elim]
    · rw [findGreatest_of_not hk, ihk]
      constructor
      · rintro ⟨hle, hP, hm⟩
        refine ⟨le_trans hle k.le_succ, hP, fun n hlt hle ↦ ?_⟩
        rcases Decidable.eq_or_lt_of_le hle with (rfl | hlt')
        exacts [hk, hm hlt <| Nat.lt_succ_iff.1 hlt']
      · rintro ⟨hle, hP, hm⟩
        refine ⟨Nat.lt_succ_iff.1 (lt_of_le_of_ne hle ?_), hP,
          fun n hlt hle ↦ hm hlt (le_trans hle k.le_succ)⟩
        rintro rfl
        exact hk (hP k.succ_ne_zero)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a72e04e46fb3a9d5e475c40f7bfd46fd86aa96b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
