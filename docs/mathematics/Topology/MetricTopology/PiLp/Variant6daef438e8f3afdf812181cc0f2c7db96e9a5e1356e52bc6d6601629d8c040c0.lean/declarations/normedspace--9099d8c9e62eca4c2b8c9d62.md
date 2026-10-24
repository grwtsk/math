# normedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eda96e5500ea9c0ec84d74d0d0cae736aa81f3edc7a292e3ecd7a8bc8da37fc7",
  "kind": "instance",
  "lexical_name": "normedSpace",
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
  "slug": "normedspace--9099d8c9e62eca4c2b8c9d62",
  "source": {
    "blob": "0c107415cf7cea70f9788cccb8e7a2f52584748a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 627,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9099d8c9e62eca4c2b8c9d624b0e310c12128d8d8696d7d928d1506fbf3942a8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eda96e5500ea9c0ec84d74d0d0cae736aa81f3edc7a292e3ecd7a8bc8da37fc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance normedSpace [∀ i, SeminormedAddCommGroup (β i)] [∀ i, NormedSpace 𝕜 (β i)] :
    NormedSpace 𝕜 (PiLp p β) :=
  { norm_smul_le := fun c f => by
      rcases p.dichotomy with (rfl | hp)
      · letI : Module 𝕜 (PiLp ∞ β) := Pi.module ι β 𝕜
        suffices ‖c • f‖₊ = ‖c‖₊ * ‖f‖₊ by exact_mod_cast NNReal.coe_mono this.le
        simp only [nnnorm_eq_ciSup, NNReal.mul_iSup, ← nnnorm_smul]
        -- Porting note: added
        congr
      · have : p.toReal * (1 / p.toReal) = 1 := mul_div_cancel' 1 (zero_lt_one.trans_le hp).ne'
        -- Porting note: added to replace Pi.smul_apply
        have smul_apply : ∀ i : ι, (c • f) i = c • (f i) := fun i => rfl
        simp only [norm_eq_sum (zero_lt_one.trans_le hp), norm_smul, Real.mul_rpow, norm_nonneg, ←
          Finset.mul_sum, smul_apply]
        rw [mul_rpow (rpow_nonneg_of_nonneg (norm_nonneg _) _), ← rpow_mul (norm_nonneg _), this,
          Real.rpow_one]
        exact Finset.sum_nonneg fun i _ => rpow_nonneg_of_nonneg (norm_nonneg _) _ }
#align pi_Lp.normed_space PiLp.normedSpace

/- Register simplification lemmas for the applications of `PiLp` elements, as the usual lemmas
for Pi types will not trigger. -/
variable {𝕜 𝕜' p α}
variable [∀ i, SeminormedAddCommGroup (β i)] [∀ i, NormedSpace 𝕜 (β i)] (c : 𝕜)

variable (x y : PiLp p β) (x' y' : ∀ i, β i) (i : ι)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c107415cf7cea70f9788cccb8e7a2f52584748a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
