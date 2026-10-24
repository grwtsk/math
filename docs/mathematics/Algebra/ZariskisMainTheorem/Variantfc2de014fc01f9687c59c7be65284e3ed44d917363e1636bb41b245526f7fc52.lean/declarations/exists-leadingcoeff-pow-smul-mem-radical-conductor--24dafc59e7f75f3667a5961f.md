# exists_leadingCoeff_pow_smul_mem_radical_conductor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c5d0dbc-3b6a-65d1-560d-f3481503ca4c",
  "kind": "lemma",
  "lexical_name": "exists_leadingCoeff_pow_smul_mem_radical_conductor",
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
  "slug": "exists-leadingcoeff-pow-smul-mem-radical-conductor--24dafc59e7f75f3667a5961f",
  "source": {
    "blob": "a3f1e7dee44739a43e1e47c0de40ea175ad71eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 268,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24dafc59e7f75f3667a5961f9e2890231b430d43ad880ab3ddf47809152ebdc4",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c5d0dbc-3b6a-65d1-560d-f3481503ca4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_leadingCoeff_pow_smul_mem_radical_conductor
    (hRS : integralClosure R S = ⊥) -- `IsIntegrallyClosedIn` but without injective assumption
    (hφ : φ.toRingHom.Finite) (hp : φ p * t ∈ (conductor R (φ X)).radical) (i : ℕ) :
    p.coeff i • t ∈ (conductor R (φ X)).radical := by
  wlog hi : i = p.natDegree generalizing p i
  · clear hi
    simp only [forall_eq, coeff_natDegree] at this
    induction hpn : p.natDegree using Nat.strong_induction_on generalizing p with
    | h n IH =>
    cases n with
    | zero =>
      obtain hi' | hi' := lt_or_ge p.natDegree i
      · simp [coeff_eq_zero_of_natDegree_lt hi']
      · simpa [← coeff_natDegree, hpn, show i = 0 by lia] using this _ hp
    | succ n =>
      obtain hi' | hi' := eq_or_ne i p.natDegree
      · simpa [hi'] using this _ hp
      have : φ p.eraseLead * t ∈ (conductor R (φ X)).radical := by
        simp only [← self_sub_C_mul_X_pow, map_sub, ← algebraMap_eq, map_mul, AlgHom.commutes,
          map_pow, sub_mul, mul_right_comm _ _ t, ← Algebra.smul_def _ t]
        exact sub_mem hp (Ideal.mul_mem_right _ _ (this _ hp))
      simpa [eraseLead_coeff, hi'] using
        IH _ ((eraseLead_natDegree_le _).trans_lt (by lia)) _ this rfl
  obtain ⟨n, hn⟩ := hp
  obtain ⟨k, hk⟩ := exists_leadingCoeff_pow_smul_mem_conductor φ (t ^ n) (p ^ n) hRS hφ
    (by simpa [mul_pow] using hn)
  by_cases hpn : p.leadingCoeff ^ n = 0
  · use n; simp [_root_.smul_pow, hpn, hi]
  rw [leadingCoeff_pow' hpn, ← pow_mul] at hk
  refine ⟨n * k + n, ?_⟩
  rw [_root_.smul_pow, pow_add, add_comm, pow_add, mul_smul_mul_comm, hi]
  exact Ideal.mul_mem_right _ _ hk

@[stacks 00PY]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f1e7dee44739a43e1e47c0de40ea175ad71eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
