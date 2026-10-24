# coeff_inv_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a6666eebcbad8083bd16dbb18992385b8506479",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1853,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8091a59f-49a7-5175-fa56-8ebc5c551091",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17306cb9-f4af-63b0-ec76-7915c793bcba",
  "kind": "theorem",
  "lexical_name": "coeff_inv_aux",
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
  "slug": "coeff-inv-aux--0eb2ec9f6ccedd7f83935a1a",
  "source": {
    "blob": "1a6666eebcbad8083bd16dbb18992385b8506479",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1896,
    "line": 1853,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eb2ec9f6ccedd7f83935a1aaf12d416abe9b64fb40ccad3821430b2d3bb7158",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17306cb9-f4af-63b0-ec76-7915c793bcba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1853–1896.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_inv_aux (n : ℕ) (a : R) (φ : PowerSeries R) :
    coeff R n (inv.aux a φ) =
      if n = 0 then a
      else
        -a *
          ∑ x in Finset.Nat.antidiagonal n,
            if x.2 < n then coeff R x.1 φ * coeff R x.2 (inv.aux a φ) else 0 := by
  rw [coeff, inv.aux, MvPowerSeries.coeff_inv_aux]
  simp only [Finsupp.single_eq_zero]
  split_ifs; · rfl
  congr 1
  symm
  apply Finset.sum_bij fun (p : ℕ × ℕ) _h => (single () p.1, single () p.2)
  · rintro ⟨i, j⟩ hij
    rw [Finset.Nat.mem_antidiagonal] at hij
    rw [Finsupp.mem_antidiagonal, ← Finsupp.single_add, hij]
  · rintro ⟨i, j⟩ _hij
    by_cases H : j < n
    · rw [if_pos H, if_pos]
      · rfl
      constructor
      · rintro ⟨⟩
        simpa [Finsupp.single_eq_same] using le_of_lt H
      · intro hh
        rw [lt_iff_not_ge] at H
        apply H
        simpa [Finsupp.single_eq_same] using hh ()
    · rw [if_neg H, if_neg]
      rintro ⟨_h₁, h₂⟩
      apply h₂
      rintro ⟨⟩
      simpa [Finsupp.single_eq_same] using not_lt.1 H
  · rintro ⟨i, j⟩ ⟨k, l⟩ _hij _hkl
    simpa only [Prod.mk.inj_iff, Finsupp.unique_single_eq_iff] using id
  · rintro ⟨f, g⟩ hfg
    refine' ⟨(f (), g ()), _, _⟩
    · rw [Finsupp.mem_antidiagonal] at hfg
      rw [Finset.Nat.mem_antidiagonal, ← Finsupp.add_apply, hfg, Finsupp.single_eq_same]
    · rw [Prod.mk.inj_iff]
      dsimp
      exact ⟨Finsupp.unique_single f, Finsupp.unique_single g⟩
#align power_series.coeff_inv_aux PowerSeries.coeff_inv_aux

/-- A formal power series is invertible if the constant coefficient is invertible.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean#L1853).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a6666eebcbad8083bd16dbb18992385b8506479` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
