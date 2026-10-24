# sum_supported_dilate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c01d17f1-738e-166c-4ffd-8ae8d4fd7a23",
  "kind": "theorem",
  "lexical_name": "sum_supported_dilate",
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
  "slug": "sum-supported-dilate--28b8404817b1f7ee02866431",
  "source": {
    "blob": "465e59296192cb9b3d4a93180454e888fcbd1803",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 149,
    "path": "GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28b8404817b1f7ee0286643107e1e92f93a82c241428c7546d692bbd271b23a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c01d17f1-738e-166c-4ffd-8ae8d4fd7a23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_supported_dilate (f : ℕ → ℝ) (N k : ℕ) (hk : 0 < k)
    (hf : ∀ n, N < n → f n = 0) :
    (∑ m ∈ Finset.Icc 1 N, f (k * m)) =
      ∑ n ∈ Finset.Icc 1 N, if k ∣ n then f n else 0 := by
  classical
  apply Finset.sum_bij_ne_zero (fun a _ _ => k * a)
  · intro a ha hfa
    have ha1 : 1 ≤ a := (Finset.mem_Icc.mp ha).1
    have hka : k * a ≤ N := by
      by_contra h
      exact hfa (hf _ (by omega))
    exact Finset.mem_Icc.mpr ⟨by nlinarith, hka⟩
  · intro a ha hfa b hb hfb hab
    exact Nat.eq_of_mul_eq_mul_left hk hab
  · intro b hb hfb
    have hkb : k ∣ b := by
      by_contra h
      simp only [if_neg h, ne_eq, not_true_eq_false] at hfb
    have hp : k * (b / k) = b := Nat.mul_div_cancel' hkb
    have hb1 : 1 ≤ b := (Finset.mem_Icc.mp hb).1
    have ha1 : 1 ≤ b / k := by
      by_contra h
      have hzero : b / k = 0 := Nat.lt_one_iff.mp (lt_of_not_ge h)
      rw [hzero, mul_zero] at hp
      omega
    refine ⟨b / k, Finset.mem_Icc.mpr ⟨ha1,
      (Nat.div_le_self b k).trans (Finset.mem_Icc.mp hb).2⟩, ?_, hp⟩
    simpa only [hp, if_pos hkb] using hfb
  · intro a ha hfa
    simp only [if_pos (dvd_mul_right k a)]

/-- Exact inclusion-exclusion on the proper cofactor, including the unit cofactor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465e59296192cb9b3d4a93180454e888fcbd1803` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
