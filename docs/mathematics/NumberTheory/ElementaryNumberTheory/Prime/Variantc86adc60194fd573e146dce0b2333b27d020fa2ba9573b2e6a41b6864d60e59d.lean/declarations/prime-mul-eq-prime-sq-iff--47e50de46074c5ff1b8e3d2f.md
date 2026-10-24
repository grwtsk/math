# Prime.mul_eq_prime_sq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85c0d0d8-b3e3-87f3-83ee-a2ad7eb3d114",
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
  "slug": "prime-mul-eq-prime-sq-iff--47e50de46074c5ff1b8e3d2f",
  "source": {
    "blob": "26c68534934cefd62f0fc08e58bfa119b189ba7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 639,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantc86adc60194fd573e146dce0b2333b27d020fa2ba9573b2e6a41b6864d60e59d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47e50de46074c5ff1b8e3d2f65e01f8f76e94b6f5233404d864325c91b975df7",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Prime/Variantc86adc60194fd573e146dce0b2333b27d020fa2ba9573b2e6a41b6864d60e59d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85c0d0d8-b3e3-87f3-83ee-a2ad7eb3d114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prime.mul_eq_prime_sq_iff {x y p : ℕ} (hp : p.Prime) (hx : x ≠ 1) (hy : y ≠ 1) :
    x * y = p ^ 2 ↔ x = p ∧ y = p := by
    refine' ⟨fun h => _, fun ⟨h₁, h₂⟩ => h₁.symm ▸ h₂.symm ▸ (sq _).symm⟩
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
    obtain ha1 | hap := (Nat.dvd_prime hp).mp ‹a ∣ p›
    · subst ha1
      rw [mul_one] at ha
      subst ha
      simp only [sq, mul_right_inj' hp.ne_zero] at h
      subst h
      exact ⟨rfl, rfl⟩
    · refine' (hy ?_).elim
      subst hap
      subst ha
      rw [sq, Nat.mul_right_eq_self_iff (Nat.mul_pos hp.pos hp.pos : 0 < a * a)] at h
      exact h
#align nat.prime.mul_eq_prime_sq_iff Nat.Prime.mul_eq_prime_sq_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Prime/Variantc86adc60194fd573e146dce0b2333b27d020fa2ba9573b2e6a41b6864d60e59d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantc86adc60194fd573e146dce0b2333b27d020fa2ba9573b2e6a41b6864d60e59d.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26c68534934cefd62f0fc08e58bfa119b189ba7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
