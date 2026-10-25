# dyadic_upper_from_doubling_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27903c11ce388798d20f85274336bafb68abf1e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 15,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a102ffbc53efac147abb682891a3d187ad28eb27821f5e7e8ed9695df49db34b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:336d318c-8761-3f73-ee95-82deddb52187",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af21477b-16c3-0f99-5e67-f4c108c090e1",
  "kind": "theorem",
  "lexical_name": "dyadic_upper_from_doubling_difference",
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
  "slug": "dyadic-upper-from-doubling-difference--69b30ffb2eb5c3f427803031",
  "source": {
    "blob": "27903c11ce388798d20f85274336bafb68abf1e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChebyshevDyadicUpper/Varianta102ffbc53efac147abb682891a3d187ad28eb27821f5e7e8ed9695df49db34b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69b30ffb2eb5c3f4278030317ddd90626a05234242132f531d5cb844a0790f0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChebyshevDyadicUpper/Varianta102ffbc53efac147abb682891a3d187ad28eb27821f5e7e8ed9695df49db34b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af21477b-16c3-0f99-5e67-f4c108c090e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadic_upper_from_doubling_difference
    (f : Nat → Real)
    (hf_zero : f 0 = 0)
    (_hf_nonneg : ∀ n, 0 ≤ f n)
    (hf_mono : Monotone f)
    (A : Real)
    (hA_nonneg : 0 ≤ A)
    (hdiff : ∀ n, f (2 * n) - f n ≤ A * n) :
    ∃ C : Real, 0 < C ∧ ∀ N : Nat, f N ≤ C * N := by
  let C : Real := max (2 * A) (max (f 1) 1)
  have hC_pos : 0 < C := by
    have hle : (1 : Real) ≤ C :=
      le_trans
        (le_max_right (f 1) 1)
        (le_max_right (2 * A) (max (f 1) 1))
    linarith
  have hA_le_C_half : 2 * A ≤ C := le_max_left _ _
  refine ⟨C, hC_pos, ?_⟩
  intro N
  induction N using Nat.strong_induction_on with
  | h N ih =>
      by_cases h0 : N = 0
      · subst N
        simp [hf_zero]
      · by_cases h1 : N = 1
        · subst N
          have hf1 : f 1 ≤ C :=
            le_trans
              (le_max_left (f 1) 1)
              (le_max_right (2 * A) (max (f 1) 1))
          simpa using hf1
        · have hN2 : 2 ≤ N := by omega
          let m : Nat := (N + 1) / 2
          have hm_lt : m < N := by omega
          have hN_le : N ≤ 2 * m := by omega
          have hm_le_gap : m ≤ 2 * (N - m) := by omega
          have hmono : f N ≤ f (2 * m) := hf_mono hN_le
          have hdiffm : f (2 * m) ≤ f m + A * m := by
            have h := hdiff m
            linarith
          have hih : f m ≤ C * m := ih m hm_lt
          have hAle : A * (m : Real) ≤ C * (N - m : Nat) := by
            have hm_real : (m : Real) ≤ 2 * (N - m : Nat) := by
              exact_mod_cast hm_le_gap
            have hAm :
                A * (m : Real) ≤ A * (2 * (N - m : Nat)) := by
              nlinarith [hA_nonneg, hm_real]
            have h2A :
                A * (2 * (N - m : Nat)) =
                  (2 * A) * (N - m : Nat) := by
              ring
            calc
              A * (m : Real) ≤ A * (2 * (N - m : Nat)) := hAm
              _ = (2 * A) * (N - m : Nat) := h2A
              _ ≤ C * (N - m : Nat) := by
                exact mul_le_mul_of_nonneg_right hA_le_C_half (by positivity)
          have hsum :
              C * (m : Real) + C * (N - m : Nat) = C * N := by
            have hmn : m + (N - m) = N := Nat.add_sub_of_le (by omega)
            have hmnR : (m : Real) + (N - m : Nat) = (N : Real) := by
              exact_mod_cast hmn
            nlinarith
          calc
            f N ≤ f (2 * m) := hmono
            _ ≤ f m + A * (m : Real) := hdiffm
            _ ≤ C * (m : Real) + C * (N - m : Nat) := by nlinarith
            _ = C * N := hsum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChebyshevDyadicUpper/Varianta102ffbc53efac147abb682891a3d187ad28eb27821f5e7e8ed9695df49db34b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChebyshevDyadicUpper/Varianta102ffbc53efac147abb682891a3d187ad28eb27821f5e7e8ed9695df49db34b.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27903c11ce388798d20f85274336bafb68abf1e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
