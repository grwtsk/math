# gaussNorm_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7061be3-ea5c-090a-ab5c-95924b5fae48",
  "kind": "lemma",
  "lexical_name": "gaussNorm_mul_le",
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
  "slug": "gaussnorm-mul-le--81ddbab0b9a66102c5e47d2e",
  "source": {
    "blob": "accab037afb8e59efa45fcadd8f6bcff88cdf9a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81ddbab0b9a66102c5e47d2e33725423d3a7f0a524fc60cf0994dae9457497bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7061be3-ea5c-090a-ab5c-95924b5fae48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussNorm_mul_le (f g : MvPowerSeries σ R) (hc : 0 ≤ c) (vNonneg : ∀ a, v a ≥ 0)
    (vMul : ∀ a b, v (a * b) ≤ v a * v b) (vna : IsNonarchimedean v)
    (vZero : v 0 = 0) (hbfd : HasGaussNorm v c f) (hbgd : HasGaussNorm v c g) :
    gaussNorm v c (f * g) ≤ gaussNorm v c f * gaussNorm v c g := by
  classical
  refine Real.iSup_le ?_ ?_
  · intro t
    obtain ⟨k, hk, hsum⟩ := vna.finset_image_add _ (Finset.antidiagonal t)
      (fun x ↦ vZero.le.trans (vNonneg x))
    have hk' : k.1 + k.2 = t := by
      simpa [Finset.mem_antidiagonal] using hk (Finset.nonempty_def.mpr ⟨(t, 0), by simp⟩)
    have hprod : t.prod (c · ^ ·) = k.1.prod (c · ^ ·) * k.2.prod (c · ^ ·) := by
      simp [← hk', Finsupp.prod_add_index' (h := (c · ^ ·)) (by grind) (by grind)]
    rw [hprod]
    refine (mul_le_mul hsum (by rfl) (mul_nonneg (c_prod_nonneg c hc k.1) (c_prod_nonneg c hc k.2))
      (vNonneg _)).trans ?_
    have : v ((coeff k.1) f * (coeff k.2) g) * (k.1.prod (c · ^ ·) * k.2.prod (c · ^ ·)) ≤
        (v (coeff k.1 f) * k.1.prod (c · ^ ·)) * (v (coeff k.2 g) * k.2.prod (c · ^ ·)) := by
      calc
      _ ≤ v (coeff k.1 f) * v (coeff k.2 g) * (k.1.prod (c · ^ ·) * k.2.prod (c · ^ ·)) :=
        mul_le_mul (vMul _ _) (by rfl) (mul_nonneg (c_prod_nonneg c hc k.1)
          (c_prod_nonneg c hc k.2)) (mul_nonneg (vNonneg _) (vNonneg _))
      _ = _ := by ring
    exact this.trans (mul_le_mul (le_gaussNorm v c f hbfd k.1) (le_gaussNorm v c g hbgd k.2)
      (mul_nonneg (vNonneg _) (c_prod_nonneg c hc k.2)) (gaussNorm_nonneg v c f vNonneg))
  · exact mul_nonneg (gaussNorm_nonneg v c f vNonneg) (gaussNorm_nonneg v c g vNonneg)

end Semiring

variable [Ring R]

/-- Predicate for when the gaussNorm is achieved by an index. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `accab037afb8e59efa45fcadd8f6bcff88cdf9a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
