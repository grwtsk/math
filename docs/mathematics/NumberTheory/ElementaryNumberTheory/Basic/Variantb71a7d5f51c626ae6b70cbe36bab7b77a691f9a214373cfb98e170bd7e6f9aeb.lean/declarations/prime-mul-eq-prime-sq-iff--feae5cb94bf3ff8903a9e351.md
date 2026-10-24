# Prime.mul_eq_prime_sq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62a4a6cbe937741b48ce989f77461514770c759a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34c57042-ebf0-a42f-9bc7-cc96c41d84a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1997aab3-9e2d-edde-008c-64b05451bca8",
  "kind": "theorem",
  "lexical_name": "Prime.mul_eq_prime_sq_iff",
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
  "slug": "prime-mul-eq-prime-sq-iff--feae5cb94bf3ff8903a9e351",
  "source": {
    "blob": "62a4a6cbe937741b48ce989f77461514770c759a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 181,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feae5cb94bf3ff8903a9e351d32a3073a9f99cf4b16961e7e03ef353735c800a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1997aab3-9e2d-edde-008c-64b05451bca8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prime.mul_eq_prime_sq_iff {x y p : ℕ} (hp : p.Prime) (hx : x ≠ 1) (hy : y ≠ 1) :
    x * y = p ^ 2 ↔ x = p ∧ y = p := by
  refine ⟨fun h => ?_, fun ⟨h₁, h₂⟩ => h₁.symm ▸ h₂.symm ▸ (sq _).symm⟩
  have pdvdxy : p ∣ x * y := by rw [h]; simp [sq]
  -- Could be `wlog := hp.dvd_mul.1 pdvdxy using x y`, but that imports more than we want.
  suffices ∀ x' y' : ℕ, x' ≠ 1 → y' ≠ 1 → x' * y' = p ^ 2 → p ∣ x' → x' = p ∧ y' = p by
    obtain hx | hy := hp.dvd_mul.1 pdvdxy <;>
      [skip; rw [And.comm]] <;>
      [skip; rw [mul_comm] at h pdvdxy] <;>
      apply this <;>
      assumption
  rintro x y hx hy h ⟨a, ha⟩
  have : a ∣ p := ⟨y, by rwa [ha, sq, mul_assoc, mul_right_inj' hp.ne_zero, eq_comm] at h⟩
  obtain rfl | hap := (Nat.dvd_prime hp).mp ‹a ∣ p›
  · rw [mul_one] at ha
    subst ha
    simp only [sq, mul_right_inj' hp.ne_zero] at h
    subst h
    exact ⟨rfl, rfl⟩
  · refine (hy ?_).elim
    subst hap
    subst ha
    rw [sq, Nat.mul_eq_left (Nat.mul_ne_zero hp.ne_zero hp.ne_zero)] at h
    exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62a4a6cbe937741b48ce989f77461514770c759a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
