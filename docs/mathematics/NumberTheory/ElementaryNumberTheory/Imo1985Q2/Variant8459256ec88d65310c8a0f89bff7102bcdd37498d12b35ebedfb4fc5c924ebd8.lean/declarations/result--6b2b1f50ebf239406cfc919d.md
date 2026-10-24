# result

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d481deb3-aa3a-c13e-7ea5-c745f1759884",
  "kind": "theorem",
  "lexical_name": "result",
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
  "slug": "result--6b2b1f50ebf239406cfc919d",
  "source": {
    "blob": "accef0733c7b569be9e25a22837b519eb6c6e96f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 87,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo1985Q2/Variant8459256ec88d65310c8a0f89bff7102bcdd37498d12b35ebedfb4fc5c924ebd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b2b1f50ebf239406cfc919d89149dc30418a67c3319b2bd1bdc9974478a3370",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Imo1985Q2/Variant8459256ec88d65310c8a0f89bff7102bcdd37498d12b35ebedfb4fc5c924ebd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d481deb3-aa3a-c13e-7ea5-c745f1759884`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem result {n j : ℕ} (hn : 3 ≤ n) (hj : j ∈ Set.Ico 1 n) (cpj : Coprime n j)
    {C : ℕ → Fin 2} (hC : Condition n j C) {i : ℕ} (hi : i ∈ Set.Ico 1 n) :
    C i = C j := by
  obtain ⟨v, -, hv⟩ := exists_mul_mod_eq_one_of_coprime cpj.symm (by lia)
  have hvi : i = (v * i % n) * j % n := by
    rw [mod_mul_mod, ← mul_rotate, ← mod_mul_mod, hv, one_mul, mod_eq_of_lt hi.2]
  have vib : v * i % n ∈ Set.Ico 1 n := by
    refine ⟨(?_ : 0 < _), mod_lt _ (by lia)⟩
    by_contra! h; rw [le_zero, ← dvd_iff_mod_eq_zero] at h
    rw [mul_comm, ← mod_eq_of_lt (show 1 < n by lia)] at hv
    have i0 := eq_zero_of_dvd_of_lt
      ((coprime_of_mul_modEq_one _ hv).symm.dvd_of_dvd_mul_left h) hi.2
    subst i; simp at hi
  rw [hvi, C_mul_mod hn hj cpj hC vib]

end Imo1985Q2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Imo1985Q2/Variant8459256ec88d65310c8a0f89bff7102bcdd37498d12b35ebedfb4fc5c924ebd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Imo1985Q2/Variant8459256ec88d65310c8a0f89bff7102bcdd37498d12b35ebedfb4fc5c924ebd8.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `accef0733c7b569be9e25a22837b519eb6c6e96f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
