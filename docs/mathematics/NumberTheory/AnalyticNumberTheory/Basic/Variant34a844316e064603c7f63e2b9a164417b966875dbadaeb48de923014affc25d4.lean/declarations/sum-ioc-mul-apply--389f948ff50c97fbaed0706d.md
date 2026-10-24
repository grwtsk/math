# sum_Ioc_mul_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c09349957b62a9be3d79786a903b80e6048ac221",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a81f4d14-5627-9930-1739-435ec21709ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb09f023-d337-3c07-d8ac-ec4b2b31a38a",
  "kind": "theorem",
  "lexical_name": "sum_Ioc_mul_apply",
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
  "slug": "sum-ioc-mul-apply--389f948ff50c97fbaed0706d",
  "source": {
    "blob": "c09349957b62a9be3d79786a903b80e6048ac221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:389f948ff50c97fbaed0706dc00d19446fde1ac211b3a55b152a3a9e0adacc94",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb09f023-d337-3c07-d8ac-ec4b2b31a38a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Ioc_mul_apply (f g : ArithmeticFunction R) (h : ℕ → R) (X : ℕ) :
    ∑ N ∈ Ioc 0 X, (f * g) N * h N =
      ∑ d ∈ Ioc 0 X, f d * ∑ e ∈ Ioc 0 (X / d), g e * h (d * e) := by
  simp_rw [ArithmeticFunction.mul_apply, sum_mul, mul_sum]
  rw [sum_sigma', sum_sigma']
  refine sum_nbij' (fun x => ⟨x.2.1, x.2.2⟩) (fun y => ⟨y.1 * y.2, (y.1, y.2)⟩) ?_ ?_ ?_ ?_ ?_
  · rintro ⟨N, ⟨a, b⟩⟩ hx
    simp only [mem_sigma, mem_Ioc, Nat.mem_divisorsAntidiagonal] at hx ⊢
    obtain ⟨⟨hN0, hNX⟩, hab, hN⟩ := hx
    have ha : a ≠ 0 := by rintro rfl; simp at hab; exact hN hab.symm
    have hb : b ≠ 0 := by rintro rfl; simp at hab; exact hN hab.symm
    refine ⟨⟨Nat.pos_of_ne_zero ha, ?_⟩, Nat.pos_of_ne_zero hb, ?_⟩
    · calc a ≤ a * b := Nat.le_mul_of_pos_right a (Nat.pos_of_ne_zero hb)
        _ = N := hab
        _ ≤ X := hNX
    · rw [Nat.le_div_iff_mul_le (Nat.pos_of_ne_zero ha), mul_comm, hab]; exact hNX
  · rintro ⟨d, e⟩ hy
    simp only [mem_sigma, mem_Ioc, Nat.mem_divisorsAntidiagonal] at hy ⊢
    obtain ⟨⟨hd0, hdX⟩, he0, heX⟩ := hy
    rw [Nat.le_div_iff_mul_le hd0] at heX
    exact ⟨⟨Nat.mul_pos hd0 he0, by rwa [mul_comm] at heX⟩, by simp, (Nat.mul_pos hd0 he0).ne'⟩
  · rintro ⟨N, ⟨a, b⟩⟩ hx
    simp only [mem_sigma, Nat.mem_divisorsAntidiagonal] at hx
    obtain ⟨_, hab, _⟩ := hx
    simp [hab]
  · rintro ⟨d, e⟩ _
    rfl
  · rintro ⟨N, ⟨a, b⟩⟩ hx
    simp only [mem_sigma, Nat.mem_divisorsAntidiagonal] at hx
    obtain ⟨_, hab, _⟩ := hx
    simp [hab, mul_assoc]

/-- Same with the factors swapped: Σ_{N≤X} (f∗g)(N) h(N) = Σ_{e≤X} g(e) Σ_{d≤X/e} f(d) h(de). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09349957b62a9be3d79786a903b80e6048ac221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
