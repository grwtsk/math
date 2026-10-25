# add_one_tdiv_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:456ed946-644c-6e13-feda-5e81ec06b74d",
  "kind": "theorem",
  "lexical_name": "add_one_tdiv_of_pos",
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
  "slug": "add-one-tdiv-of-pos--d0943d30cb6f6724d1692bc3",
  "source": {
    "blob": "5bb2d722bba2a1af48bae7b7869bafe4599eeb43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1928,
    "line": 1892,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0943d30cb6f6724d1692bc3e5dec8deb82c5f9de246311d8f3970fe86d8cc93",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:456ed946-644c-6e13-feda-5e81ec06b74d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1892–1928.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_one_tdiv_of_pos {a b : Int} (h : 0 < b) :
    (a + 1).tdiv b = a.tdiv b + if (0 < a + 1 ∧ b ∣ a + 1) ∨ (a < 0 ∧ b ∣ a) then 1 else 0 := by
  match b, h with
  | .ofNat 1, h => simp; omega
  | .ofNat (b + 2), h =>
    simp only [ofNat_eq_natCast]
    rw [tdiv_eq_ediv, add_ediv (by omega), tdiv_eq_ediv]
    simp only [Int.natCast_add, cast_ofNat_Int]
    have : 1 / (b + 2 : Int) = 0 := by rw [one_ediv]; omega
    rw [this]
    have one_mod : 1 % (b + 2 : Int) = 1 := emod_eq_of_lt (by omega) (by omega)
    rw [one_mod]
    have : ↑(b + 2 : Int).natAbs = (b + 2 : Int) := by omega
    rw [this]
    have : (b + 2 : Int).sign = 1 := sign_eq_one_of_pos (by omega)
    rw [this]
    have : (b + 2) ≤ a % (b + 2 : Int) + 1 ↔ (b + 2 : Int) ∣ a + 1 := le_emod_self_add_one_iff (by omega)
    simp only [this]
    simp only [Int.add_zero]
    split <;> rename_i h
    · simp only [h, or_true, ↓reduceIte, and_true]
      omega
    · simp only [h, or_false, and_false]
      by_cases h₂ : 0 ≤ a
      · simp only [Int.add_zero, h₂, true_or, ↓reduceIte, false_or]
        have : 0 ≤ a + 1 := by omega
        have : 0 < a + 1 := by omega
        have : ¬ a < 0 := by omega
        simp [*]
      · simp only [Int.add_zero, h₂, false_or]
        split
        · have : a = -1 := by omega
          simp_all
        · have : a < 0 := by omega
          simp only [true_and, this]
          split <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean#L1892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb2d722bba2a1af48bae7b7869bafe4599eeb43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
